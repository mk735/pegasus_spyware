package android.support.v4.media;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.app.BundleCompat;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.MediaBrowserServiceCompatApi21;
import android.support.v4.media.MediaBrowserServiceCompatApi23;
import android.support.v4.media.MediaBrowserServiceCompatApi24;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.BuildCompat;
import android.support.v4.os.ResultReceiver;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.Pair;
import android.text.TextUtils;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public abstract class MediaBrowserServiceCompat extends Service {
    static final boolean DEBUG = Log.isLoggable(TAG, 3);
    @RestrictTo({RestrictTo.Scope.GROUP_ID})
    public static final String KEY_MEDIA_ITEM = "media_item";
    static final int RESULT_FLAG_ON_LOAD_ITEM_NOT_IMPLEMENTED = 2;
    static final int RESULT_FLAG_OPTION_NOT_HANDLED = 1;
    public static final String SERVICE_INTERFACE = "android.media.browse.MediaBrowserService";
    static final String TAG = "MBServiceCompat";
    final ArrayMap<IBinder, ConnectionRecord> mConnections = new ArrayMap<>();
    ConnectionRecord mCurConnection;
    final ServiceHandler mHandler = new ServiceHandler();
    private MediaBrowserServiceImpl mImpl;
    MediaSessionCompat.Token mSession;

    interface MediaBrowserServiceImpl {
        Bundle getBrowserRootHints();

        void notifyChildrenChanged(String str, Bundle bundle);

        IBinder onBind(Intent intent);

        void onCreate();

        void setSessionToken(MediaSessionCompat.Token token);
    }

    /* access modifiers changed from: private */
    public interface ServiceCallbacks {
        IBinder asBinder();

        void onConnect(String str, MediaSessionCompat.Token token, Bundle bundle) throws RemoteException;

        void onConnectFailed() throws RemoteException;

        void onLoadChildren(String str, List<MediaBrowserCompat.MediaItem> list, Bundle bundle) throws RemoteException;
    }

    @Nullable
    public abstract BrowserRoot onGetRoot(@NonNull String str, int i, @Nullable Bundle bundle);

    public abstract void onLoadChildren(@NonNull String str, @NonNull Result<List<MediaBrowserCompat.MediaItem>> result);

    class MediaBrowserServiceImplBase implements MediaBrowserServiceImpl {
        private Messenger mMessenger;

        MediaBrowserServiceImplBase() {
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void onCreate() {
            this.mMessenger = new Messenger(MediaBrowserServiceCompat.this.mHandler);
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public IBinder onBind(Intent intent) {
            if (MediaBrowserServiceCompat.SERVICE_INTERFACE.equals(intent.getAction())) {
                return this.mMessenger.getBinder();
            }
            return null;
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void setSessionToken(final MediaSessionCompat.Token token) {
            MediaBrowserServiceCompat.this.mHandler.post(new Runnable() {
                /* class android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImplBase.AnonymousClass1 */

                public void run() {
                    Iterator<ConnectionRecord> iter = MediaBrowserServiceCompat.this.mConnections.values().iterator();
                    while (iter.hasNext()) {
                        ConnectionRecord connection = iter.next();
                        try {
                            connection.callbacks.onConnect(connection.root.getRootId(), token, connection.root.getExtras());
                        } catch (RemoteException e) {
                            Log.w(MediaBrowserServiceCompat.TAG, "Connection for " + connection.pkg + " is no longer valid.");
                            iter.remove();
                        }
                    }
                }
            });
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void notifyChildrenChanged(@NonNull final String parentId, final Bundle options) {
            MediaBrowserServiceCompat.this.mHandler.post(new Runnable() {
                /* class android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImplBase.AnonymousClass2 */

                public void run() {
                    for (IBinder binder : MediaBrowserServiceCompat.this.mConnections.keySet()) {
                        ConnectionRecord connection = MediaBrowserServiceCompat.this.mConnections.get(binder);
                        List<Pair<IBinder, Bundle>> callbackList = connection.subscriptions.get(parentId);
                        if (callbackList != null) {
                            for (Pair<IBinder, Bundle> callback : callbackList) {
                                if (MediaBrowserCompatUtils.hasDuplicatedItems(options, callback.second)) {
                                    MediaBrowserServiceCompat.this.performLoadChildren(parentId, connection, callback.second);
                                }
                            }
                        }
                    }
                }
            });
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public Bundle getBrowserRootHints() {
            if (MediaBrowserServiceCompat.this.mCurConnection == null) {
                throw new IllegalStateException("This should be called inside of onLoadChildren or onLoadItem methods");
            } else if (MediaBrowserServiceCompat.this.mCurConnection.rootHints == null) {
                return null;
            } else {
                return new Bundle(MediaBrowserServiceCompat.this.mCurConnection.rootHints);
            }
        }
    }

    class MediaBrowserServiceImplApi21 implements MediaBrowserServiceImpl, MediaBrowserServiceCompatApi21.ServiceCompatProxy {
        Messenger mMessenger;
        Object mServiceObj;

        MediaBrowserServiceImplApi21() {
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void onCreate() {
            this.mServiceObj = MediaBrowserServiceCompatApi21.createService(MediaBrowserServiceCompat.this, this);
            MediaBrowserServiceCompatApi21.onCreate(this.mServiceObj);
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public IBinder onBind(Intent intent) {
            return MediaBrowserServiceCompatApi21.onBind(this.mServiceObj, intent);
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void setSessionToken(MediaSessionCompat.Token token) {
            MediaBrowserServiceCompatApi21.setSessionToken(this.mServiceObj, token.getToken());
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void notifyChildrenChanged(final String parentId, final Bundle options) {
            if (this.mMessenger == null) {
                MediaBrowserServiceCompatApi21.notifyChildrenChanged(this.mServiceObj, parentId);
            } else {
                MediaBrowserServiceCompat.this.mHandler.post(new Runnable() {
                    /* class android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi21.AnonymousClass1 */

                    public void run() {
                        for (IBinder binder : MediaBrowserServiceCompat.this.mConnections.keySet()) {
                            ConnectionRecord connection = MediaBrowserServiceCompat.this.mConnections.get(binder);
                            List<Pair<IBinder, Bundle>> callbackList = connection.subscriptions.get(parentId);
                            if (callbackList != null) {
                                for (Pair<IBinder, Bundle> callback : callbackList) {
                                    if (MediaBrowserCompatUtils.hasDuplicatedItems(options, callback.second)) {
                                        MediaBrowserServiceCompat.this.performLoadChildren(parentId, connection, callback.second);
                                    }
                                }
                            }
                        }
                    }
                });
            }
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public Bundle getBrowserRootHints() {
            if (this.mMessenger == null) {
                return null;
            }
            if (MediaBrowserServiceCompat.this.mCurConnection == null) {
                throw new IllegalStateException("This should be called inside of onLoadChildren or onLoadItem methods");
            } else if (MediaBrowserServiceCompat.this.mCurConnection.rootHints != null) {
                return new Bundle(MediaBrowserServiceCompat.this.mCurConnection.rootHints);
            } else {
                return null;
            }
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompatApi21.ServiceCompatProxy
        public MediaBrowserServiceCompatApi21.BrowserRoot onGetRoot(String clientPackageName, int clientUid, Bundle rootHints) {
            Bundle rootExtras = null;
            if (!(rootHints == null || rootHints.getInt(MediaBrowserProtocol.EXTRA_CLIENT_VERSION, 0) == 0)) {
                rootHints.remove(MediaBrowserProtocol.EXTRA_CLIENT_VERSION);
                this.mMessenger = new Messenger(MediaBrowserServiceCompat.this.mHandler);
                rootExtras = new Bundle();
                rootExtras.putInt(MediaBrowserProtocol.EXTRA_SERVICE_VERSION, 1);
                BundleCompat.putBinder(rootExtras, MediaBrowserProtocol.EXTRA_MESSENGER_BINDER, this.mMessenger.getBinder());
            }
            BrowserRoot root = MediaBrowserServiceCompat.this.onGetRoot(clientPackageName, clientUid, rootHints);
            if (root == null) {
                return null;
            }
            if (rootExtras == null) {
                rootExtras = root.getExtras();
            } else if (root.getExtras() != null) {
                rootExtras.putAll(root.getExtras());
            }
            return new MediaBrowserServiceCompatApi21.BrowserRoot(root.getRootId(), rootExtras);
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompatApi21.ServiceCompatProxy
        public void onLoadChildren(String parentId, final MediaBrowserServiceCompatApi21.ResultWrapper<List<Parcel>> resultWrapper) {
            MediaBrowserServiceCompat.this.onLoadChildren(parentId, new Result<List<MediaBrowserCompat.MediaItem>>(parentId) {
                /* class android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi21.AnonymousClass2 */

                /* access modifiers changed from: package-private */
                public void onResultSent(List<MediaBrowserCompat.MediaItem> list, int flags) {
                    ArrayList arrayList = null;
                    if (list != null) {
                        arrayList = new ArrayList();
                        for (MediaBrowserCompat.MediaItem item : list) {
                            Parcel parcel = Parcel.obtain();
                            item.writeToParcel(parcel, 0);
                            arrayList.add(parcel);
                        }
                    }
                    resultWrapper.sendResult(arrayList);
                }

                @Override // android.support.v4.media.MediaBrowserServiceCompat.Result
                public void detach() {
                    resultWrapper.detach();
                }
            });
        }
    }

    class MediaBrowserServiceImplApi23 extends MediaBrowserServiceImplApi21 implements MediaBrowserServiceCompatApi23.ServiceCompatProxy {
        MediaBrowserServiceImplApi23() {
            super();
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl, android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi21
        public void onCreate() {
            this.mServiceObj = MediaBrowserServiceCompatApi23.createService(MediaBrowserServiceCompat.this, this);
            MediaBrowserServiceCompatApi21.onCreate(this.mServiceObj);
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompatApi23.ServiceCompatProxy
        public void onLoadItem(String itemId, final MediaBrowserServiceCompatApi21.ResultWrapper<Parcel> resultWrapper) {
            MediaBrowserServiceCompat.this.onLoadItem(itemId, new Result<MediaBrowserCompat.MediaItem>(itemId) {
                /* class android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi23.AnonymousClass1 */

                /* access modifiers changed from: package-private */
                public void onResultSent(MediaBrowserCompat.MediaItem item, int flags) {
                    if (item == null) {
                        resultWrapper.sendResult(null);
                        return;
                    }
                    Parcel parcelItem = Parcel.obtain();
                    item.writeToParcel(parcelItem, 0);
                    resultWrapper.sendResult(parcelItem);
                }

                @Override // android.support.v4.media.MediaBrowserServiceCompat.Result
                public void detach() {
                    resultWrapper.detach();
                }
            });
        }
    }

    class MediaBrowserServiceImplApi24 extends MediaBrowserServiceImplApi23 implements MediaBrowserServiceCompatApi24.ServiceCompatProxy {
        MediaBrowserServiceImplApi24() {
            super();
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl, android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi21, android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi23
        public void onCreate() {
            this.mServiceObj = MediaBrowserServiceCompatApi24.createService(MediaBrowserServiceCompat.this, this);
            MediaBrowserServiceCompatApi21.onCreate(this.mServiceObj);
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl, android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi21
        public void notifyChildrenChanged(String parentId, Bundle options) {
            if (options == null) {
                MediaBrowserServiceCompatApi21.notifyChildrenChanged(this.mServiceObj, parentId);
            } else {
                MediaBrowserServiceCompatApi24.notifyChildrenChanged(this.mServiceObj, parentId, options);
            }
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompatApi24.ServiceCompatProxy
        public void onLoadChildren(String parentId, final MediaBrowserServiceCompatApi24.ResultWrapper resultWrapper, Bundle options) {
            MediaBrowserServiceCompat.this.onLoadChildren(parentId, new Result<List<MediaBrowserCompat.MediaItem>>(parentId) {
                /* class android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi24.AnonymousClass1 */

                /* access modifiers changed from: package-private */
                public void onResultSent(List<MediaBrowserCompat.MediaItem> list, int flags) {
                    List<Parcel> parcelList = null;
                    if (list != null) {
                        parcelList = new ArrayList<>();
                        for (MediaBrowserCompat.MediaItem item : list) {
                            Parcel parcel = Parcel.obtain();
                            item.writeToParcel(parcel, 0);
                            parcelList.add(parcel);
                        }
                    }
                    resultWrapper.sendResult(parcelList, flags);
                }

                @Override // android.support.v4.media.MediaBrowserServiceCompat.Result
                public void detach() {
                    resultWrapper.detach();
                }
            }, options);
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl, android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi21
        public Bundle getBrowserRootHints() {
            return MediaBrowserServiceCompatApi24.getBrowserRootHints(this.mServiceObj);
        }
    }

    /* access modifiers changed from: private */
    public final class ServiceHandler extends Handler {
        private final ServiceBinderImpl mServiceBinderImpl = new ServiceBinderImpl();

        ServiceHandler() {
        }

        public void handleMessage(Message msg) {
            Bundle data = msg.getData();
            switch (msg.what) {
                case 1:
                    this.mServiceBinderImpl.connect(data.getString(MediaBrowserProtocol.DATA_PACKAGE_NAME), data.getInt(MediaBrowserProtocol.DATA_CALLING_UID), data.getBundle(MediaBrowserProtocol.DATA_ROOT_HINTS), new ServiceCallbacksCompat(msg.replyTo));
                    return;
                case 2:
                    this.mServiceBinderImpl.disconnect(new ServiceCallbacksCompat(msg.replyTo));
                    return;
                case 3:
                    this.mServiceBinderImpl.addSubscription(data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), BundleCompat.getBinder(data, MediaBrowserProtocol.DATA_CALLBACK_TOKEN), data.getBundle(MediaBrowserProtocol.DATA_OPTIONS), new ServiceCallbacksCompat(msg.replyTo));
                    return;
                case 4:
                    this.mServiceBinderImpl.removeSubscription(data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), BundleCompat.getBinder(data, MediaBrowserProtocol.DATA_CALLBACK_TOKEN), new ServiceCallbacksCompat(msg.replyTo));
                    return;
                case 5:
                    this.mServiceBinderImpl.getMediaItem(data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), (ResultReceiver) data.getParcelable(MediaBrowserProtocol.DATA_RESULT_RECEIVER), new ServiceCallbacksCompat(msg.replyTo));
                    return;
                case 6:
                    this.mServiceBinderImpl.registerCallbacks(new ServiceCallbacksCompat(msg.replyTo), data.getBundle(MediaBrowserProtocol.DATA_ROOT_HINTS));
                    return;
                case 7:
                    this.mServiceBinderImpl.unregisterCallbacks(new ServiceCallbacksCompat(msg.replyTo));
                    return;
                default:
                    Log.w(MediaBrowserServiceCompat.TAG, "Unhandled message: " + msg + "\n  Service version: " + 1 + "\n  Client version: " + msg.arg1);
                    return;
            }
        }

        public boolean sendMessageAtTime(Message msg, long uptimeMillis) {
            Bundle data = msg.getData();
            data.setClassLoader(MediaBrowserCompat.class.getClassLoader());
            data.putInt(MediaBrowserProtocol.DATA_CALLING_UID, Binder.getCallingUid());
            return super.sendMessageAtTime(msg, uptimeMillis);
        }

        public void postOrRun(Runnable r) {
            if (Thread.currentThread() == getLooper().getThread()) {
                r.run();
            } else {
                post(r);
            }
        }
    }

    /* access modifiers changed from: private */
    public class ConnectionRecord {
        ServiceCallbacks callbacks;
        String pkg;
        BrowserRoot root;
        Bundle rootHints;
        HashMap<String, List<Pair<IBinder, Bundle>>> subscriptions = new HashMap<>();

        ConnectionRecord() {
        }
    }

    public static class Result<T> {
        private Object mDebug;
        private boolean mDetachCalled;
        private int mFlags;
        private boolean mSendResultCalled;

        Result(Object debug) {
            this.mDebug = debug;
        }

        public void sendResult(T result) {
            if (this.mSendResultCalled) {
                throw new IllegalStateException("sendResult() called twice for: " + this.mDebug);
            }
            this.mSendResultCalled = true;
            onResultSent(result, this.mFlags);
        }

        public void detach() {
            if (this.mDetachCalled) {
                throw new IllegalStateException("detach() called when detach() had already been called for: " + this.mDebug);
            } else if (this.mSendResultCalled) {
                throw new IllegalStateException("detach() called when sendResult() had already been called for: " + this.mDebug);
            } else {
                this.mDetachCalled = true;
            }
        }

        /* access modifiers changed from: package-private */
        public boolean isDone() {
            return this.mDetachCalled || this.mSendResultCalled;
        }

        /* access modifiers changed from: package-private */
        public void setFlags(int flags) {
            this.mFlags = flags;
        }

        /* access modifiers changed from: package-private */
        public void onResultSent(T t, int flags) {
        }
    }

    private class ServiceBinderImpl {
        ServiceBinderImpl() {
        }

        public void connect(final String pkg, final int uid, final Bundle rootHints, final ServiceCallbacks callbacks) {
            if (!MediaBrowserServiceCompat.this.isValidPackage(pkg, uid)) {
                throw new IllegalArgumentException("Package/uid mismatch: uid=" + uid + " package=" + pkg);
            }
            MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable() {
                /* class android.support.v4.media.MediaBrowserServiceCompat.ServiceBinderImpl.AnonymousClass1 */

                public void run() {
                    IBinder b = callbacks.asBinder();
                    MediaBrowserServiceCompat.this.mConnections.remove(b);
                    ConnectionRecord connection = new ConnectionRecord();
                    connection.pkg = pkg;
                    connection.rootHints = rootHints;
                    connection.callbacks = callbacks;
                    connection.root = MediaBrowserServiceCompat.this.onGetRoot(pkg, uid, rootHints);
                    if (connection.root == null) {
                        Log.i(MediaBrowserServiceCompat.TAG, "No root for client " + pkg + " from service " + getClass().getName());
                        try {
                            callbacks.onConnectFailed();
                        } catch (RemoteException e) {
                            Log.w(MediaBrowserServiceCompat.TAG, "Calling onConnectFailed() failed. Ignoring. pkg=" + pkg);
                        }
                    } else {
                        try {
                            MediaBrowserServiceCompat.this.mConnections.put(b, connection);
                            if (MediaBrowserServiceCompat.this.mSession != null) {
                                callbacks.onConnect(connection.root.getRootId(), MediaBrowserServiceCompat.this.mSession, connection.root.getExtras());
                            }
                        } catch (RemoteException e2) {
                            Log.w(MediaBrowserServiceCompat.TAG, "Calling onConnect() failed. Dropping client. pkg=" + pkg);
                            MediaBrowserServiceCompat.this.mConnections.remove(b);
                        }
                    }
                }
            });
        }

        public void disconnect(final ServiceCallbacks callbacks) {
            MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable() {
                /* class android.support.v4.media.MediaBrowserServiceCompat.ServiceBinderImpl.AnonymousClass2 */

                public void run() {
                    if (MediaBrowserServiceCompat.this.mConnections.remove(callbacks.asBinder()) != null) {
                    }
                }
            });
        }

        public void addSubscription(final String id, final IBinder token, final Bundle options, final ServiceCallbacks callbacks) {
            MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable() {
                /* class android.support.v4.media.MediaBrowserServiceCompat.ServiceBinderImpl.AnonymousClass3 */

                public void run() {
                    ConnectionRecord connection = MediaBrowserServiceCompat.this.mConnections.get(callbacks.asBinder());
                    if (connection == null) {
                        Log.w(MediaBrowserServiceCompat.TAG, "addSubscription for callback that isn't registered id=" + id);
                    } else {
                        MediaBrowserServiceCompat.this.addSubscription(id, connection, token, options);
                    }
                }
            });
        }

        public void removeSubscription(final String id, final IBinder token, final ServiceCallbacks callbacks) {
            MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable() {
                /* class android.support.v4.media.MediaBrowserServiceCompat.ServiceBinderImpl.AnonymousClass4 */

                public void run() {
                    ConnectionRecord connection = MediaBrowserServiceCompat.this.mConnections.get(callbacks.asBinder());
                    if (connection == null) {
                        Log.w(MediaBrowserServiceCompat.TAG, "removeSubscription for callback that isn't registered id=" + id);
                    } else if (!MediaBrowserServiceCompat.this.removeSubscription(id, connection, token)) {
                        Log.w(MediaBrowserServiceCompat.TAG, "removeSubscription called for " + id + " which is not subscribed");
                    }
                }
            });
        }

        public void getMediaItem(final String mediaId, final ResultReceiver receiver, final ServiceCallbacks callbacks) {
            if (!TextUtils.isEmpty(mediaId) && receiver != null) {
                MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable() {
                    /* class android.support.v4.media.MediaBrowserServiceCompat.ServiceBinderImpl.AnonymousClass5 */

                    public void run() {
                        ConnectionRecord connection = MediaBrowserServiceCompat.this.mConnections.get(callbacks.asBinder());
                        if (connection == null) {
                            Log.w(MediaBrowserServiceCompat.TAG, "getMediaItem for callback that isn't registered id=" + mediaId);
                        } else {
                            MediaBrowserServiceCompat.this.performLoadItem(mediaId, connection, receiver);
                        }
                    }
                });
            }
        }

        public void registerCallbacks(final ServiceCallbacks callbacks, final Bundle rootHints) {
            MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable() {
                /* class android.support.v4.media.MediaBrowserServiceCompat.ServiceBinderImpl.AnonymousClass6 */

                public void run() {
                    IBinder b = callbacks.asBinder();
                    MediaBrowserServiceCompat.this.mConnections.remove(b);
                    ConnectionRecord connection = new ConnectionRecord();
                    connection.callbacks = callbacks;
                    connection.rootHints = rootHints;
                    MediaBrowserServiceCompat.this.mConnections.put(b, connection);
                }
            });
        }

        public void unregisterCallbacks(final ServiceCallbacks callbacks) {
            MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable() {
                /* class android.support.v4.media.MediaBrowserServiceCompat.ServiceBinderImpl.AnonymousClass7 */

                public void run() {
                    MediaBrowserServiceCompat.this.mConnections.remove(callbacks.asBinder());
                }
            });
        }
    }

    private class ServiceCallbacksCompat implements ServiceCallbacks {
        final Messenger mCallbacks;

        ServiceCallbacksCompat(Messenger callbacks) {
            this.mCallbacks = callbacks;
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.ServiceCallbacks
        public IBinder asBinder() {
            return this.mCallbacks.getBinder();
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.ServiceCallbacks
        public void onConnect(String root, MediaSessionCompat.Token session, Bundle extras) throws RemoteException {
            if (extras == null) {
                extras = new Bundle();
            }
            extras.putInt(MediaBrowserProtocol.EXTRA_SERVICE_VERSION, 1);
            Bundle data = new Bundle();
            data.putString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID, root);
            data.putParcelable(MediaBrowserProtocol.DATA_MEDIA_SESSION_TOKEN, session);
            data.putBundle(MediaBrowserProtocol.DATA_ROOT_HINTS, extras);
            sendRequest(1, data);
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.ServiceCallbacks
        public void onConnectFailed() throws RemoteException {
            sendRequest(2, null);
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.ServiceCallbacks
        public void onLoadChildren(String mediaId, List<MediaBrowserCompat.MediaItem> list, Bundle options) throws RemoteException {
            Bundle data = new Bundle();
            data.putString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID, mediaId);
            data.putBundle(MediaBrowserProtocol.DATA_OPTIONS, options);
            if (list != null) {
                data.putParcelableArrayList(MediaBrowserProtocol.DATA_MEDIA_ITEM_LIST, list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list));
            }
            sendRequest(3, data);
        }

        private void sendRequest(int what, Bundle data) throws RemoteException {
            Message msg = Message.obtain();
            msg.what = what;
            msg.arg1 = 1;
            msg.setData(data);
            this.mCallbacks.send(msg);
        }
    }

    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 24 || BuildCompat.isAtLeastN()) {
            this.mImpl = new MediaBrowserServiceImplApi24();
        } else if (Build.VERSION.SDK_INT >= 23) {
            this.mImpl = new MediaBrowserServiceImplApi23();
        } else if (Build.VERSION.SDK_INT >= 21) {
            this.mImpl = new MediaBrowserServiceImplApi21();
        } else {
            this.mImpl = new MediaBrowserServiceImplBase();
        }
        this.mImpl.onCreate();
    }

    public IBinder onBind(Intent intent) {
        return this.mImpl.onBind(intent);
    }

    public void dump(FileDescriptor fd, PrintWriter writer, String[] args) {
    }

    public void onLoadChildren(@NonNull String parentId, @NonNull Result<List<MediaBrowserCompat.MediaItem>> result, @NonNull Bundle options) {
        result.setFlags(1);
        onLoadChildren(parentId, result);
    }

    public void onLoadItem(String itemId, Result<MediaBrowserCompat.MediaItem> result) {
        result.setFlags(2);
        result.sendResult(null);
    }

    public void setSessionToken(MediaSessionCompat.Token token) {
        if (token == null) {
            throw new IllegalArgumentException("Session token may not be null.");
        } else if (this.mSession != null) {
            throw new IllegalStateException("The session token has already been set.");
        } else {
            this.mSession = token;
            this.mImpl.setSessionToken(token);
        }
    }

    @Nullable
    public MediaSessionCompat.Token getSessionToken() {
        return this.mSession;
    }

    public final Bundle getBrowserRootHints() {
        return this.mImpl.getBrowserRootHints();
    }

    public void notifyChildrenChanged(@NonNull String parentId) {
        if (parentId == null) {
            throw new IllegalArgumentException("parentId cannot be null in notifyChildrenChanged");
        }
        this.mImpl.notifyChildrenChanged(parentId, null);
    }

    public void notifyChildrenChanged(@NonNull String parentId, @NonNull Bundle options) {
        if (parentId == null) {
            throw new IllegalArgumentException("parentId cannot be null in notifyChildrenChanged");
        } else if (options == null) {
            throw new IllegalArgumentException("options cannot be null in notifyChildrenChanged");
        } else {
            this.mImpl.notifyChildrenChanged(parentId, options);
        }
    }

    /* access modifiers changed from: package-private */
    public boolean isValidPackage(String pkg, int uid) {
        if (pkg == null) {
            return false;
        }
        for (String str : getPackageManager().getPackagesForUid(uid)) {
            if (str.equals(pkg)) {
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public void addSubscription(String id, ConnectionRecord connection, IBinder token, Bundle options) {
        List<Pair<IBinder, Bundle>> callbackList = connection.subscriptions.get(id);
        if (callbackList == null) {
            callbackList = new ArrayList<>();
        }
        for (Pair<IBinder, Bundle> callback : callbackList) {
            if (token == callback.first && MediaBrowserCompatUtils.areSameOptions(options, callback.second)) {
                return;
            }
        }
        callbackList.add(new Pair<>(token, options));
        connection.subscriptions.put(id, callbackList);
        performLoadChildren(id, connection, options);
    }

    /* access modifiers changed from: package-private */
    public boolean removeSubscription(String id, ConnectionRecord connection, IBinder token) {
        if (token != null) {
            boolean removed = false;
            List<Pair<IBinder, Bundle>> callbackList = connection.subscriptions.get(id);
            if (callbackList != null) {
                Iterator<Pair<IBinder, Bundle>> iter = callbackList.iterator();
                while (iter.hasNext()) {
                    if (token == iter.next().first) {
                        removed = true;
                        iter.remove();
                    }
                }
                if (callbackList.size() == 0) {
                    connection.subscriptions.remove(id);
                }
            }
            return removed;
        } else if (connection.subscriptions.remove(id) != null) {
            return true;
        } else {
            return false;
        }
    }

    /* access modifiers changed from: package-private */
    public void performLoadChildren(final String parentId, final ConnectionRecord connection, final Bundle options) {
        Result<List<MediaBrowserCompat.MediaItem>> result = new Result<List<MediaBrowserCompat.MediaItem>>(parentId) {
            /* class android.support.v4.media.MediaBrowserServiceCompat.AnonymousClass1 */

            /* access modifiers changed from: package-private */
            public void onResultSent(List<MediaBrowserCompat.MediaItem> list, int flags) {
                List<MediaBrowserCompat.MediaItem> filteredList;
                if (MediaBrowserServiceCompat.this.mConnections.get(connection.callbacks.asBinder()) == connection) {
                    if ((flags & 1) != 0) {
                        filteredList = MediaBrowserServiceCompat.this.applyOptions(list, options);
                    } else {
                        filteredList = list;
                    }
                    try {
                        connection.callbacks.onLoadChildren(parentId, filteredList, options);
                    } catch (RemoteException e) {
                        Log.w(MediaBrowserServiceCompat.TAG, "Calling onLoadChildren() failed for id=" + parentId + " package=" + connection.pkg);
                    }
                } else if (MediaBrowserServiceCompat.DEBUG) {
                    Log.d(MediaBrowserServiceCompat.TAG, "Not sending onLoadChildren result for connection that has been disconnected. pkg=" + connection.pkg + " id=" + parentId);
                }
            }
        };
        this.mCurConnection = connection;
        if (options == null) {
            onLoadChildren(parentId, result);
        } else {
            onLoadChildren(parentId, result, options);
        }
        this.mCurConnection = null;
        if (!result.isDone()) {
            throw new IllegalStateException("onLoadChildren must call detach() or sendResult() before returning for package=" + connection.pkg + " id=" + parentId);
        }
    }

    /* access modifiers changed from: package-private */
    public List<MediaBrowserCompat.MediaItem> applyOptions(List<MediaBrowserCompat.MediaItem> list, Bundle options) {
        if (list == null) {
            return null;
        }
        int page = options.getInt(MediaBrowserCompat.EXTRA_PAGE, -1);
        int pageSize = options.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1);
        if (page == -1 && pageSize == -1) {
            return list;
        }
        int fromIndex = pageSize * page;
        int toIndex = fromIndex + pageSize;
        if (page < 0 || pageSize < 1 || fromIndex >= list.size()) {
            return Collections.EMPTY_LIST;
        }
        if (toIndex > list.size()) {
            toIndex = list.size();
        }
        return list.subList(fromIndex, toIndex);
    }

    /* access modifiers changed from: package-private */
    public void performLoadItem(String itemId, ConnectionRecord connection, final ResultReceiver receiver) {
        Result<MediaBrowserCompat.MediaItem> result = new Result<MediaBrowserCompat.MediaItem>(itemId) {
            /* class android.support.v4.media.MediaBrowserServiceCompat.AnonymousClass2 */

            /* access modifiers changed from: package-private */
            public void onResultSent(MediaBrowserCompat.MediaItem item, int flags) {
                if ((flags & 2) != 0) {
                    receiver.send(-1, null);
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putParcelable(MediaBrowserServiceCompat.KEY_MEDIA_ITEM, item);
                receiver.send(0, bundle);
            }
        };
        this.mCurConnection = connection;
        onLoadItem(itemId, result);
        this.mCurConnection = null;
        if (!result.isDone()) {
            throw new IllegalStateException("onLoadItem must call detach() or sendResult() before returning for id=" + itemId);
        }
    }

    public static final class BrowserRoot {
        public static final String EXTRA_OFFLINE = "android.service.media.extra.OFFLINE";
        public static final String EXTRA_RECENT = "android.service.media.extra.RECENT";
        public static final String EXTRA_SUGGESTED = "android.service.media.extra.SUGGESTED";
        public static final String EXTRA_SUGGESTION_KEYWORDS = "android.service.media.extra.SUGGESTION_KEYWORDS";
        private final Bundle mExtras;
        private final String mRootId;

        public BrowserRoot(@NonNull String rootId, @Nullable Bundle extras) {
            if (rootId == null) {
                throw new IllegalArgumentException("The root id in BrowserRoot cannot be null. Use null for BrowserRoot instead.");
            }
            this.mRootId = rootId;
            this.mExtras = extras;
        }

        public String getRootId() {
            return this.mRootId;
        }

        public Bundle getExtras() {
            return this.mExtras;
        }
    }
}
