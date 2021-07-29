.class final Ltms/fl;
.super Ljava/lang/Object;

# interfaces
.implements Ltms/gn$a;


# instance fields
.field final synthetic a:Ltms/gn$d;


# direct methods
.method constructor <init>(Ltms/gn$d;)V
    .locals 0

    iput-object p1, p0, Ltms/fl;->a:Ltms/gn$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Ltms/fl;->a:Ltms/gn$d;

    iget-object v0, v0, Ltms/gn$d;->a:Ltms/gn;

    invoke-static {v0}, Ltms/gn;->a(Ltms/gn;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltms/gn$b;

    invoke-virtual {v0, p1}, Ltms/gn$b;->onPackageReinstall(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
