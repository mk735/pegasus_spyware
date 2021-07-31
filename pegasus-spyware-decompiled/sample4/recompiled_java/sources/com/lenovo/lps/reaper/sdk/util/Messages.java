package com.lenovo.lps.reaper.sdk.util;

public interface Messages {
    public static final String ACTIVITY_CONTEXT_MESSAGE = "context of trackResume/Pause should not be null.";
    public static final String ACTIVITY_EVENT_ACTION_MESSAGE = "action of activity event should not be null or empty.";
    public static final String APPLICATION_TOKER_MESSAGE = "application token should not be null or empty.";
    public static final String APPLICATION_VERSION_NAME_MESSAGE = "version name of application should not be null or empty.";
    public static final String CUSTOM_PARAMETER_INDEX_MESSAGE = "index of custom parameter should greater than %s and less than %s.";
    public static final String CUSTOM_PARAMETER_LENGTH_MESSAGE = "length of custom parameter(name and value) should less than %s.";
    public static final String CUSTOM_PARAMETER_NAME_MESSAGE = "name of custom parameter should not be null or empty.";
    public static final String CUSTOM_PARAMETER_VALUE_MESSAGE = "value of custom parameter should not be null or empty.";
    public static final String DEVICE_NEED_NOT_SEND = "the Device is NOT need send any Event.";
    public static final String EVENT_ACTION_MESSAGE = "action of event should not be null or empty.";
    public static final String EVENT_CATEGORY_MESSAGE = "categoty of event should not be null or empty.";
    public static final String EVENT_NEED_NOT_SEND = "the Event is NOT need send.";
    public static final String NOT_INITIAL_MESSAGE = "please Call initialize() of AnalyticsTracker Once, before use it.";
    public static final String REAPER_SERVER_URL_INVALID_MESSAGE = "reaper server url is invalid.";
    public static final String REAPER_SERVER_URL_MESSAGE = "reaper server url should not be null or empty.";
    public static final String THROWABLE_EVENT_ACTION_MESSAGE = "action of throwable event should not be null or empty. OR flag is not appropriate";
}
