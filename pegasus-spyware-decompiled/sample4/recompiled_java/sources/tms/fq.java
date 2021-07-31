package tms;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.tencent.tmsecure.utils.WifiUtil;

final class fq extends WebViewClient {
    final /* synthetic */ WebView a;
    final /* synthetic */ hg b;

    fq(hg hgVar, WebView webView) {
        this.b = hgVar;
        this.a = webView;
    }

    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        WifiUtil.sRedirectLocation = WifiUtil.TEST_URL;
        this.b.a.onWifiApproveCheckFinished(false, true);
        this.a.setWebViewClient(null);
        this.a.setWebChromeClient(null);
        this.a.stopLoading();
        this.a.clearCache(true);
        this.a.destroy();
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (!str.contains(".baidu.")) {
            WifiUtil.sRedirectLocation = str;
            this.b.a.onWifiApproveCheckFinished(true, false);
        } else {
            this.b.a.onWifiApproveCheckFinished(false, false);
        }
        this.a.setWebViewClient(null);
        this.a.setWebChromeClient(null);
        this.a.stopLoading();
        this.a.clearCache(true);
        this.a.destroy();
        return true;
    }
}
