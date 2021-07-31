package tms;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.utils.WifiUtil;

public final class hg extends Handler {
    final /* synthetic */ WifiUtil.IWifiApproveCheckCallBack a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public hg(Looper looper, WifiUtil.IWifiApproveCheckCallBack iWifiApproveCheckCallBack) {
        super(looper);
        this.a = iWifiApproveCheckCallBack;
    }

    public final void handleMessage(Message message) {
        WebView webView = new WebView(TMSApplication.getApplicaionContext());
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setPluginsEnabled(true);
        webView.loadUrl(WifiUtil.TEST_URL);
        webView.setWebViewClient(new fq(this, webView));
        webView.setWebChromeClient(new fr(this, webView));
    }
}
