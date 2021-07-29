.class final Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus$1;
.super Landroid/os/Handler;
.source "HealthKillVirus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 77
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->a(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    invoke-static {v2}, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->b(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d00f2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    invoke-static {v3}, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->c(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d0543

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lenovo/safecenter/utils/DialogUtil;->NoticePositiveDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;)Landroid/app/Dialog;

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
