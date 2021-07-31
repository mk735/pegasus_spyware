package com.lenovo.lps.reaper.sdk.storage;

import com.lenovo.lps.reaper.sdk.AnalyticsTracker;
import com.lenovo.lps.reaper.sdk.api.CustomParameter;
import com.lenovo.lps.reaper.sdk.api.Event;
import com.lenovo.lps.reaper.sdk.api.EventDao;
import com.lenovo.lps.reaper.sdk.util.AnalyticsTrackerUtils;
import com.lenovo.lps.reaper.sdk.util.PlusUtil;
import com.lenovo.lps.reaper.sdk.util.TLog;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.security.SecureRandom;
import java.util.Random;

public class FileEventDaoImpl implements EventDao {
    private FileStorage a;
    private FileStorageMeta b;
    private ByteBuffer c = ByteBuffer.allocate(4096);
    private Random d = new Random(System.currentTimeMillis());

    @Override // com.lenovo.lps.reaper.sdk.api.EventDao
    public void activeSession() {
        try {
            this.a.initialize();
            ByteBuffer metaBuffer = ByteBuffer.allocate(4096);
            this.a.readRecord(metaBuffer);
            long currentTime = System.currentTimeMillis();
            synchronized (this.a) {
                if (this.b.load(metaBuffer)) {
                    TLog.v("FileEventDaoImpl", "DB load success (in activeSession())");
                    TLog.v("FileEventDaoImpl", "sessionID=" + this.b.getSessionId());
                    this.b.setPreviousView(this.b.getCurrentTime());
                    this.b.setCurrentTime(currentTime);
                    this.b.setSessionCounter(this.b.getSessionCounter() + 1);
                } else {
                    TLog.v("FileEventDaoImpl", "DB load false (in activeSession())");
                    this.b.setCurrentTime(currentTime);
                    this.b.setFirstView(currentTime);
                    this.b.setPreviousView(currentTime);
                    this.b.setSessionId(new SecureRandom().nextInt() & Integer.MAX_VALUE);
                    this.b.setSessionCounter(1);
                }
                flushMeta();
            }
        } catch (Exception e) {
            TLog.e("FileEventDaoImpl", "Error when initialize file storage. " + e.getMessage());
        }
    }

    @Override // com.lenovo.lps.reaper.sdk.api.EventDao
    public Event[] getEvents() {
        return getEvents(200);
    }

    @Override // com.lenovo.lps.reaper.sdk.api.EventDao
    public Event[] getEvents(int eventNum) {
        Event[] events;
        try {
            synchronized (this.a) {
                int eveNum = eventNum;
                if (eventNum > this.b.size()) {
                    eveNum = this.b.size();
                }
                events = new Event[eveNum];
                int index = this.b.tail();
                for (int i = 0; i < eveNum; i++) {
                    this.a.position(Long.valueOf((((long) index) * 4096) + 4096));
                    this.a.readRecord(this.c);
                    Event event = new Event(this.c.getLong(), this.c.getInt(), a(this.c), this.c.getInt(), this.c.getLong(), this.c.getLong(), this.c.getLong(), this.c.getLong(), this.c.getInt(), a(this.c), a(this.c), a(this.c), this.c.getInt(), this.c.getInt(), a(this.c), a(this.c));
                    readCustomParameters(this.c, event);
                    index = this.b.next(index);
                    events[i] = event;
                }
                if (TLog.isTestMode()) {
                    TLog.i("SendingEvent", "Sending......");
                    int length = events.length;
                    for (int i$ = 0; i$ < length; i$++) {
                        Event event2 = events[i$];
                        TLog.v("SendingEvent", " ");
                        TLog.v("SendingEvent", event2.toStringFull());
                        if (event2.getCustomParameters() != null) {
                            CustomParameter[] arr$ = event2.getCustomParameters();
                            int len$ = arr$.length;
                            for (int i$2 = 0; i$2 < len$; i$2++) {
                                CustomParameter param = arr$[i$2];
                                TLog.d("SendingEvent", "The Event Param:  [Index]" + param.getIndex() + " [Name]" + param.getName() + " [Value]" + param.getValue());
                            }
                        }
                    }
                }
            }
            return events;
        } catch (Exception ex) {
            TLog.e("FileEventDaoImpl", "Error when fetch Event object from storage. " + ex.getMessage());
            return null;
        }
    }

