.class final Ltms/db;
.super Ljava/lang/Object;


# static fields
.field private static e:Ljava/lang/String;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ltms/af;

.field private j:Ljava/lang/String;

.field private k:Landroid/content/Context;

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "upload_config_des"

    sput-object v0, Ltms/db;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MOBILE"

    iput-object v0, p0, Ltms/db;->a:Ljava/lang/String;

    const-string v0, "WIFI"

    iput-object v0, p0, Ltms/db;->b:Ljava/lang/String;

    const-string v0, "EXCLUDE"

    iput-object v0, p0, Ltms/db;->c:Ljava/lang/String;

    const-string v0, "net_interface_type_traffic_stat.dat"

    iput-object v0, p0, Ltms/db;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltms/db;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltms/db;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltms/db;->h:Ljava/util/ArrayList;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltms/db;->k:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Ltms/db;->l:I

    iput-object p1, p0, Ltms/db;->j:Ljava/lang/String;

    new-instance v0, Ltms/af;

    const-string v1, "NetInterfaceManager"

    invoke-direct {v0, v1}, Ltms/af;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltms/db;->i:Ltms/af;

    return-void
.end method

.method private a(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Ltms/db;->l:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Ltms/db;->l:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_3

    const-string v0, "[WFGG]: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_5

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    iget v0, p0, Ltms/db;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const-string v0, "[2G3G]: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget v0, p0, Ltms/db;->l:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    const-string v0, "[WIFI]: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()LQQPIM/NetInterfaceTypeInfoList;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Ltms/db;->k:Landroid/content/Context;

    const-string v2, "net_interface_type_traffic_stat.dat"

    invoke-static {v0, v2, v1}, Ltms/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

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

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/tencent/tccdb/TccCryptor;->decrypt(Landroid/content/Context;[B[B)[B

    move-result-object v0

    new-instance v3, Lcom/qq/jce/wup/UniAttribute;

    invoke-direct {v3}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    invoke-virtual {v3, v0}, Lcom/qq/jce/wup/UniAttribute;->decode([B)V

    sget-object v0, LQQPIM/NetInterfaceUsageType;->NET_INTERFACE_TYPE_TRAFFIC_STAT:LQQPIM/NetInterfaceUsageType;

    invoke-virtual {v0}, LQQPIM/NetInterfaceUsageType;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, LQQPIM/NetInterfaceTypeInfoList;

    invoke-direct {v4}, LQQPIM/NetInterfaceTypeInfoList;-><init>()V

    invoke-virtual {v3, v0, v4}, Lcom/qq/jce/wup/UniAttribute;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/NetInterfaceTypeInfoList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_3
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
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

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ltms/db;->b()LQQPIM/NetInterfaceTypeInfoList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, LQQPIM/NetInterfaceTypeInfoList;->vctInterfaceInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/NetInterfaceTypeInfo;

    const-string v3, "MOBILE"

    iget-object v4, v0, LQQPIM/NetInterfaceTypeInfo;->typeName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Ltms/db;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Ltms/db;->f:Ljava/util/List;

    iget-object v0, v0, LQQPIM/NetInterfaceTypeInfo;->keySet:Ljava/util/ArrayList;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    const-string v3, "WIFI"

    iget-object v4, v0, LQQPIM/NetInterfaceTypeInfo;->typeName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Ltms/db;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Ltms/db;->g:Ljava/util/List;

    iget-object v0, v0, LQQPIM/NetInterfaceTypeInfo;->keySet:Ljava/util/ArrayList;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    const-string v3, "EXCLUDE"

    iget-object v4, v0, LQQPIM/NetInterfaceTypeInfo;->typeName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Ltms/db;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Ltms/db;->h:Ljava/util/ArrayList;

    iget-object v0, v0, LQQPIM/NetInterfaceTypeInfo;->keySet:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Ltms/db;->j:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ltms/v;->b(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    array-length v0, v3

    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x11

    iput v2, p0, Ltms/db;->l:I

    const/4 v2, 0x2

    :goto_2
    if-ge v2, v0, :cond_8

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "[: ]+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Ltms/db;->h:Ljava/util/ArrayList;

    invoke-static {v6, v5}, Ltms/db;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Ltms/db;->f:Ljava/util/List;

    invoke-static {v6, v5}, Ltms/db;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget v5, p0, Ltms/db;->l:I

    and-int/lit8 v5, v5, -0x2

    iput v5, p0, Ltms/db;->l:I

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    iget-object v6, p0, Ltms/db;->g:Ljava/util/List;

    invoke-static {v6, v5}, Ltms/db;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget v5, p0, Ltms/db;->l:I

    and-int/lit8 v5, v5, -0x11

    iput v5, p0, Ltms/db;->l:I

    goto :goto_3

    :cond_7
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-direct {p0, v4}, Ltms/db;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Ltms/db;->i:Ltms/af;

    sget-object v2, Ltms/db;->e:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Ltms/af;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_9
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Ltms/db;->f:Ljava/util/List;

    invoke-static {v0, p1}, Ltms/db;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Ltms/db;->g:Ljava/util/List;

    invoke-static {v0, p1}, Ltms/db;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
