package com.tencent.tmsecure.exception;

public class NetworkOnMainThreadException extends RuntimeException {
    private static final long a = 7308789257160725333L;
    private static final String b = "Network cannot run on main thread if the targetSDKVersion is over 9 please make sure not to invoke network relevant methods on the main thread or change the manifest targetSDKVersion to be under 10";

    public NetworkOnMainThreadException() {
        super(b);
    }

    public NetworkOnMainThreadException(String str) {
        super(str);
    }
}
