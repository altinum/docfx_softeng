# MainActivity.cs

```csharp
using Android.Views;
using Android.Webkit;

namespace AndroidApp4
{
    [Activity(Label = "@string/app_name", MainLauncher = true)]
    public class MainActivity : Activity
    {
        WebView webView;
        protected override void OnCreate(Bundle? savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            // Make fullscreen
            Window?.SetFlags(WindowManagerFlags.Fullscreen, WindowManagerFlags.Fullscreen);
            RequestWindowFeature(WindowFeatures.NoTitle);

            WebView.SetWebContentsDebuggingEnabled(true);

            // Set our view from the "main" layout resource
            SetContentView(Resource.Layout.activity_main);

            webView = FindViewById<WebView>(Resource.Id.webView);

            webView.Settings.JavaScriptEnabled = true;
            webView.Settings.JavaScriptCanOpenWindowsAutomatically = false;
            webView.Settings.BuiltInZoomControls = false; // zoom if you want
            webView.Settings.DomStorageEnabled = true;    // Enable localStorage
            webView.Settings.MediaPlaybackRequiresUserGesture = false;
            webView.Settings.AllowFileAccess = true;
            webView.Settings.AllowFileAccessFromFileURLs = true;
            webView.Settings.AllowContentAccess = true;
            webView.Settings.AllowUniversalAccessFromFileURLs = true;

            webView.SetWebViewClient(new WebViewClient());

            webView.AddJavascriptInterface(new JsBridge(this), "AndroidBridge");

            webView.LongClick += (s, e) =>
            {
               Toast.MakeText(this,"Hosszú klikk", ToastLength.Short)?.Show();

                Random rnd = new Random();
                int r = rnd.Next(256);
                int g = rnd.Next(256);
                int b = rnd.Next(256);

                string color = $"rgb({r},{g},{b})";

                webView.EvaluateJavascript($"document.body.style.backgroundColor='{color}'", null);
            };

            //webView.LoadUrl("https://bbc.com");
            webView.LoadUrl("file:///android_asset/index.html");

        }
    }
}
```

