.class final Lcom/lenovo/performancecenter/framework/LeemCenterReceiver$a;
.super Ljava/util/TimerTask;
.source "LeemCenterReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/framework/LeemCenterReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/framework/LeemCenterReceiver;


# direct methods
.method constructor <init>(Lcom/lenovo/performancecenter/framework/LeemCenterReceiver;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/lenovo/performancecenter/framework/LeemCenterReceiver$a;->a:Lcom/lenovo/performancecenter/framework/LeemCenterReceiver;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 220
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 221
    .local v0, "endTime":J
    const-string v2, "LeemCenterReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KillProcessTimerTask run...cost="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/performancecenter/framework/LeemCenterReceiver$a;->a:Lcom/lenovo/performancecenter/framework/LeemCenterReceiver;

    invoke-static {v4}, Lcom/lenovo/performancecenter/framework/LeemCenterReceiver;->a(Lcom/lenovo/performancecenter/framework/LeemCenterReceiver;)J

    move-result-wide v4

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v2, p0, Lcom/lenovo/performancecenter/framework/LeemCenterReceiver$a;->a:Lcom/lenovo/performancecenter/framework/LeemCenterReceiver;

    iget-object v2, p0, Lcom/lenovo/performancecenter/framework/LeemCenterReceiver$a;->a:Lcom/lenovo/performancecenter/framework/LeemCenterReceiver;

    invoke-static {v2}, Lcom/lenovo/performancecenter/framework/LeemCenterReceiver;->b(Lcom/lenovo/performancecenter/framework/LeemCenterReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/performancecenter/framework/LeemCenterReceiver;->a(Landroid/content/Context;)V

    .line 224
    return-void
.end method
