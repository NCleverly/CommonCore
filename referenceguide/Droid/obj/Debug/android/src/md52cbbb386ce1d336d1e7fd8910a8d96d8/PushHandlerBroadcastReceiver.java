package md52cbbb386ce1d336d1e7fd8910a8d96d8;


public class PushHandlerBroadcastReceiver
	extends md5888b830801eb5e3841ccc5799e6c789e.GcmBroadcastReceiverBase_1
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("Xamarin.Forms.CommonCore.PushHandlerBroadcastReceiver, referenceguide.Droid, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", PushHandlerBroadcastReceiver.class, __md_methods);
	}


	public PushHandlerBroadcastReceiver () throws java.lang.Throwable
	{
		super ();
		if (getClass () == PushHandlerBroadcastReceiver.class)
			mono.android.TypeManager.Activate ("Xamarin.Forms.CommonCore.PushHandlerBroadcastReceiver, referenceguide.Droid, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", "", this, new java.lang.Object[] {  });
	}

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
