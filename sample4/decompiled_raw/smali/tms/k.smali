.class public Ltms/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/tmsecure/common/TMSService;


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecure/common/TMSService;)V
    .locals 0

    iput-object p1, p0, Ltms/k;->a:Lcom/tencent/tmsecure/common/TMSService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v1, 0x1

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ltms/p;->a(Landroid/content/Context;)Ltms/p;

    move-result-object v0

    invoke-virtual {v0}, Ltms/p;->b()I

    move-result v2

    new-instance v3, Ltms/af;

    const-string v0, "wup"

    invoke-direct {v3, v0}, Ltms/af;-><init>(Ljava/lang/String;)V

    const-string v4, "key_last_verify_success"

    if-nez v2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v4, v0, v1}, Ltms/af;->a(Ljava/lang/String;ZZ)V

    if-nez v2, :cond_0

    const-string v0, "key_last_verify_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5, v1}, Ltms/af;->a(Ljava/lang/String;JZ)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
