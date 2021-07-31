.class final Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast$1;
.super Ljava/lang/Thread;
.source "HarassLogBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast$1;->e:Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast;

    iput-object p2, p0, Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast$1;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast$1;->b:Landroid/content/Context;

    const-string v1, "0"

    iget-object v2, p0, Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast$1;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast$1;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/safecenter/utils/MyUtils;->showScanVirusNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast$1;->b:Landroid/content/Context;

    const/16 v1, 0x110

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/utils/MyUtils;->cancelNotification(Landroid/content/Context;I)V

    .line 108
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast$1;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/broadcast/HarassLogBroadcast$1;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/safecenter/utils/MyUtils;->showScanVirusNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
