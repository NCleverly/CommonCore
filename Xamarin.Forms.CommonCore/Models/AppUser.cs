using System;
namespace Xamarin.Forms.CommonCore
{
    public partial class AppUser
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string UserName { get; set; }
        public string UserId { get; set; }
        public AuthenticationToken AuthToken { get; set; }


        public bool TokenIsValid
        {
            get
            {
                if (AuthToken == null)
                    return false;
                else
                    return AuthToken.UTCExpiration > DateTimeOffset.UtcNow.Ticks;
            }
        }
    }
}
