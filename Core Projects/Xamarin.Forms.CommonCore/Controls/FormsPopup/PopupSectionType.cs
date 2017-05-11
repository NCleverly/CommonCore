using System;

namespace Xamarin.Forms.CommonCore
{
    /// <summary>
    /// Used to identify the logical sections of a <see cref="Popup"/>.
    /// </summary>
    [Flags]
    public enum PopupSectionType
    {
        NotSet,
        Border,
        Backdrop,
        Header,
        Body,
        Footer
    }
}