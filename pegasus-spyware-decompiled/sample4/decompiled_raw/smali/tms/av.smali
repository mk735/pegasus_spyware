.class final Ltms/av;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ltms/bb$c;


# direct methods
.method constructor <init>(Ltms/bb$c;)V
    .locals 0

    iput-object p1, p0, Ltms/av;->a:Ltms/bb$c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Ltms/av;->a:Ltms/bb$c;

    iget-object v0, v0, Ltms/bb$c;->a:Ltms/bb;

    invoke-virtual {v0}, Ltms/bb;->getAllContact()Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    iget-object v5, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    invoke-static {v5}, Ltms/ag;->b(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ltms/av;->a:Ltms/bb$c;

    invoke-static {v0}, Ltms/bb$c;->a(Ltms/bb$c;)[B

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Ltms/av;->a:Ltms/bb$c;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ltms/bb$d;

    invoke-static {v0, v4}, Ltms/bb$c;->a(Ltms/bb$c;[Ltms/bb$d;)[Ltms/bb$d;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    invoke-static {v0}, Ltms/ag;->b(Ljava/lang/String;)I

    move-result v0

    new-instance v4, Ltms/bb$d;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ltms/bb$d;-><init>(B)V

    iput v0, v4, Ltms/bb$d;->a:I

    iget-object v0, p0, Ltms/av;->a:Ltms/bb$c;

    invoke-static {v0}, Ltms/bb$c;->d(Ltms/bb$c;)[Ltms/bb$d;

    move-result-object v5

    add-int/lit8 v0, v1, 0x1

    aput-object v4, v5, v1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ltms/av;->a:Ltms/bb$c;

    iget-object v1, p0, Ltms/av;->a:Ltms/bb$c;

    iget-object v2, p0, Ltms/av;->a:Ltms/bb$c;

    invoke-static {v2}, Ltms/bb$c;->d(Ltms/bb$c;)[Ltms/bb$d;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    new-instance v4, Ltms/aw;

    invoke-direct {v4, v1}, Ltms/aw;-><init>(Ltms/bb$c;)V

    invoke-static {v2, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_3
    invoke-static {v0, v2}, Ltms/bb$c;->a(Ltms/bb$c;[Ltms/bb$d;)[Ltms/bb$d;

    iget-object v0, p0, Ltms/av;->a:Ltms/bb$c;

    invoke-static {v0}, Ltms/bb$c;->e(Ltms/bb$c;)Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method
