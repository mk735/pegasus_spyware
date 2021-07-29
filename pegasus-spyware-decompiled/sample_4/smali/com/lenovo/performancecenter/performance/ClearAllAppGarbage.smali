.class public Lcom/lenovo/performancecenter/performance/ClearAllAppGarbage;
.super Ljava/lang/Object;
.source "ClearAllAppGarbage.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/ClearAllAppGarbage;->b:Landroid/content/Context;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearAllAppGarbage;->a:Ljava/util/ArrayList;

    .line 24
    return-void
.end method


# virtual methods
.method public clearAllApp(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearAllAppGarbage;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearAllAppGarbage;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/ClearAllAppGarbage;->a:Ljava/util/ArrayList;

    const-string v2, " -fs "

    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/ClearAllAppGarbage;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/performancecenter/coreui/util/RootPassage;->execRootCmd(Landroid/os/Handler;Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Context;)V

    .line 57
    :cond_0
    return-void
.end method

.method public getAllRunningAppInfo(Landroid/os/Message;)[I
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "appCount":I
    const/4 v5, 0x0

    .line 30
    .local v5, "memoryRelease":I
    iget-object v6, p0, Lcom/lenovo/performancecenter/performance/ClearAllAppGarbage;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->getRunningAppInfoJustInLauncher(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v4

    .line 32
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[I>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 33
    .local v2, "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[I>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v6, v6, v9

    if-ne v6, v8, :cond_0

    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v6, v6, v8

    add-int/2addr v5, v6

    .line 38
    :cond_0
    iget-object v6, p0, Lcom/lenovo/performancecenter/performance/ClearAllAppGarbage;->a:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    .end local v2    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[I>;"
    :cond_1
    new-array v1, v9, [I

    .line 43
    .local v1, "arr":[I
    const/4 v6, 0x0

    aput v0, v1, v6

    .line 44
    aput v5, v1, v8

    .line 46
    return-object v1
.end method
