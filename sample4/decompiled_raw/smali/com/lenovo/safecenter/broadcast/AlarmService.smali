.class public Lcom/lenovo/safecenter/broadcast/AlarmService;
.super Landroid/app/Service;
.source "AlarmService.java"


# instance fields
.field private a:Landroid/media/MediaPlayer;

.field private b:Landroid/media/AudioManager;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/broadcast/AlarmService;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/broadcast/AlarmService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/broadcast/AlarmService;

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/lenovo/safecenter/broadcast/AlarmService;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/broadcast/AlarmService;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/broadcast/AlarmService;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/AlarmService;->b:Landroid/media/AudioManager;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 28
    const/high16 v0, 0x7f060000

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/broadcast/AlarmService;->a:Landroid/media/MediaPlayer;

    .line 29
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/broadcast/AlarmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/lenovo/safecenter/broadcast/AlarmService;->b:Landroid/media/AudioManager;

    .line 30
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 74
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/AlarmService;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/AlarmService;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 76
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/AlarmService;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 78
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/broadcast/AlarmService;->c:Z

    .line 79
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/4 v1, 0x1

    .line 33
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 44
    iput-boolean v1, p0, Lcom/lenovo/safecenter/broadcast/AlarmService;->c:Z

    .line 45
    new-instance v0, Lcom/lenovo/safecenter/broadcast/AlarmService$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/broadcast/AlarmService$1;-><init>(Lcom/lenovo/safecenter/broadcast/AlarmService;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/broadcast/AlarmService$1;->start()V

    .line 59
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/AlarmService;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/AlarmService;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/AlarmService;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/AlarmService;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 68
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/AlarmService;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 70
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 66
    :catch_1
    move-exception v0

    goto :goto_0
.end method
