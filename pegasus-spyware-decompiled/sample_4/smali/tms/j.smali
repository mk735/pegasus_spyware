.class final Ltms/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/update/IUpdateObserver;


# instance fields
.field final synthetic a:Ltms/as;


# direct methods
.method constructor <init>(Ltms/as;)V
    .locals 0

    iput-object p1, p0, Ltms/j;->a:Ltms/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/tencent/tmsecure/module/update/UpdateInfo;)V
    .locals 2

    iget-object v0, p0, Ltms/j;->a:Ltms/as;

    sget-object v1, LQQPIM/SoftListType;->WHITELIST_COMMON:LQQPIM/SoftListType;

    invoke-static {v0, v1}, Ltms/as;->a(Ltms/as;LQQPIM/SoftListType;)V

    return-void
.end method
