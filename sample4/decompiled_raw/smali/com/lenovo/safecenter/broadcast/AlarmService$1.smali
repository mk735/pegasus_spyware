.class final Lcom/lenovo/safecenter/broadcast/AlarmService$1;
.super Ljava/lang/Thread;
.source "AlarmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/broadcast/AlarmService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/broadcast/AlarmService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/broadcast/AlarmService;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lenovo/safecenter/broadcast/AlarmService$1;->a:Lcom/lenovo/safecenter/broadcast/AlarmService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 47
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/AlarmService$1;->a:Lcom/lenovo/safecenter/broadcast/AlarmService;

    invoke-static {v1}, Lcom/lenovo/safecenter/broadcast/AlarmService;->a(Lcom/lenovo/safecenter/broadcast/AlarmService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/AlarmService$1;->a:Lcom/lenovo/safecenter/broadcast/AlarmService;

    invoke-static {v1}, Lcom/lenovo/safecenter/broadcast/AlarmService;->b(Lcom/lenovo/safecenter/broadcast/AlarmService;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/broadcast/AlarmService$1;->a:Lcom/lenovo/safecenter/broadcast/AlarmService;

    invoke-static {v2}, Lcom/lenovo/safecenter/broadcast/AlarmService;->b(Lcom/lenovo/safecenter/broadcast/AlarmService;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 51
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 56
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
