.class final Ltms/dt$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/dt$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ltms/dt$a;


# direct methods
.method private constructor <init>(Ltms/dt$a;)V
    .locals 0

    iput-object p1, p0, Ltms/dt$a$a;->a:Ltms/dt$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltms/dt$a;B)V
    .locals 0

    invoke-direct {p0, p1}, Ltms/dt$a$a;-><init>(Ltms/dt$a;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Ltms/dt$a$a;->a:Ltms/dt$a;

    iget-object v0, v0, Ltms/dt$a;->a:Ltms/dt;

    invoke-static {v0}, Ltms/dt;->b(Ltms/dt;)Ljava/util/Map;

    move-result-object v0

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

    check-cast v0, Ltms/cz;

    invoke-virtual {v0}, Ltms/cz;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltms/dt$a$a;->a:Ltms/dt$a;

    iget-object v0, v0, Ltms/dt$a;->a:Ltms/dt;

    invoke-static {v0}, Ltms/dt;->d(Ltms/dt;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltms/dt$a$a;->a:Ltms/dt$a;

    invoke-static {v0}, Ltms/dt$a;->b(Ltms/dt$a;)Landroid/os/Handler;

    move-result-object v4

    iget-object v0, p0, Ltms/dt$a$a;->a:Ltms/dt$a;

    invoke-static {v0}, Ltms/dt$a;->a(Ltms/dt$a;)Ljava/lang/Runnable;

    move-result-object v5

    iget-object v0, p0, Ltms/dt$a$a;->a:Ltms/dt$a;

    iget-object v0, v0, Ltms/dt$a;->a:Ltms/dt;

    invoke-static {v0}, Ltms/dt;->e(Ltms/dt;)J

    move-result-wide v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v6, 0x5

    invoke-virtual {v3, v6, v8}, Ljava/util/GregorianCalendar;->add(II)V

    const/16 v6, 0xb

    invoke-virtual {v3, v6, v7}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v6, 0xc

    invoke-virtual {v3, v6, v7}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v6, 0xd

    invoke-virtual {v3, v6, v8}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v6, 0xe

    invoke-virtual {v3, v6, v7}, Ljava/util/GregorianCalendar;->set(II)V

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v2, v6, v2

    cmp-long v6, v2, v0

    if-lez v6, :cond_2

    :goto_1
    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method
