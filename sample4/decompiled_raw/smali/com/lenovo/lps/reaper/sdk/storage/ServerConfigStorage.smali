.class public Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage;
.super Ljava/lang/Object;
.source "ServerConfigStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$CompressStrategy;,
        Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DispatchStrategy;,
        Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DeviceSendFlag;,
        Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$UpdateConfigStrategy;
    }
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    return-void
.end method

.method public static clear()V
    .locals 2

    .prologue
    .line 38
    const-string v0, "ServerConfigStorage"

    const-string v1, "ServerConfigStorage is Clear"

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 40
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$UpdateConfigStrategy;->a()V

    .line 41
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DeviceSendFlag;->a()V

    .line 42
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DispatchStrategy;->a()V

    .line 43
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$CompressStrategy;->a()V

    .line 44
    return-void
.end method

.method public static declared-synchronized get(Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 30
    const-class v2, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .local v0, "value":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 34
    .end local p1    # "defaultValue":Z
    :goto_0
    monitor-exit v2

    return p1

    .restart local p1    # "defaultValue":Z
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result p1

    goto :goto_0

    .line 30
    .end local v0    # "value":Ljava/lang/Boolean;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getTimestampMills()J
    .locals 2

    .prologue
    .line 47
    sget-wide v0, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage;->b:J

    return-wide v0
.end method

.method public static declared-synchronized put(Ljava/lang/String;Z)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .prologue
    .line 22
    const-class v1, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    const-string v0, "ServerConfigStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put ServerConfigStorage: [KEY]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " [VALUE]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_0
    invoke-static {p0}, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$UpdateConfigStrategy;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    :cond_1
    :goto_0
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v1

    return-void

    .line 25
    :cond_2
    :try_start_1
    invoke-static {p0, p1}, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DeviceSendFlag;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DispatchStrategy;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$CompressStrategy;->a(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setTimestampMills(J)V
    .locals 3
    .param p0, "timestamp"    # J

    .prologue
    .line 51
    const-string v0, "ServerConfigStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timestamp is set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sput-wide p0, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage;->b:J

    .line 53
    return-void
.end method
