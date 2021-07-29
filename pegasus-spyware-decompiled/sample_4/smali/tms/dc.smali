.class final Ltms/dc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/update/IUpdateObserver;


# instance fields
.field final synthetic a:Ltms/dt;


# direct methods
.method constructor <init>(Ltms/dt;)V
    .locals 0

    iput-object p1, p0, Ltms/dc;->a:Ltms/dt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/tencent/tmsecure/module/update/UpdateInfo;)V
    .locals 1

    iget-object v0, p0, Ltms/dc;->a:Ltms/dt;

    invoke-static {v0}, Ltms/dt;->a(Ltms/dt;)I

    return-void
.end method
