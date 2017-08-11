using System;
using System.IO;
using System.Linq;
using System.Reflection;

namespace Xamarin.Forms.CommonCore
{
	/// <summary>
	/// Utility class that can be used to find and load embedded resources into memory.
	/// </summary>
	public static class ResourceLoader
	{
		/// <summary>
		/// Attempts to find and return the given resource from within the specified assembly.
		/// </summary>
		/// <returns>The embedded resource stream.</returns>
		/// <param name="assembly">Assembly.</param>
		/// <param name="resourceFileName">Resource file name.</param>
		public static StreamResponse GetEmbeddedResourceStream(Assembly assembly, string resourceFileName)
		{
            var response = new StreamResponse() { Success = true };

			var resourceNames = assembly.GetManifestResourceNames();

			var resourcePaths = resourceNames
				.Where(x => x.EndsWith(resourceFileName, StringComparison.CurrentCultureIgnoreCase))
				.ToArray();

			if (!resourcePaths.Any())
			{
				response.Error = new Exception(string.Format("Resource ending with {0} not found.", resourceFileName));
                response.Success = false;
			}

			if (resourcePaths.Count() > 1)
			{
				response.Error = new Exception(string.Format("Multiple resources ending with {0} found: {1}{2}", resourceFileName, Environment.NewLine, string.Join(Environment.NewLine, resourcePaths)));
                response.Success = false;
			}

            response.Response = assembly.GetManifestResourceStream(resourcePaths.Single());

            return response;

		}

		/// <summary>
		/// Attempts to find and return the given resource from within the specified assembly.
		/// </summary>
		/// <returns>The embedded resource as a byte array.</returns>
		/// <param name="assembly">Assembly.</param>
		/// <param name="resourceFileName">Resource file name.</param>
		public static byte[] GetEmbeddedResourceBytes(Assembly assembly, string resourceFileName)
		{
			var result = GetEmbeddedResourceStream(assembly, resourceFileName);
            if (result.Success)
            {
                using (var memoryStream = new MemoryStream())
                {
                    result.Response.CopyTo(memoryStream);
                    return memoryStream.ToArray();
                }
            }
            else
            {
                return new byte[0];
            }

		}

		/// <summary>
		/// Attempts to find and return the given resource from within the specified assembly.
		/// </summary>
		/// <returns>The embedded resource as a string.</returns>
		/// <param name="assembly">Assembly.</param>
		/// <param name="resourceFileName">Resource file name.</param>
		public static StringResponse GetEmbeddedResourceString(Assembly assembly, string resourceFileName)
		{
            var response = new StringResponse();
			var result = GetEmbeddedResourceStream(assembly, resourceFileName);
            if (result.Success)
            {
                using (var streamReader = new StreamReader(result.Response))
                {
                    response.Response=  streamReader.ReadToEnd();
                    response.Success = true;
                }
            }
            else{
                response.Success = false;
                response.Error = result.Error;
            }
            return response;
		}
	}
}


