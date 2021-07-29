.class final Ltms/y$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/utils/WifiUtil$IWifiApproveCheckCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ltms/y;


# direct methods
.method private constructor <init>(Ltms/y;)V
    .locals 0

    iput-object p1, p0, Ltms/y$a;->a:Ltms/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltms/y;B)V
    .locals 0

    invoke-direct {p0, p1}, Ltms/y$a;-><init>(Ltms/y;)V

    return-void
.end method


# virtual methods
.method public final onWifiApproveCheckFinished(ZZ)V
    .locals 2

    invoke-static {}, Ltms/y;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ltms/y;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tmsecure/utils/WifiUtil;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    invoke-static {p1}, Ltms/y;->a(Z)Z

    :goto_0
    invoke-static {p2}, Ltms/y;->b(Z)Z

    invoke-static {}, Ltms/y;->o()Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ltms/y;->a(Z)Z

    goto :goto_0
.end method
