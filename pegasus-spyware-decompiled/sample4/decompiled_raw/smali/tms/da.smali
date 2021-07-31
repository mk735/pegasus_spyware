.class final Ltms/da;
.super Ltms/cz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltms/da$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecure/module/network/INetworkInfoDao;Ltms/db;)V
    .locals 1

    new-instance v0, Ltms/da$a;

    invoke-direct {v0, p2}, Ltms/da$a;-><init>(Ltms/db;)V

    invoke-direct {p0, v0, p1}, Ltms/cz;-><init>(Lcom/tencent/tmsecure/module/network/NetDataEntityFactory;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)V

    return-void
.end method
