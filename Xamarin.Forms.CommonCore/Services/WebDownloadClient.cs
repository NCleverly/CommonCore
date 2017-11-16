using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Net;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;

namespace Xamarin.Forms.CommonCore
{
	public class WebDownloadClient : INotifyPropertyChanged
	{
		private double progress;
		public string DownloadUrl { get; set; }
		public WebClient Client { get; set; }
		public Action<byte[]> FinishedEvent { get; set; }
		public Action<double> PercentageChanged { get; set; }

		public double Progress
		{
			get
			{
				return progress;
			}

			set
			{
				PercentageChanged?.Invoke(value);
				SetProperty(ref progress, value);
			}
		}
		public async Task StartDownload()
		{
			if (Client == null)
				Client = new WebClient();

			await Task.Run(() =>
			{
				Client.DownloadProgressChanged += DownprogressChanged;
				Client.DownloadDataCompleted += DownloadComplete;
				Client.DownloadDataAsync(new Uri(DownloadUrl));
			});

		}
		public void UnhookEvents()
		{
			Client.DownloadProgressChanged -= DownprogressChanged;
			Client.DownloadDataCompleted -= DownloadComplete;
		}
		private void DownloadComplete(object sender, DownloadDataCompletedEventArgs args)
		{
			FinishedEvent?.Invoke(args.Result);
		}
		private void DownprogressChanged(object sender, DownloadProgressChangedEventArgs args)
		{
			Progress = (float)args.BytesReceived / (float)args.TotalBytesToReceive;
		}

		public event PropertyChangedEventHandler PropertyChanged;
		protected bool SetProperty<T>(
			ref T backingStore, T value,
			[CallerMemberName]string propertyName = "",
			Action onChanged = null)
		{
			if (EqualityComparer<T>.Default.Equals(backingStore, value))
				return false;

			backingStore = value;

			if (onChanged != null)
				onChanged();

			PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));

			return true;
		}
		public void Notify(string propName)
		{
			PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propName));
		}

        public void AddTokenHeader(string token)
        {
            if (Client.Headers[HttpRequestHeader.Authorization] != null)
                Client.Headers[HttpRequestHeader.Authorization] = token;
            else
                Client.Headers.Add(HttpRequestHeader.Authorization, "Bearer " + token);
        }

        public void AddTokenHeader(CoreAuthentication coreAuth)
        {
            if (Client.Headers[HttpRequestHeader.Authorization] != null)
                Client.Headers[HttpRequestHeader.Authorization] = coreAuth.Token;
            else
                Client.Headers.Add(HttpRequestHeader.Authorization, "Bearer " + coreAuth.Token);
        }
	}
}
