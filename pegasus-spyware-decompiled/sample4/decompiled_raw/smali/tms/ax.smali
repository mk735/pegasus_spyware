.class final Ltms/ax;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltms/ax$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:[I

.field private c:[Ltms/ax$a;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltms/ax;->a:Ljava/lang/Object;

    return-void
.end method

.method private varargs a(IILcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Ltms/ax;->c:[Ltms/ax$a;

    aget-object v1, v1, p1

    if-eqz v1, :cond_1

    iget-object v2, p0, Ltms/ax;->c:[Ltms/ax$a;

    monitor-enter v2

    :try_start_0
    invoke-static {v1, p3}, Ltms/ax$a;->a(Ltms/ax$a;Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;)Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    invoke-static {v1, p2}, Ltms/ax$a;->a(Ltms/ax$a;I)I

    invoke-static {v1, p4}, Ltms/ax$a;->a(Ltms/ax$a;[Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v0, p0, Ltms/ax;->b:[I

    aget v0, v0, p1

    invoke-static {v1, v0}, Ltms/ax$a;->b(Ltms/ax$a;I)I

    invoke-virtual {v1}, Ltms/ax$a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ltms/ax$a;->g()V

    :cond_0
    invoke-static {v1}, Ltms/ax$a;->a(Ltms/ax$a;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    move-result-object v0

    invoke-static {v1}, Ltms/ax$a;->b(Ltms/ax$a;)Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ltms/ax$a;->a(Ltms/ax$a;Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;)Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ltms/ax$a;->a(Lcom/tencent/tmsecure/module/aresengine/FilterResult;)V

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ltms/ax$a;->a(Ltms/ax$a;[Ljava/lang/Object;)[Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public final varargs a(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Lcom/tencent/tmsecure/module/aresengine/FilterConfig;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Ltms/ax;->b:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltms/ax;->c:[Ltms/ax$a;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    iget-object v2, p0, Ltms/ax;->a:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Ltms/ax;->b:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Ltms/ax;->b:[I

    aget v3, v3, v1

    invoke-virtual {p2, v3}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->get(I)I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    invoke-direct {p0, v1, v3, p1, p3}, Ltms/ax;->a(IILcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_3

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-object v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final a(ILtms/ax$a;)V
    .locals 3

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ltms/ax;->b:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Ltms/ax;->b:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    :goto_1
    if-ltz v0, :cond_1

    iget-object v1, p0, Ltms/ax;->c:[Ltms/ax$a;

    aput-object p2, v1, v0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the filed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not define from setOrderedFileds method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final varargs a([I)V
    .locals 1

    iput-object p1, p0, Ltms/ax;->b:[I

    iget-object v0, p0, Ltms/ax;->b:[I

    array-length v0, v0

    new-array v0, v0, [Ltms/ax$a;

    iput-object v0, p0, Ltms/ax;->c:[Ltms/ax$a;

    return-void
.end method
