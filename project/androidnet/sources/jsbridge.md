# JsBridge.cs

```csharp
using Android.Webkit;
using Java.Interop;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AndroidApp4
{
    internal class JsBridge : Java.Lang.Object
    {
        Activity activity;

        public JsBridge(Activity activity)
        {
            this.activity = activity;
        }

        [JavascriptInterface] 
        [Export("showToast")] 
        public void ShowToast(string message)
        {
            activity.RunOnUiThread(() =>
            {
                Toast.MakeText(activity, message, ToastLength.Short).Show();
            });
        }
    }
}

```

