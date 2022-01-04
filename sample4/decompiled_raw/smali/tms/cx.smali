.class final Ltms/cx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;


# instance fields
.field final synthetic a:Ltms/cw;


# direct methods
.method constructor <init>(Ltms/cw;)V
    .locals 0

    iput-object p1, p0, Ltms/cx;->a:Ltms/cw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object v1, p0, Ltms/cx;->a:Ltms/cw;

    invoke-virtual {v1, v0}, Ltms/cw;->a([Ljava/lang/String;)V

    return-void
.end method

.method public final onPackageReinstall(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
