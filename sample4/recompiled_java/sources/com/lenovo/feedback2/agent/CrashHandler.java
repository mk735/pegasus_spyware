package com.lenovo.feedback2.agent;

import android.util.Log;
import com.lenovo.feedback2.agent.FeedBackAgent;
import com.lenovo.feedback2.message.BasicMessageBuilder;
import com.lenovo.feedback2.message.Message;
import com.lenovo.feedback2.message.protocol.V_1;
import com.lenovo.feedback2.service.IFeedBackService;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;

public class CrashHandler implements Thread.UncaughtExceptionHandler {
    private AgentContext a;
    private FeedBackAgent.AgentHandler b;
    private Thread.UncaughtExceptionHandler c = Thread.getDefaultUncaughtExceptionHandler();

    public CrashHandler(AgentContext context, FeedBackAgent.AgentHandler handler) {
        this.a = context;
        this.b = handler;
        Thread.setDefaultUncaughtExceptionHandler(this);
        Log.i("FeedBackAgent", "CrashHandler start");
    }

    public void uncaughtException(Thread thread, Throwable ex) {
        try {
            IFeedBackService service = this.a.getFeedBackService();
            if (service == null) {
                Log.e("FeedBackAgent", "CrashHandler::uncaughtException null service");
                return;
            }
            ApplicationInfo info = this.a.getApplicationInfo();
            if (info == null) {
                Log.e("FeedBackAgent", "CrashHandler::uncaughtException null application info");
                return;
            }
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            for (Throwable th = ex; th != null; th = th.getCause()) {
                th.printStackTrace(printWriter);
            }
            String stacktraceAsString = stringWriter.toString();
            printWriter.close();
            Log.i("FeedBackAgent", "CrashHandler::uncaughtException getStackTrace");
            Message message = new BasicMessageBuilder(1).addString(V_1.StackTrace, stacktraceAsString).addString(V_1.AppName, info.getAppName()).addString(V_1.PackageName, info.getPackageName()).addString(V_1.VersionCode, new StringBuilder().append(info.getVersionCode()).toString()).addString(V_1.VersionName, info.getVersionName()).build();
            Log.i("FeedBackAgent", "CrashHandler::uncaughtException send stack trace message to service");
            service.send(message);
            if (this.b != null) {
                this.b.unbind();
            }
            if (this.c != null) {
                this.c.uncaughtException(thread, ex);
            }
        } catch (Exception e) {
            Log.e("FeedBackAgent", "CrashHandler catch exception ", e);
        }
    }
}
