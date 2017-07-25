using System;
using System.Collections.Generic;

namespace Xamarin.Forms.CommonCore
{
    public interface IContextMenuService
    {
        void ShowContextMenu(Xamarin.Forms.View viewRoot, Dictionary<string, Action> menuItems);
    }
}
