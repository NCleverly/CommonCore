using System;
using Xamarin.Forms;

[assembly: ResolutionGroupName("CommonEffects")]
namespace Xamarin.Forms.CommonCore
{
	public class CommonEffects
	{
		public const string ListRemoveEmptyRows = "CommonEffects.ListRemoveEmptyRows";
		public const string WebViewDisableScroll = "CommonEffects.WebViewDisableScroll";
		public const string HideTableSeparator = "CommonEffects.HideTableSeparator";
		public const string ViewShadow = "CommonEffects.ViewShadow";
	}

	public class RemoveEmptyRowsEffect : RoutingEffect
	{
		public RemoveEmptyRowsEffect() : base(CommonEffects.ListRemoveEmptyRows) { }
	}
	public class DisableWebViewScrollEffect : RoutingEffect
	{
		public DisableWebViewScrollEffect() : base(CommonEffects.WebViewDisableScroll) { }
	}
	public class HideListSeparatorEffect : RoutingEffect
	{
		public HideListSeparatorEffect() : base(CommonEffects.HideTableSeparator) { }
	}
	public class ViewShadowEffect : RoutingEffect
	{
		public ViewShadowEffect() : base(CommonEffects.ViewShadow) { }
	}

}
