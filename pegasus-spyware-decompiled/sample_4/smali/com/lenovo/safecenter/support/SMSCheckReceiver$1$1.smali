.class final Lcom/lenovo/safecenter/support/SMSCheckReceiver$1$1;
.super Ljava/lang/Thread;
.source "SMSCheckReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/support/SMSCheckReceiver$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/support/SMSCheckReceiver$1;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/support/SMSCheckReceiver$1;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SMSCheckReceiver$1$1;->a:Lcom/lenovo/safecenter/support/SMSCheckReceiver$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 79
    iget-object v5, p0, Lcom/lenovo/safecenter/support/SMSCheckReceiver$1$1;->a:Lcom/lenovo/safecenter/support/SMSCheckReceiver$1;

    iget-object v5, v5, Lcom/lenovo/safecenter/support/SMSCheckReceiver$1;->a:Lcom/lenovo/safecenter/support/SMSCheckReceiver;

    invoke-static {v5}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->a(Lcom/lenovo/safecenter/support/SMSCheckReceiver;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    invoke-virtual {v5}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 80
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const-string v0, ""

    .line 81
    .local v0, "cmd":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 82
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v4, v5, v6

    .line 83
    .local v4, "pkg":Ljava/lang/String;
    const-string v5, "com.tencent.qqphonebook"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 84
    const-string v5, "test1"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "kill : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 86
    .local v3, "pid":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "kill "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " &\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v5, p0, Lcom/lenovo/safecenter/support/SMSCheckReceiver$1$1;->a:Lcom/lenovo/safecenter/support/SMSCheckReceiver$1;

    iget-object v5, v5, Lcom/lenovo/safecenter/support/SMSCheckReceiver$1;->a:Lcom/lenovo/safecenter/support/SMSCheckReceiver;

    invoke-static {v5}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->a(Lcom/lenovo/safecenter/support/SMSCheckReceiver;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/lenovo/safecenter/support/CMDHelper;->exeCmd(Landroid/content/Context;Ljava/lang/String;)Z

    .line 93
    .end local v3    # "pid":I
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_0
    return-void

    .line 81
    .restart local v4    # "pkg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
