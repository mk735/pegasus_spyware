package com.lenovo.feedback2.agent;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Process;
import android.os.RemoteException;
import android.util.Log;
import com.lenovo.feedback2.agent.IFeedBackAgent;
import com.lenovo.feedback2.message.CommandAction;
import com.lenovo.feedback2.message.Message;
import com.lenovo.feedback2.service.IFeedBackService;

public class FeedBackAgent {
    private static String a = "FeedBackAgent";
    private static FeedBackAgent b;
    private static Object c = new Object();
    private final a d = new a(this, (byte) 0);
    private Context e;
    private final AgentContext f = new AgentContext();
    private ServiceConnection g;
    private CommandReceiver h;
    private IMessageListener i;

    public static void init(Context context) {
        if (context == null) {
            Log.e(a, "FeedBackAgent::init null context!");
            return;
        }
        synchronized (c) {
            if (b == null) {
                b = new FeedBackAgent(context);
            }
        }
    }

    private FeedBackAgent(Context context) {
        this.e = context;
        Log.i(a, "FeedBackAgent create new instance");
        ApplicationInfo info = ApplicationInfoCollector.collectAppInfo(context);
        this.f.setContext(context);
        this.f.setApplicationInfo(info);
        this.f.setHandler(new AgentHandler());
        this.h = new CommandReceiver();
        this.h.setAgentContext(this.f);
        IntentFilter filter = new IntentFilter();
        filter.addAction(CommandAction.SERVER_START);
        filter.addAction(CommandAction.SERVER_RESTART);
        filter.addAction(CommandAction.SERVER_STOP);
        filter.addAction(CommandAction.GET_SCREENSHOT);
        filter.addAction(CommandAction.REBIND);
        context.registerReceiver(this.h, filter);
        b();
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void b() {
        if (this.g == null) {
            Log.i(a, "FeedBackAgent::bind create new connection");
            this.g = new b(this, (byte) 0);
            Intent intent = new Intent();
            intent.setClassName("com.lenovo.feedback2", "com.lenovo.feedback2.service.FeedBackService");
            this.e.bindService(intent, this.g, 1);
            return;
        }
        Log.i(a, "FeedBackAgent::bind has bound to service");
    }

    static /* synthetic */ void b(FeedBackAgent feedBackAgent) {
        if (!(feedBackAgent.e == null || feedBackAgent.g == null)) {
            Log.i(a, "FeedBackAgent::unbind ");
            feedBackAgent.e.unbindService(feedBackAgent.g);
        }
        feedBackAgent.g = null;
    }

    public static void setMessageListener(IMessageListener messageListener) {
        if (b != null) {
            b.i = messageListener;
        }
    }

    public class AgentHandler {
        public AgentHandler() {
        }

        public void bind() {
            FeedBackAgent.this.b();
        }

        public void unbind() {
            FeedBackAgent.b(FeedBackAgent.this);
        }
    }

    /* access modifiers changed from: private */
    public class b implements ServiceConnection {
        private b() {
        }

        /* synthetic */ b(FeedBackAgent feedBackAgent, byte b) {
            this();
        }

        public final void onServiceConnected(ComponentName name, IBinder service) {
            IFeedBackService feedBackService = IFeedBackService.Stub.asInterface(service);
            if (feedBackService == null) {
                Log.e(FeedBackAgent.a, "FeedBackAgent::onServiceConnected null service binder");
                return;
            }
            try {
                feedBackService.setAgentCallBack(Process.myPid(), FeedBackAgent.this.f.getApplicationInfo().getPackageName(), FeedBackAgent.this.d);
                FeedBackAgent.this.f.setFeedBackService(feedBackService);
                new CrashHandler(FeedBackAgent.this.f, new AgentHandler());
            } catch (RemoteException e) {
            }
        }

        public final void onServiceDisconnected(ComponentName name) {
        }
    }

    /* access modifiers changed from: private */
    public class a extends IFeedBackAgent.Stub {
        private a() {
        }

        /* synthetic */ a(FeedBackAgent feedBackAgent, byte b) {
            this();
        }

        @Override // com.lenovo.feedback2.agent.IFeedBackAgent
        public final Message received(Message message) throws RemoteException {
            Log.i(FeedBackAgent.a, "AgentCallBack::received " + message.getHeader());
            if (FeedBackAgent.this.i == null) {
                return null;
            }
            FeedBackAgent.this.i.onReceivedMessage(message);
            return null;
        }
    }
}
