﻿using System;
using System.Threading.Tasks;
using Newtonsoft.Json;
using System.Linq;
using Xamarin.Auth;
using PCLCrypto;
using static PCLCrypto.WinRTCrypto;

using System.Text;
using Plugin.Settings;

namespace Xamarin.Forms.CommonCore
{
	public class AccountService : IAccountService
	{
		const string protectedStore = "protectedStoreTokenAccount";
		const string pwKey = "password";

		public string AccountEncryptionKey
		{
			get { return CrossSettings.Current.GetValueOrDefault<string>("AccountEncryptionKey", null); }
			set { CrossSettings.Current.AddOrUpdateValue<string>("AccountEncryptionKey", value); }
		}

		public async Task<BooleanResponse> SaveAccountStore<T>(string username, T obj) where T : class, new()
		{
			return await Task.Run(() =>
			{
				var response = new BooleanResponse() { Success = false };
				try
				{
					var account = GetAccount(username);
					PersistAccount(account, username, null, obj);
					SaveAccount(account, username);
					response.Success = true;
				}
				catch (Exception ex)
				{
					response.Error = ex;
				}
				return response;
			});

		}
		public async Task<GenericResponse<T>> GetAccountStore<T>(string username) where T : class, new()
		{
			return await Task.Run(() =>
			{
				var response = new GenericResponse<T>() { Success = false };
				try
				{
					var account = GetAccount(username);
					response.Response = LoadAccount<T>(account, username);
					response.Success = true;
				}
				catch (Exception ex)
				{
					response.Error = ex;
				}
				return response;

			});

		}
		public async Task<BooleanResponse> SaveAccountStore<T>(string username, string password, T obj) where T : class, new()
		{
			return await Task.Run(() =>
			{
				var response = new BooleanResponse() { Success = false };
				try
				{
					var account = GetAccount(username);
					PersistAccount(account, username, password, obj);
					SaveAccount(account, username);
					response.Success = true;
				}
				catch (Exception ex)
				{
					response.Error = ex;
				}
				return response;
			});

		}
		public async Task<GenericResponse<T>> GetAccountStore<T>(string username, string password) where T : class, new()
		{
			return await Task.Run(() =>
			{
				var response = new GenericResponse<T>() { Success = false };
				try
				{
					var account = GetAccount(username);
					response.Response = LoadAccount<T>(account, password);
					if (response.Response != null)
						response.Success = true;
				}
				catch (Exception ex)
				{
					response.Error = ex;
				}
				return response;

			});

		}

		private void PersistAccount<T>(Account account, string username, string password, T obj) where T : class, new()
		{
			var data = JsonConvert.SerializeObject(obj);
			if (account.Properties.ContainsKey(typeof(T).Name))
			{
				if (!string.IsNullOrEmpty(password))
				{

					account.Properties[pwKey] = GenerateHash(password, pwKey);
					account.Properties[typeof(T).Name] = Encrypt(data);
				}
				else
				{
					account.Properties[typeof(T).Name] = data;
				}

			}
			else
			{
				if (!string.IsNullOrEmpty(password))
				{
					account.Properties.Add(pwKey, GenerateHash(password, pwKey));
					account.Properties.Add(typeof(T).Name, Encrypt(data));
				}
				else
				{
					account.Properties.Add(typeof(T).Name, data);
				}

			}
		}
		private T LoadAccount<T>(Account account, string password) where T : class, new()
		{
			if (!string.IsNullOrEmpty(password))
			{
				var hashedPassword = GenerateHash(password, pwKey);
				if (account.Properties.ContainsKey(typeof(T).Name) && account.Properties[pwKey] == hashedPassword)
				{
					var data = Decrypt(account.Properties[typeof(T).Name]);
					return JsonConvert.DeserializeObject<T>(data);
				}

			}
			else
			{
				var data = account.Properties[typeof(T).Name];
				return JsonConvert.DeserializeObject<T>(data);
			}
			return null;

		}

		private AccountStore GetStore()
		{
#if __ANDROID__
            return AccountStore.Create(Xamarin.Forms.Forms.Context);
#else
			return AccountStore.Create();
#endif
		}
		private void SaveAccount(Account account, string username)
		{
			if (username == null)
				return;

			var store = GetStore();
			store.Save(account, protectedStore);
		}
		private Account GetAccount(string username)
		{
			if (username == null)
				return null;

			var store = GetStore();
			var accounts = store.FindAccountsForService(protectedStore);
			var storeAccount = accounts.FirstOrDefault(a => a.Username == username);
			if (storeAccount == null)
			{
				storeAccount = new Account(username);
			}
			return storeAccount;
		}

		private string GenerateHash(string input, string key)
		{
			var mac = WinRTCrypto.MacAlgorithmProvider.OpenAlgorithm(MacAlgorithm.HmacSha1);
			var keyMaterial = WinRTCrypto.CryptographicBuffer.ConvertStringToBinary(key, Encoding.UTF8);
			var cryptoKey = mac.CreateKey(keyMaterial);
			var hash = WinRTCrypto.CryptographicEngine.Sign(cryptoKey, WinRTCrypto.CryptographicBuffer.ConvertStringToBinary(input, Encoding.UTF8));
			return WinRTCrypto.CryptographicBuffer.EncodeToBase64String(hash);
		}

		private string Encrypt(string plainText)
		{
			var key = GetAppCryptoKey();
			var plain = Encoding.UTF8.GetBytes(plainText);
			var encrypted = CryptographicEngine.Encrypt(key, plain);
			return Convert.ToBase64String(encrypted);
		}
		private string Decrypt(string encryptedString)
		{
			var key = GetAppCryptoKey();
			var encrypted = Convert.FromBase64String(encryptedString);
			var decrypted = CryptographicEngine.Decrypt(key, encrypted);
			return Encoding.UTF8.GetString(decrypted, 0, decrypted.Length);
		}

		private ICryptographicKey GetAppCryptoKey()
		{
			var asym = AsymmetricKeyAlgorithmProvider.OpenAlgorithm(AsymmetricAlgorithm.RsaPkcs1);
			ICryptographicKey key = null;
			if (!string.IsNullOrEmpty(AccountEncryptionKey))
			{
				var blob = Encoding.UTF8.GetBytes(AccountEncryptionKey);
				key = asym.ImportKeyPair(blob);
			}
			else
			{

				key = asym.CreateKeyPair(512);
				var blob = key.Export();
				AccountEncryptionKey = Encoding.UTF8.GetString(blob, 0, blob.Length);
			}
			return key;
		}

	}
}

