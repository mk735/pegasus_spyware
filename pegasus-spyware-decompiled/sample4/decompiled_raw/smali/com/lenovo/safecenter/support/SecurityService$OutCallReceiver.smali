.class public Lcom/lenovo/safecenter/support/SecurityService$OutCallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SecurityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/support/SecurityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OutCallReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/support/SecurityService;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/support/SecurityService;)V
    .locals 0

    .prologue
    .line 1501
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SecurityService$OutCallReceiver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 1504
    const-string v2, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1505
    .local v1, "number":Ljava/lang/String;
    const-string v2, "CallListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "number==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    if-nez v1, :cond_1

    .line 1529
    :cond_0
    :goto_0
    return-void

    .line 1510
    :cond_1
    iget-object v2, p0, Lcom/lenovo/safecenter/support/SecurityService$OutCallReceiver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v2, v5}, Lcom/lenovo/safecenter/support/SecurityService;->a(Lcom/lenovo/safecenter/support/SecurityService;I)I

    .line 1511
    new-instance v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;

    iget-object v2, p0, Lcom/lenovo/safecenter/support/SecurityService$OutCallReceiver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-direct {v0, v2}, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;-><init>(Lcom/lenovo/safecenter/support/SecurityService;)V

    .line 1512
    .local v0, "info":Lcom/lenovo/safecenter/support/SecurityService$CallInfo;
    iput-object v1, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mNumber:Ljava/lang/String;

    .line 1514
    iget-object v2, p0, Lcom/lenovo/safecenter/support/SecurityService$OutCallReceiver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v2}, Lcom/lenovo/safecenter/support/SecurityService;->m(Lcom/lenovo/safecenter/support/SecurityService;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lenovo/safecenter/database/AppDatabase;->getWhiteContract(Ljava/lang/String;)Lcom/lenovo/safecenter/support/Contract;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1516
    iput-boolean v5, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mVipCode:Z

    .line 1518
    :cond_2
    iput v5, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mType:I

    .line 1519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mRingTime:J

    .line 1520
    iget-object v2, p0, Lcom/lenovo/safecenter/support/SecurityService$OutCallReceiver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v2}, Lcom/lenovo/safecenter/support/SecurityService;->j(Lcom/lenovo/safecenter/support/SecurityService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1521
    invoke-static {}, Lcom/lenovo/safecenter/support/SecurityService;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1522
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/support/SecurityService;->a(J)J

    goto :goto_0
.end method
