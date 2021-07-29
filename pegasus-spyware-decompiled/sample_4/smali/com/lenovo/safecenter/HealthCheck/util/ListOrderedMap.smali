.class public Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;
.super Ljava/lang/Object;
.source "ListOrderedMap.java"


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;->a:Ljava/util/HashMap;

    .line 26
    new-instance v0, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap$1;-><init>(Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;->c:Ljava/util/Comparator;

    .line 39
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 56
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 58
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getValueByIndex(I)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 63
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 64
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;->d:Z

    if-nez v0, :cond_0

    .line 65
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;->a:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;->c:Ljava/util/Comparator;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;->b:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;->d:Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 67
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object v0
.end method

.method public getValueByKey(I)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 72
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public put(ILcom/lenovo/safecenter/HealthCheck/HealthItemResult;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    .locals 3
    .param p1, "key"    # I
    .param p2, "value"    # Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .prologue
    .line 42
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 43
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;->d:Z

    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public remove(I)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 49
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 50
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;->d:Z

    .line 51
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 91
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
