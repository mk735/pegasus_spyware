.class final Ltms/cy;
.super Ltms/cz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltms/cy$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecure/module/network/INetworkInfoDao;Ltms/db;)V
    .locals 1

    new-instance v0, Ltms/cy$a;

    invoke-direct {v0, p2}, Ltms/cy$a;-><init>(Ltms/db;)V

    invoke-direct {p0, v0, p1}, Ltms/cz;-><init>(Lcom/tencent/tmsecure/module/network/NetDataEntityFactory;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)V

    return-void
.end method
