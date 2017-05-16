using System;
using Xamarin.Forms;

namespace Xamarin.Forms.CommonCore
{
    public interface IPopup
    {
        AbsoluteLayout Parent { get; set; }
        Frame ParentObject { get; set; }
    }
	public class PopupView : ContentView, IPopup
	{
		public new AbsoluteLayout Parent { get; set; }
        public Frame ParentObject { get; set; }
        public virtual void Close(){
            this.Parent.Children.Remove(ParentObject);
        }
	}
    public abstract class AbsoluteLayoutPage<T> : BoundPage<T>
     where T : ObservableViewModel, new()
    {
        private AbsoluteLayout layout;
        private View content;
        private Frame wrapper;

        public new View Content
        {
            get { return this.content; }
            set
            {
                if (this.content != null)
                    this.layout.Children.Remove(this.content);

                this.content = value;
                AbsoluteLayout.SetLayoutBounds(content, new Rectangle(1, 1, 1, 1));
                AbsoluteLayout.SetLayoutFlags(content, AbsoluteLayoutFlags.All);
                this.layout.Children.Add(this.content);
            }
        }

        public AbsoluteLayout AbsoluteLayer
        {
            get { return layout; }
            set { layout = value; }
        }

        public void ShowPopup(PopupView view, Rectangle bounds, int padding)
        {
            wrapper = new Frame() { 
                Content = view, 
                HasShadow = true, 
                IsClippedToBounds=true, 
                OutlineColor= Color.Gray, 
                CornerRadius=3, 
                Padding = padding 
            };
            ((IPopup)view).Parent = this.layout;
			((IPopup)view).ParentObject = this.wrapper;

            AbsoluteLayout.SetLayoutBounds(wrapper, bounds);
			AbsoluteLayout.SetLayoutFlags(wrapper, AbsoluteLayoutFlags.All);
            this.layout.Children.Add(wrapper);
            view.BindingContext = this.BindingContext;
        }

        public void ClosePopup(){
            if (wrapper != null)
            {
				((IPopup)wrapper).Parent = null;
                this.layout.Children.Remove(wrapper);
            }
        }

        public AbsoluteLayoutPage()
        {
            base.Content = this.layout = new AbsoluteLayout() { };
        }

        protected override void OnAppearing()
        {
            this.SizeChanged += PageSizeChanged;
            base.OnAppearing();
            PageSizeChanged(this, null);
        }
        protected override void OnDisappearing()
        {
            this.SizeChanged -= PageSizeChanged;
            base.OnDisappearing();
        }

        public virtual void PageSizeChanged(object sender, EventArgs args) { }

        public void Dispose()
        {
            this.SizeChanged -= PageSizeChanged;
        }

    }
}

