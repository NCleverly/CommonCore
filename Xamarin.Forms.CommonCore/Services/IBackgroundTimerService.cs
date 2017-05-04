using System;
namespace Xamarin.Forms.CommonCore
{
    public interface IIntervalCallback
    {
        void TimeElapsedEvent();
    }
    public interface IBackgroundTimer
    {
        void Start(int timeSpan, IIntervalCallback formsCallBack);
        void Stop();
    }
}
