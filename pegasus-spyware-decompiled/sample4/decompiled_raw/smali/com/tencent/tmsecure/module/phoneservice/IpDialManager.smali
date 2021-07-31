.class public final Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Ltms/fi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final doIpCall(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->a:Ltms/fi;

    invoke-virtual {v0, p1, p2}, Ltms/fi;->a(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public final getDialPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->a:Ltms/fi;

    invoke-virtual {v0, p1}, Ltms/fi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public final getIpDialSetting()Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->a:Ltms/fi;

    invoke-virtual {v0}, Ltms/fi;->a()Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    move-result-object v0

    goto :goto_0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ltms/fi;

    invoke-direct {v0}, Ltms/fi;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->a:Ltms/fi;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->a:Ltms/fi;

    invoke-virtual {v0, p1}, Ltms/fi;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->a:Ltms/fi;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public final setIpDialSetting(Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->a:Ltms/fi;

    invoke-virtual {v0, p1}, Ltms/fi;->a(Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;)V

    goto :goto_0
.end method
