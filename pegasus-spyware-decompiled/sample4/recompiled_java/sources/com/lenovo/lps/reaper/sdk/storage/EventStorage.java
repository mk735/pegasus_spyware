package com.lenovo.lps.reaper.sdk.storage;

import com.lenovo.lps.reaper.sdk.api.CustomParameterManager;
import com.lenovo.lps.reaper.sdk.api.Event;
import com.lenovo.lps.reaper.sdk.api.EventDao;

public final class EventStorage {
    private EventDao a;
    private CustomParameterManager b = new CustomParameterManager();

    public final Event[] fetchEvents() {
        return this.a.getEvents();
    }

    public final Event[] fetchEvents(int count) {
        return this.a.getEvents(count);
    }

    public final void addEvent(Event event) {
        this.a.saveEvent(event);
    }

    public final void clearCustomParameter() {
        this.b.clear();
    }

    public final void initialize() {
        this.a.activeSession();
    }

    public final void setParam(int index, String name, String value) {
        this.b.setCustomParameter(index, name, value);
    }

    public final void setEventDao(EventDao eventDao) {
        this.a = eventDao;
    }

    public final void deleteEvents(Event[] events) {
        if (events != null && events.length > 0) {
            this.a.deleteEvents(events);
        }
    }

    public final int countEvent() {
        return this.a.countEvent();
    }

    public final boolean isEmpty() {
        return this.a.countEvent() == 0;
    }

    public final void truncate(long size) {
        try {
            this.a.truncate(size);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public final CustomParameterManager getCustomParamManager() {
        return this.b;
    }
}
