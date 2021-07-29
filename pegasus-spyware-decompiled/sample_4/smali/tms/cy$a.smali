.class final Ltms/cy$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/network/NetDataEntityFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/cy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Ltms/db;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ltms/db;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ltms/dt;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltms/cy$a;->b:Ljava/lang/String;

    iput-object p1, p0, Ltms/cy$a;->a:Ltms/db;

    return-void
.end method


# virtual methods
.method public final getNetDataEntity()Lcom/tencent/tmsecure/module/network/NetDataEntity;
    .locals 15

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/tencent/tmsecure/module/network/NetDataEntity;

    invoke-direct {v2}, Lcom/tencent/tmsecure/module/network/NetDataEntity;-><init>()V

    const/4 v0, 0x4

    new-array v3, v0, [J

    fill-array-data v3, :array_0

    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Ltms/cy$a;->b:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ltms/v;->b(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    monitor-enter v4

    :try_start_0
    array-length v5, v4

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_1

    aget-object v6, v4, v0

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[: ]+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Ltms/cy$a;->a:Ltms/db;

    invoke-virtual {v8, v7}, Ltms/db;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    aget-wide v8, v3, v7

    const/4 v10, 0x1

    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    aput-wide v8, v3, v7

    const/4 v7, 0x1

    aget-wide v8, v3, v7

    const/4 v10, 0x2

    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    aput-wide v8, v3, v7

    const/4 v7, 0x2

    aget-wide v8, v3, v7

    const/16 v10, 0x9

    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    aput-wide v8, v3, v7

    const/4 v7, 0x3

    aget-wide v8, v3, v7

    const/16 v10, 0xa

    aget-object v6, v6, v10

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    aput-wide v8, v3, v7

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    aget-wide v0, v3, v1

    iput-wide v0, v2, Lcom/tencent/tmsecure/module/network/NetDataEntity;->mReceiver:J

    aget-wide v0, v3, v12

    iput-wide v0, v2, Lcom/tencent/tmsecure/module/network/NetDataEntity;->mReceiverPks:J

    aget-wide v0, v3, v13

    iput-wide v0, v2, Lcom/tencent/tmsecure/module/network/NetDataEntity;->mTranslate:J

    aget-wide v0, v3, v14

    iput-wide v0, v2, Lcom/tencent/tmsecure/module/network/NetDataEntity;->mTranslatePks:J

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
