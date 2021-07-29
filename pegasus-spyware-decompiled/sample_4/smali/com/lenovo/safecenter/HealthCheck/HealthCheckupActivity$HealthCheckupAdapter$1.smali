.class final Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter$1;
.super Landroid/os/Handler;
.source "HealthCheckupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;)V
    .locals 0

    .prologue
    .line 603
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter$1;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 606
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 622
    :goto_0
    return-void

    .line 608
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter$1;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 611
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 612
    .local v0, "pushItem":Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter$1;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;)Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;

    move-result-object v1

    iget v2, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    invoke-virtual {v1, v2, v0}, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;->put(ILcom/lenovo/safecenter/HealthCheck/HealthItemResult;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 613
    iget v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    if-eqz v1, :cond_0

    .line 615
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter$1;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->b(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;)V

    .line 617
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter$1;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 620
    .end local v0    # "pushItem":Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    :pswitch_2
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter$1;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;)Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;->remove(I)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 621
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter$1;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 606
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
