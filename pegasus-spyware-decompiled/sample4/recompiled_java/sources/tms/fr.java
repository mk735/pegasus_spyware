package tms;

import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.tencent.tmsecure.utils.WifiUtil;

final class fr extends WebChromeClient {
    final /* synthetic */ WebView a;
    final /* synthetic */ hg b;

    fr(hg hgVar, WebView webView) {
        this.b = hgVar;
        this.a = webView;
    }

    public final void onReceivedTitle(WebView webView, String str) {
        if (str == null || !str.contains("百度")) {
            WifiUtil.sRedirectLocation = webView.getUrl();
            if (WifiUtil.sRedirectLocation == null || WifiUtil.sRedirectLocation.length() == 0) {
                WifiUtil.sRedirectLocation = WifiUtil.TEST_URL;
            }
            this.b.a.onWifiApproveCheckFinished(true, false);
        } else {
            this.b.a.onWifiApproveCheckFinished(false, false);
        }
        this.a.setWebViewClient(null);
        this.a.setWebChromeClient(null);
        this.a.stopLoading();
        this.a.clearCache(true);
        this.a.destroy();
    }
}
