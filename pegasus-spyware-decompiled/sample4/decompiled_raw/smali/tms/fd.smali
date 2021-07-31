.class final Ltms/fd;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ltms/gn$b;


# direct methods
.method constructor <init>(Ltms/gn$b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltms/fd;->b:Ltms/gn$b;

    iput-object p2, p0, Ltms/fd;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ltms/fd;->b:Ltms/gn$b;

    invoke-static {v0}, Ltms/gn$b;->a(Ltms/gn$b;)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    move-result-object v0

    iget-object v1, p0, Ltms/fd;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;->onPackageRemoved(Ljava/lang/String;)V

    return-void
.end method