    /* access modifiers changed from: protected */
    public void readCustomParameters(ByteBuffer buf, Event event) {
        int paramNum = buf.getInt();
        if (paramNum > 0 && paramNum <= 5) {
            CustomParameter[] params = new CustomParameter[paramNum];
            for (int i = 0; i < paramNum; i++) {
                params[i] = new CustomParameter(buf.getInt(), a(buf), a(buf), buf.getInt());
            }
            event.setCustomParameters(params);
        }
    }

    @Override // com.lenovo.lps.reaper.sdk.api.EventDao
    public void saveEvent(Event event) {
        TLog.v("FileEventDaoImpl", "SavingEvent.");
        try {
            synchronized (this.a) {
                if (this.b.full()) {
                    TLog.d("FileEventDaoImpl", "Index of " + this.b.pull() + " has been deleted");
                }
                this.a.position(Long.valueOf((((long) this.b.head()) * 4096) + 4096));
                this.c.clear();
                this.c.putLong(this.b.nextId()).putInt(this.b.getSessionId());
                a(this.c, event.getAccount());
                this.c.putInt(Integer.valueOf(this.d.nextInt(Integer.MAX_VALUE)).intValue()).putLong(this.b.getFirstView()).putLong(this.b.getPreviousView()).putLong(this.b.getCurrentTime()).putLong(event.getTimestampEvent()).putInt(this.b.getSessionCounter());
                a(this.c, event.getCategory());
                a(this.c, event.getAction());
                a(this.c, event.getLabel());
                this.c.putInt(event.getValue());
                this.c.putInt(PlusUtil.NetworkStatus.getNetworkStatus());
                a(this.c, AnalyticsTracker.getInstance().getUserId());
                a(this.c, AnalyticsTracker.getInstance().getUserIdClass());
                a(this.c, event.getCustomParameters());
                this.c.flip();
                this.a.writeRecord(this.c);
                this.b.offer();
                flushMeta();
            }
        } catch (BufferOverflowException e) {
            TLog.e("FileEventDaoImpl", "Event Infomation is Too Long Than " + this.c.capacity());
        } catch (Exception ex) {
            TLog.e("FileEventDaoImpl", "Error when save Event object to storage. " + ex.getClass() + ", " + ex.getMessage());
        }
    }

    private static void a(ByteBuffer buf, CustomParameter[] customParameters) {
        if (customParameters == null || customParameters.length <= 0) {
            buf.putInt(0);
            return;
        }
        buf.putInt(customParameters.length);
        for (CustomParameter param : customParameters) {
            buf.putInt(param.getIndex());
            a(buf, param.getName());
            a(buf, param.getValue());
            buf.putInt(param.getScope());
        }
    }

    /* access modifiers changed from: protected */
    public void flushMeta() throws IOException {
        this.a.position(0L);
        this.a.writeRecord(this.b.byteBuffer());
        this.a.flush();
    }

    private static void a(ByteBuffer buf, String str) {
        if (str == null) {
            buf.putInt(-1);
            return;
        }
        byte[] bytes = str.getBytes();
        buf.putInt(bytes.length);
        buf.put(bytes);
    }

    private static String a(ByteBuffer buf) {
        int size = buf.getInt();
        if (size == -1 || size > 4096) {
            return null;
        }
        byte[] bytes = new byte[size];
        buf.get(bytes);
        return new String(bytes);
    }

    @Override // com.lenovo.lps.reaper.sdk.api.EventDao
    public int countEvent() {
        return this.b.size();
    }

    @Override // com.lenovo.lps.reaper.sdk.api.EventDao
    public boolean deleteEvents(Event[] events) {
        AnalyticsTrackerUtils.push("deleteEvents");
        try {
            synchronized (this.a) {
                if (events != null) {
                    for (int i = 0; i < events.length; i++) {
                        this.b.pull();
                    }
                }
                flushMeta();
            }
            AnalyticsTrackerUtils.pop();
            return true;
        } catch (IOException e) {
            TLog.e("FileEventDaoImpl", "Error when delete events. " + e.getMessage());
            AnalyticsTrackerUtils.pop();
            return false;
        } catch (Throwable th) {
            AnalyticsTrackerUtils.pop();
            throw th;
        }
    }

    public void setFileStorage(FileStorage fileStorage) {
        this.a = fileStorage;
    }

    public void setMeta(FileStorageMeta meta) {
        this.b = meta;
    }

    @Override // com.lenovo.lps.reaper.sdk.api.EventDao
    public void truncate(long size) {
        try {
            this.a.truncate(size);
        } catch (IOException e) {
            TLog.e("FileEventDaoImpl", "Error when truncate storage file. " + e.getMessage());
        }
    }
}
