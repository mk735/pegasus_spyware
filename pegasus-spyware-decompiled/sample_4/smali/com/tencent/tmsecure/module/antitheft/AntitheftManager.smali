.class public final Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Ltms/al;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final encryptPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ltms/ao;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getHelperNumber()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->a:Ltms/al;

    invoke-virtual {v0}, Ltms/al;->a()Ltms/ao;

    move-result-object v0

    invoke-virtual {v0}, Ltms/ao;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->a:Ltms/al;

    invoke-virtual {v0}, Ltms/al;->a()Ltms/ao;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltms/ao;->a(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final handleSmsCommand(Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->a:Ltms/al;

    invoke-virtual {v0, p1, p2, p3}, Ltms/al;->a(Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ltms/al;

    invoke-direct {v0}, Ltms/al;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->a:Ltms/al;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->a:Ltms/al;

    invoke-virtual {v0, p1}, Ltms/al;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->a:Ltms/al;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public final setHelperNumber(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->a:Ltms/al;

    invoke-virtual {v0}, Ltms/al;->a()Ltms/ao;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltms/ao;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setPassword(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->a:Ltms/al;

    invoke-virtual {v0}, Ltms/al;->a()Ltms/ao;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltms/ao;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
