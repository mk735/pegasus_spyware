package tms;

import android.content.Context;
import android.os.Bundle;
import android.os.FileObserver;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.module.tools.IFileChangedListener;
import java.util.HashMap;
import org.apache.commons.httpclient.cookie.Cookie2;

public final class gm extends BaseManager {
    private a a;
    private Handler b;

    final class a {
        private HashMap<String, FileObserver> b = new HashMap<>();

        a() {
        }

        public final int a() {
            return this.b.size();
        }

        public final boolean a(String str) {
            FileObserver fileObserver = this.b.get(str);
            if (fileObserver == null) {
                return true;
            }
            fileObserver.stopWatching();
            this.b.remove(str);
            return true;
        }

        public final boolean a(String str, int i, IFileChangedListener iFileChangedListener) {
            if (iFileChangedListener == null) {
                throw new NullPointerException("the listener is null");
            }
            c cVar = new c(str, i, iFileChangedListener);
            FileObserver fileObserver = this.b.get(str);
            this.b.put(str, cVar);
            if (fileObserver != null) {
                fileObserver.stopWatching();
            }
            cVar.startWatching();
            return true;
        }
    }

    final class b extends Handler {
        private Looper b;

        public b(Looper looper) {
            super(looper);
        }

        /* access modifiers changed from: protected */
        @Override // java.lang.Object
        public final void finalize() throws Throwable {
            if (this.b != null) {
                this.b.quit();
            }
            super.finalize();
        }

        public final void handleMessage(Message message) {
            Bundle data = message.getData();
            ((IFileChangedListener) message.obj).onChanage(data.getInt("event"), data.getString(Cookie2.PATH));
        }
    }

    /* access modifiers changed from: package-private */
    public final class c extends FileObserver {
        private IFileChangedListener b;

        public c(String str, int i, IFileChangedListener iFileChangedListener) {
            super(str, i);
            this.b = iFileChangedListener;
        }

        public final void onEvent(int i, String str) {
            if (this.b != null && gm.this.b != null) {
                Message obtainMessage = gm.this.b.obtainMessage(0);
                obtainMessage.obj = this.b;
                Bundle bundle = new Bundle();
                bundle.putInt("event", i);
                bundle.putString(Cookie2.PATH, str);
                obtainMessage.setData(bundle);
                obtainMessage.sendToTarget();
            }
        }
    }

    public final void a(String str) {
        this.a.a(str);
        if (this.a.a() == 0) {
            synchronized (b.class) {
                this.b.removeMessages(0);
                this.b = null;
            }
        }
    }

    public final void a(String str, int i, IFileChangedListener iFileChangedListener) {
        this.a.a(str, i, iFileChangedListener);
        synchronized (b.class) {
            if (this.b == null) {
                HandlerThread handlerThread = new HandlerThread(gm.class.getName());
                handlerThread.start();
                this.b = new b(handlerThread.getLooper());
            }
        }
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final int getSingletonType() {
        return 1;
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.a = new a();
    }
}
