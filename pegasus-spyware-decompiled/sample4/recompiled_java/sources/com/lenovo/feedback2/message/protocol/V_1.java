package com.lenovo.feedback2.message.protocol;

public enum V_1 implements HeaderNames {
    AppName,
    PackageName,
    VersionCode,
    VersionName,
    Pic,
    StackTrace,
    BroadCastId,
    ResponseCode;
    
    public static final int protocolVersion = 1;

    @Override // com.lenovo.feedback2.message.protocol.HeaderNames
    public final int getProtocolVersion() {
        return 1;
    }
}
