.class public final Ltms/p;
.super Ljava/lang/Object;


# static fields
.field private static c:Ltms/p;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "LQQPIM/CloudInfo;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ltms/af;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Ltms/p;->c:Ltms/p;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Ltms/p;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltms/p;->e:Z

    iput-object p1, p0, Ltms/p;->a:Landroid/content/Context;

    new-instance v0, Ltms/af;

    const-string v1, "wup"

    invoke-direct {v0, v1}, Ltms/af;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltms/p;->d:Ltms/af;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ltms/p;
    .locals 2

    const-class v1, Ltms/p;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltms/p;->c:Ltms/p;

    if-nez v0, :cond_0

    new-instance v0, Ltms/p;

    invoke-direct {v0, p0}, Ltms/p;-><init>(Landroid/content/Context;)V

    sput-object v0, Ltms/p;->c:Ltms/p;

    :cond_0
    sget-object v0, Ltms/p;->c:Ltms/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized a(LQQPIM/CloudInfo;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, LQQPIM/CloudInfo;->getCloudcmds()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/CloudCmd;

    invoke-virtual {p0, p1, v0}, Ltms/p;->a(LQQPIM/CloudInfo;LQQPIM/CloudCmd;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(LQQPIM/CloudInfo;LQQPIM/CloudCmd;)I
    .locals 7

    const/4 v1, 0x0

    const/4 v2, -0x5

    new-instance v0, Lcom/qq/jce/wup/UniAttribute;

    invoke-direct {v0}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Lcom/qq/jce/wup/UniAttribute;->setEncodeName(Ljava/lang/String;)V

    invoke-virtual {p2}, LQQPIM/CloudCmd;->getParam()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/qq/jce/wup/UniAttribute;->decode([B)V

    invoke-virtual {p2}, LQQPIM/CloudCmd;->getCmdid()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    return v2

    :sswitch_0
    const-string v3, "cloudcmd"

    new-instance v4, LQQPIM/DeleteFileInfo;

    invoke-direct {v4}, LQQPIM/DeleteFileInfo;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/DeleteFileInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LQQPIM/DeleteFileInfo;->getFile()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Ltms/p;->a:Landroid/content/Context;

    invoke-static {v3, v0}, Ltms/q;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :sswitch_1
    const-string v3, "cloudcmd"

    new-instance v4, LQQPIM/InstallInfo;

    invoke-direct {v4}, LQQPIM/InstallInfo;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/InstallInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LQQPIM/InstallInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ltms/p;->a:Landroid/content/Context;

    const-string v5, "temp.apk"

    const/4 v6, 0x1

    invoke-static {v4, v3, v5, v6}, Ltms/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, LQQPIM/InstallInfo;->getOption()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    :cond_1
    move v1, v2

    :goto_2
    move v2, v1

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Ltms/p;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ltms/p;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/temp.apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ltms/q;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :sswitch_3
    iget-object v0, p0, Ltms/p;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ltms/p;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/temp.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ltms/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :sswitch_4
    const-string v3, "cloudcmd"

    new-instance v4, LQQPIM/KillProcessInfo;

    invoke-direct {v4}, LQQPIM/KillProcessInfo;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/KillProcessInfo;

    if-eqz v0, :cond_0

    iget-object v3, p0, Ltms/p;->a:Landroid/content/Context;

    invoke-virtual {v0}, LQQPIM/KillProcessInfo;->getProcess()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ltms/q;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    goto/16 :goto_0

    :sswitch_5
    const-string v3, "cloudcmd"

    new-instance v4, LQQPIM/UninstallInfo;

    invoke-direct {v4}, LQQPIM/UninstallInfo;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/UninstallInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LQQPIM/UninstallInfo;->getOption()I

    move-result v3

    sparse-switch v3, :sswitch_data_2

    goto/16 :goto_0

    :sswitch_6
    iget-object v2, p0, Ltms/p;->a:Landroid/content/Context;

    invoke-virtual {v0}, LQQPIM/UninstallInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ltms/q;->d(Landroid/content/Context;Ljava/lang/String;)V

    move v2, v1

    goto/16 :goto_0

    :sswitch_7
    iget-object v3, p0, Ltms/p;->a:Landroid/content/Context;

    invoke-virtual {v0}, LQQPIM/UninstallInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ltms/q;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    goto/16 :goto_0

    :sswitch_8
    const-string v3, "cloudcmd"

    new-instance v4, LQQPIM/OpenLinkInfo;

    invoke-direct {v4}, LQQPIM/OpenLinkInfo;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/OpenLinkInfo;

    if-eqz v0, :cond_0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, LQQPIM/OpenLinkInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Ltms/p;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v2, v1

    goto/16 :goto_0

    :sswitch_9
    const-string v3, "cloudcmd"

    new-instance v4, LQQPIM/ExecShell;

    invoke-direct {v4}, LQQPIM/ExecShell;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/ExecShell;

    if-eqz v0, :cond_0

    iget-object v3, p0, Ltms/p;->a:Landroid/content/Context;

    invoke-virtual {v0}, LQQPIM/ExecShell;->getShellcmd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ltms/q;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x3 -> :sswitch_4
        0x4 -> :sswitch_0
        0x6 -> :sswitch_1
        0x9 -> :sswitch_9
        0x65 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_6
        0x5 -> :sswitch_7
    .end sparse-switch
.end method

.method public final declared-synchronized a()V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltms/p;->d:Ltms/af;

    const-string v1, "key_last_verify_success"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ltms/af;->a(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Ltms/p;->d:Ltms/af;

    const-string v2, "key_last_verify_time"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ltms/af;->a(Ljava/lang/String;J)J

    move-result-wide v1

    iget-object v3, p0, Ltms/p;->d:Ltms/af;

    const-string v4, "key_next_verify_time"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Ltms/af;->a(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    if-eqz v0, :cond_0

    const-wide/32 v7, 0xea60

    add-long/2addr v3, v7

    cmp-long v0, v5, v3

    if-gtz v0, :cond_0

    sub-long v0, v5, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x240c8400

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getSecureServiceClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ltms/p;->a:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getSecureServiceClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action_verify"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Ltms/p;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .locals 7

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Ltms/p;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/CloudInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LQQPIM/CloudInfo;->getTime()LQQPIM/TimeCtrl;

    move-result-object v3

    invoke-virtual {v3}, LQQPIM/TimeCtrl;->getTime()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/CloudInfo;

    invoke-virtual {v0}, LQQPIM/CloudInfo;->getTime()LQQPIM/TimeCtrl;

    move-result-object v1

    invoke-virtual {v0}, LQQPIM/CloudInfo;->getTime()LQQPIM/TimeCtrl;

    move-result-object v3

    invoke-virtual {v3}, LQQPIM/TimeCtrl;->getValidEndTime()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v1}, LQQPIM/TimeCtrl;->getValidEndTime()I

    move-result v1

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-gez v1, :cond_4

    :cond_2
    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_5

    :cond_3
    :goto_3
    :sswitch_0
    iget-object v1, p0, Ltms/p;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, LQQPIM/CloudInfo;->getTips()LQQPIM/TipsInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, LQQPIM/TipsInfo;->getType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_3

    :sswitch_1
    invoke-direct {p0, v0}, Ltms/p;->a(LQQPIM/CloudInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_6
    monitor-exit p0

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x6 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public final b()I
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-boolean v0, p0, Ltms/p;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    iput-boolean v9, p0, Ltms/p;->e:Z

    const-string v0, "softversion"

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "build"

    invoke-static {v1}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v1

    const-string v2, "product"

    invoke-static {v2}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildno="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&version="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&productid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, LQQPIM/ClientVersionInfo;

    const/16 v3, 0x8

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v0}, LQQPIM/ClientVersionInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v1, v3}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getUpdatesV2(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v8, p0, Ltms/p;->e:Z

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/ServerCmdInfo;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getSecureServiceClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltms/p;->a:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Ltms/p;->a:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getSecureServiceClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "action_verify"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Ltms/p;->a:Landroid/content/Context;

    invoke-static {v4, v8, v3, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, LQQPIM/ServerCmdInfo;->getNextcheckinterval()I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v1, v9, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    iget-object v1, p0, Ltms/p;->d:Ltms/af;

    const-string v3, "key_next_verify_time"

    invoke-virtual {v1, v3, v4, v5, v9}, Ltms/af;->a(Ljava/lang/String;JZ)V

    iget-object v1, p0, Ltms/p;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iget-object v1, p0, Ltms/p;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, LQQPIM/ServerCmdInfo;->getCloudinfos()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, v9}, Ltms/p;->a(I)V

    :cond_2
    iput-boolean v8, p0, Ltms/p;->e:Z

    move v0, v2

    goto/16 :goto_0
.end method
