.class public final Lcom/network/e/a/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Map;

.field private b:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/network/e/a/b;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/network/e/a/b;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)Lcom/network/android/monitor/observer/r;
    .locals 1

    iget-object v0, p0, Lcom/network/e/a/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/network/android/monitor/observer/r;

    return-object v0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/network/e/a/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/network/e/a/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public final a(Lcom/network/android/monitor/a/a;)V
    .locals 2

    iget-object v0, p0, Lcom/network/e/a/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/network/android/monitor/observer/r;

    invoke-virtual {v0, p1}, Lcom/network/android/monitor/observer/r;->a(Lcom/network/android/monitor/a/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/network/android/monitor/a/b;)V
    .locals 6

    check-cast p1, Lcom/network/android/monitor/observer/r;

    invoke-virtual {p1}, Lcom/network/android/monitor/observer/r;->a()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    iget-object v0, p0, Lcom/network/e/a/b;->a:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/network/e/a/b;->a:Ljava/util/Map;

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/network/e/a/b;->b:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Lcom/network/android/monitor/a/a;)V
    .locals 4

    move-object v0, p1

    check-cast v0, Lcom/network/e/a/a;

    invoke-virtual {v0}, Lcom/network/e/a/a;->b()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/network/e/a/b;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/network/android/monitor/observer/r;

    move-object v1, p1

    check-cast v1, Lcom/network/e/a/a;

    invoke-virtual {v1}, Lcom/network/e/a/a;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/network/e/a/a;->b()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v3, v1, v0}, Lcom/network/android/android/monitor/NetworkManagerService;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/network/android/monitor/a/c;)V

    goto :goto_0
.end method
