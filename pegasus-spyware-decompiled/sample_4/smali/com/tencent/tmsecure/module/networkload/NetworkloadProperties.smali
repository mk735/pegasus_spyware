.class public Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "networkload"

.field private static final b:Ljava/lang/String; = "mobile_download_bytes"

.field private static final c:Ljava/lang/String; = "mobile_upload_bytes"

.field private static d:Ltms/af;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltms/af;

    const-string v1, "networkload"

    invoke-direct {v0, v1}, Ltms/af;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->d:Ltms/af;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getSelfMobileDownloadBytes()J
    .locals 5

    const-class v1, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->d:Ltms/af;

    const-string v2, "mobile_download_bytes"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Ltms/af;->a(Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getSelfMobileUploadBytes()J
    .locals 5

    const-class v1, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->d:Ltms/af;

    const-string v2, "mobile_upload_bytes"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Ltms/af;->a(Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized updateSelfMobileDownloadBytes(J)V
    .locals 4

    const-class v1, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->d:Ltms/af;

    const-string v2, "mobile_download_bytes"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, p1, v3}, Ltms/af;->a(Ljava/lang/String;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized updateSelfMobileUploadBytes(J)V
    .locals 4

    const-class v1, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->d:Ltms/af;

    const-string v2, "mobile_upload_bytes"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, p1, v3}, Ltms/af;->a(Ljava/lang/String;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
