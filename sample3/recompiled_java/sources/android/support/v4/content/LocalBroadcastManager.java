package android.support.v4.content;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

public final class LocalBroadcastManager {
    private static final boolean DEBUG = false;
    static final int MSG_EXEC_PENDING_BROADCASTS = 1;
    private static final String TAG = "LocalBroadcastManager";
    private static LocalBroadcastManager mInstance;
    private static final Object mLock = new Object();
    private final HashMap<String, ArrayList<ReceiverRecord>> mActions = new HashMap<>();
    private final Context mAppContext;
    private final Handler mHandler;
    private final ArrayList<BroadcastRecord> mPendingBroadcasts = new ArrayList<>();
    private final HashMap<BroadcastReceiver, ArrayList<IntentFilter>> mReceivers = new HashMap<>();

    /* access modifiers changed from: private */
    public static class ReceiverRecord {
        boolean broadcasting;
        final IntentFilter filter;
        final BroadcastReceiver receiver;

        ReceiverRecord(IntentFilter _filter, BroadcastReceiver _receiver) {
            this.filter = _filter;
            this.receiver = _receiver;
        }

        public String toString() {
            StringBuilder builder = new StringBuilder(128);
            builder.append("Receiver{");
            builder.append(this.receiver);
            builder.append(" filter=");
            builder.append(this.filter);
            builder.append("}");
            return builder.toString();
        }
    }

    /* access modifiers changed from: private */
    public static class BroadcastRecord {
        final Intent intent;
        final ArrayList<ReceiverRecord> receivers;

        BroadcastRecord(Intent _intent, ArrayList<ReceiverRecord> _receivers) {
            this.intent = _intent;
            this.receivers = _receivers;
        }
    }

    public static LocalBroadcastManager getInstance(Context context) {
        LocalBroadcastManager localBroadcastManager;
        synchronized (mLock) {
            if (mInstance == null) {
                mInstance = new LocalBroadcastManager(context.getApplicationContext());
            }
            localBroadcastManager = mInstance;
        }
        return localBroadcastManager;
    }

    private LocalBroadcastManager(Context context) {
        this.mAppContext = context;
        this.mHandler = new Handler(context.getMainLooper()) {
            /* class android.support.v4.content.LocalBroadcastManager.AnonymousClass1 */

            public void handleMessage(Message msg) {
                switch (msg.what) {
                    case 1:
                        LocalBroadcastManager.this.executePendingBroadcasts();
                        return;
                    default:
                        super.handleMessage(msg);
                        return;
                }
            }
        };
    }

    public void registerReceiver(BroadcastReceiver receiver, IntentFilter filter) {
        synchronized (this.mReceivers) {
            ReceiverRecord entry = new ReceiverRecord(filter, receiver);
            ArrayList<IntentFilter> filters = this.mReceivers.get(receiver);
            if (filters == null) {
                filters = new ArrayList<>(1);
                this.mReceivers.put(receiver, filters);
            }
            filters.add(filter);
            for (int i = 0; i < filter.countActions(); i++) {
                String action = filter.getAction(i);
                ArrayList<ReceiverRecord> entries = this.mActions.get(action);
                if (entries == null) {
                    entries = new ArrayList<>(1);
                    this.mActions.put(action, entries);
                }
                entries.add(entry);
            }
        }
    }

    public void unregisterReceiver(BroadcastReceiver receiver) {
        synchronized (this.mReceivers) {
            ArrayList<IntentFilter> filters = this.mReceivers.remove(receiver);
            if (filters != null) {
                for (int i = 0; i < filters.size(); i++) {
                    IntentFilter filter = filters.get(i);
                    for (int j = 0; j < filter.countActions(); j++) {
                        String action = filter.getAction(j);
                        ArrayList<ReceiverRecord> receivers = this.mActions.get(action);
                        if (receivers != null) {
                            int k = 0;
                            while (k < receivers.size()) {
                                if (receivers.get(k).receiver == receiver) {
                                    receivers.remove(k);
                                    k--;
                                }
                                k++;
                            }
                            if (receivers.size() <= 0) {
                                this.mActions.remove(action);
                            }
                        }
                    }
                }
            }
        }
    }

