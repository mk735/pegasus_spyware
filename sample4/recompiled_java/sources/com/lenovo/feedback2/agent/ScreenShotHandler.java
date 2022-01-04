package com.lenovo.feedback2.agent;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.RemoteException;
import android.util.Log;
import android.view.View;
import com.lenovo.feedback2.message.BasicMessageBuilder;
import com.lenovo.feedback2.message.Message;
import com.lenovo.feedback2.message.protocol.V_1;
import com.lenovo.feedback2.service.IFeedBackService;
import java.io.ByteArrayOutputStream;

public class ScreenShotHandler implements Runnable {
    private static String a = "FeedBackAgent";
    private a b = new a();
    private AgentContext c;
    private long d;

    public ScreenShotHandler(AgentContext agentContext, long id) {
        this.c = agentContext;
        this.d = id;
    }

    public void run() {
        try {
            Context context = this.c.getContext();
            if (context == null) {
                Log.e(a, "ScreenShotHandler::run null context");
            } else if (this.c.getFeedBackService() == null) {
                Log.e(a, "ScreenShotHandler::run null feedbackService");
            } else {
                String packageName = context.getApplicationInfo().packageName;
                Thread.sleep(500);
                int count = 0;
                while (true) {
                    a aVar = this.b;
                    View decorView = a.a(this.b.a());
                    if (decorView != null) {
                        Log.i(a, "get a decorView in " + packageName);
                        decorView.post(new a(decorView, packageName, context));
                        return;
                    } else if (count > 1) {
                        Log.i(a, "null decorView in " + packageName);
                        return;
                    } else {
                        Thread.sleep(1000);
                        count++;
                    }
                }
            }
        } catch (Exception e) {
            Log.e(a, "ScreenShotHandler::run catch exception", e);
        }
    }

    private class a implements Runnable {
        private View b;
        private String c;
        private Context d;

        public a(View view, String packageName, Context context) {
            this.b = view;
            this.c = packageName;
            this.d = context;
        }

        public final void run() {
            try {
                View view = this.b;
                String str = this.c;
                Log.i(ScreenShotHandler.a, "ViewCacheHandler take screen shot");
                view.destroyDrawingCache();
                view.buildDrawingCache(false);
                try {
                    Bitmap drawingCache = this.b.getDrawingCache();
                    int width = drawingCache.getWidth();
                    int height = drawingCache.getHeight();
                    int width2 = this.b.getWidth();
                    int height2 = this.b.getHeight();
                    if (height >= height2 && width >= width2) {
                        Rect rect = new Rect();
                        this.b.getWindowVisibleDisplayFrame(rect);
                        int i = rect.top;
                        drawingCache = Bitmap.createBitmap(drawingCache, 0, i, width2, height2 - i);
                    }
                    Log.i(ScreenShotHandler.a, "ViewCacheHandler compress begin");
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    if (!drawingCache.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream)) {
                        a("截图压缩成PNG图片时失败");
                        return;
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    ApplicationInfo collectAppInfo = ApplicationInfoCollector.collectAppInfo(this.d);
                    Message build = new BasicMessageBuilder(1).addString(V_1.BroadCastId, new StringBuilder().append(ScreenShotHandler.this.d).toString()).addString(V_1.AppName, collectAppInfo.getAppName()).addString(V_1.PackageName, collectAppInfo.getPackageName()).addString(V_1.VersionCode, new StringBuilder().append(collectAppInfo.getVersionCode()).toString()).addString(V_1.VersionName, collectAppInfo.getVersionName()).addBinary(V_1.Pic, byteArray).build();
                    Log.i(ScreenShotHandler.a, "ViewCacheHandler build message : id = " + ScreenShotHandler.this.d + " appname = " + collectAppInfo.getAppName());
                    try {
                        Log.i(ScreenShotHandler.a, "ViewCacheHandler send pic message");
                        IFeedBackService feedBackService = ScreenShotHandler.this.c.getFeedBackService();
                        if (feedBackService != null) {
                            feedBackService.send(build);
                        } else {
                            Log.e(ScreenShotHandler.a, "ViewCacheHandler null service");
                        }
                        view.destroyDrawingCache();
                    } catch (RemoteException e) {
                        Log.e(ScreenShotHandler.a, "ViewCacheHandler::takeScreenShot 传送图片至FeedBackService失败", e);
                        a("传送图片至FeedBackService失败");
                        view.destroyDrawingCache();
                    }
                } finally {
                    view.destroyDrawingCache();
                }
            } catch (Exception e2) {
                Log.e(ScreenShotHandler.a, "ViewCacheHandler exception", e2);
            }
        }

        private static void a(String description) {
            Log.i(ScreenShotHandler.a, "ViewCacheHandler catch err : " + description);
        }
    }
}
