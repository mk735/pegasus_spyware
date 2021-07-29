.class public final Ltms/as;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "LQQPIM/SoftList;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/tencent/tmsecure/module/software/SoftwareManager;

.field private c:Lcom/tencent/tmsecure/module/update/IUpdateObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ltms/as;->a:Ljava/util/HashMap;

    new-instance v0, Ltms/j;

    invoke-direct {v0, p0}, Ltms/j;-><init>(Ltms/as;)V

    iput-object v0, p0, Ltms/as;->c:Lcom/tencent/tmsecure/module/update/IUpdateObserver;

    return-void
.end method

.method private static a(LQQPIM/SoftListType;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, LQQPIM/SoftListType;->value()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->WHITELIST_COMMON_NAME:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->ROM_THIRDPART_NAME:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->WHITELIST_UNUSUAL_NAME:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->BLACKLIST_ROM_NAME:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->BLACKLIST_WITHPLUGIN_NAME:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->WHITELIST_ROM_NAME:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic a(Ltms/as;LQQPIM/SoftListType;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Ltms/as;->a:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, LQQPIM/SoftListType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ltms/as;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltms/as;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ltms/as;->a(LQQPIM/SoftListType;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ltms/as;->b(Ljava/lang/String;Ljava/lang/String;)LQQPIM/SoftList;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;LQQPIM/SoftList;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p2, LQQPIM/SoftList;->vctSofts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/SoftElementInfo;

    iget-object v3, v0, LQQPIM/SoftElementInfo;->pkgname:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    iget-object v3, v0, LQQPIM/SoftElementInfo;->pkgname:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, LQQPIM/SoftElementInfo;->cert:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Ltms/as;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_2
    iget-object v1, v0, LQQPIM/SoftElementInfo;->cert:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, LQQPIM/SoftElementInfo;->pkgname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, v0, LQQPIM/SoftElementInfo;->cert:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Ltms/as;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Ltms/as;->b:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "signatureCermMD5"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "signatureCermMD5"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)LQQPIM/SoftList;
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v1}, Ltms/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v2}, Ltms/u;->a(Ljava/io/InputStream;)Ltms/t;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    invoke-static {v3}, Ltms/ae;->a([B)[B

    move-result-object v4

    invoke-static {v4}, Ltms/r;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ltms/t;->c()[B

    move-result-object v0

    invoke-static {v0}, Ltms/r;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/tencent/tccdb/TccCryptor;->decrypt(Landroid/content/Context;[B[B)[B

    move-result-object v0

    new-instance v3, Lcom/qq/jce/wup/UniAttribute;

    invoke-direct {v3}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    invoke-virtual {v3, v0}, Lcom/qq/jce/wup/UniAttribute;->decode([B)V

    new-instance v0, LQQPIM/SoftList;

    invoke-direct {v0}, LQQPIM/SoftList;-><init>()V

    invoke-virtual {v3, p0, v0}, Lcom/qq/jce/wup/UniAttribute;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/SoftList;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_3
    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    :goto_3
    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_5

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_5
    :goto_5
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public final a(Ljava/lang/String;LQQPIM/SoftListType;)Z
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Ltms/as;->a:Ljava/util/HashMap;

    invoke-virtual {p2}, LQQPIM/SoftListType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/SoftList;

    if-nez v0, :cond_1

    invoke-virtual {p2}, LQQPIM/SoftListType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ltms/as;->a(LQQPIM/SoftListType;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltms/as;->b(Ljava/lang/String;Ljava/lang/String;)LQQPIM/SoftList;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v1, p0, Ltms/as;->a:Ljava/util/HashMap;

    invoke-virtual {p2}, LQQPIM/SoftListType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v1, v0

    invoke-virtual {p2}, LQQPIM/SoftListType;->value()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p1, v1}, Ltms/as;->a(Ljava/lang/String;LQQPIM/SoftList;)Z

    move-result v2

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, v1}, Ltms/as;->a(Ljava/lang/String;LQQPIM/SoftList;)Z

    move-result v2

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Ltms/as;->b:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/16 v3, 0x8

    invoke-virtual {v0, p1, v3}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v2

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    const-string v4, "size"

    invoke-virtual {v0, v4}, Lcom/tencent/tmsecure/module/software/AppEntity;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, v1, LQQPIM/SoftList;->vctSofts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/SoftElementInfo;

    iget v6, v0, LQQPIM/SoftElementInfo;->softsize:I

    int-to-long v6, v6

    cmp-long v6, v6, v4

    if-nez v6, :cond_3

    :goto_2
    if-eqz v0, :cond_4

    iget-object v1, v0, LQQPIM/SoftElementInfo;->pkgname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, LQQPIM/SoftElementInfo;->pkgname:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    iget-object v0, v0, LQQPIM/SoftElementInfo;->cert:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Ltms/as;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_6
    move-object v0, v3

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-class v0, Lcom/tencent/tmsecure/module/update/UpdateManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/update/UpdateManager;

    const/16 v1, 0xfc0

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/update/UpdateManager;->removeObserver(I)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final getSingletonType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iput-object v0, p0, Ltms/as;->b:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const-class v0, Lcom/tencent/tmsecure/module/update/UpdateManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/update/UpdateManager;

    const/16 v1, 0xfc0

    iget-object v2, p0, Ltms/as;->c:Lcom/tencent/tmsecure/module/update/IUpdateObserver;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/update/UpdateManager;->addObserver(ILcom/tencent/tmsecure/module/update/IUpdateObserver;)V

    return-void
.end method