    public boolean sendBroadcast(Intent intent) {
        String reason;
        synchronized (this.mReceivers) {
            String action = intent.getAction();
            String type = intent.resolveTypeIfNeeded(this.mAppContext.getContentResolver());
            Uri data = intent.getData();
            String scheme = intent.getScheme();
            Set<String> categories = intent.getCategories();
            boolean debug = (intent.getFlags() & 8) != 0;
            if (debug) {
                Log.v(TAG, "Resolving type " + type + " scheme " + scheme + " of intent " + intent);
            }
            ArrayList<ReceiverRecord> entries = this.mActions.get(intent.getAction());
            if (entries != null) {
                if (debug) {
                    Log.v(TAG, "Action list: " + entries);
                }
                ArrayList<ReceiverRecord> receivers = null;
                for (int i = 0; i < entries.size(); i++) {
                    ReceiverRecord receiver = entries.get(i);
                    if (debug) {
                        Log.v(TAG, "Matching against filter " + receiver.filter);
                    }
                    if (!receiver.broadcasting) {
                        int match = receiver.filter.match(action, type, scheme, data, categories, TAG);
                        if (match >= 0) {
                            if (debug) {
                                Log.v(TAG, "  Filter matched!  match=0x" + Integer.toHexString(match));
                            }
                            if (receivers == null) {
                                receivers = new ArrayList<>();
                            }
                            receivers.add(receiver);
                            receiver.broadcasting = true;
                        } else if (debug) {
                            switch (match) {
                                case -4:
                                    reason = "category";
                                    break;
                                case -3:
                                    reason = "action";
                                    break;
                                case -2:
                                    reason = "data";
                                    break;
                                case -1:
                                    reason = "type";
                                    break;
                                default:
                                    reason = "unknown reason";
                                    break;
                            }
                            Log.v(TAG, "  Filter did not match: " + reason);
                        }
                    } else if (debug) {
                        Log.v(TAG, "  Filter's target already added");
                    }
                }
                if (receivers != null) {
                    for (int i2 = 0; i2 < receivers.size(); i2++) {
                        receivers.get(i2).broadcasting = false;
                    }
                    this.mPendingBroadcasts.add(new BroadcastRecord(intent, receivers));
                    if (!this.mHandler.hasMessages(1)) {
                        this.mHandler.sendEmptyMessage(1);
                    }
                    return true;
                }
            }
            return false;
        }
    }

    public void sendBroadcastSync(Intent intent) {
        if (sendBroadcast(intent)) {
            executePendingBroadcasts();
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x001d, code lost:
        if (r3 >= r2.length) goto L_0x0000;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x001f, code lost:
        r1 = r2[r3];
        r4 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0028, code lost:
        if (r4 >= r1.receivers.size()) goto L_0x0041;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x002a, code lost:
        r1.receivers.get(r4).receiver.onReceive(r8.mAppContext, r1.intent);
        r4 = r4 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0041, code lost:
        r3 = r3 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x001b, code lost:
        r3 = 0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void executePendingBroadcasts() {
        /*
            r8 = this;
        L_0x0000:
            r2 = 0
            java.util.HashMap<android.content.BroadcastReceiver, java.util.ArrayList<android.content.IntentFilter>> r6 = r8.mReceivers
            monitor-enter(r6)
            java.util.ArrayList<android.support.v4.content.LocalBroadcastManager$BroadcastRecord> r5 = r8.mPendingBroadcasts     // Catch:{ all -> 0x003e }
            int r0 = r5.size()     // Catch:{ all -> 0x003e }
            if (r0 > 0) goto L_0x000e
            monitor-exit(r6)     // Catch:{ all -> 0x003e }
            return
        L_0x000e:
            android.support.v4.content.LocalBroadcastManager$BroadcastRecord[] r2 = new android.support.v4.content.LocalBroadcastManager.BroadcastRecord[r0]     // Catch:{ all -> 0x003e }
            java.util.ArrayList<android.support.v4.content.LocalBroadcastManager$BroadcastRecord> r5 = r8.mPendingBroadcasts     // Catch:{ all -> 0x003e }
            r5.toArray(r2)     // Catch:{ all -> 0x003e }
            java.util.ArrayList<android.support.v4.content.LocalBroadcastManager$BroadcastRecord> r5 = r8.mPendingBroadcasts     // Catch:{ all -> 0x003e }
            r5.clear()     // Catch:{ all -> 0x003e }
            monitor-exit(r6)     // Catch:{ all -> 0x003e }
            r3 = 0
        L_0x001c:
            int r5 = r2.length
            if (r3 >= r5) goto L_0x0000
            r1 = r2[r3]
            r4 = 0
        L_0x0022:
            java.util.ArrayList<android.support.v4.content.LocalBroadcastManager$ReceiverRecord> r5 = r1.receivers
            int r5 = r5.size()
            if (r4 >= r5) goto L_0x0041
            java.util.ArrayList<android.support.v4.content.LocalBroadcastManager$ReceiverRecord> r5 = r1.receivers
            java.lang.Object r5 = r5.get(r4)
            android.support.v4.content.LocalBroadcastManager$ReceiverRecord r5 = (android.support.v4.content.LocalBroadcastManager.ReceiverRecord) r5
            android.content.BroadcastReceiver r5 = r5.receiver
            android.content.Context r6 = r8.mAppContext
            android.content.Intent r7 = r1.intent
            r5.onReceive(r6, r7)
            int r4 = r4 + 1
            goto L_0x0022
        L_0x003e:
            r5 = move-exception
            monitor-exit(r6)
            throw r5
        L_0x0041:
            int r3 = r3 + 1
            goto L_0x001c
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.content.LocalBroadcastManager.executePendingBroadcasts():void");
    }
}
