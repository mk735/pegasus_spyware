.class final Lcom/lenovo/safecenter/safemode/WhiteContract$1;
.super Landroid/os/Handler;
.source "WhiteContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/safemode/WhiteContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/WhiteContract;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/WhiteContract;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$1;->a:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 57
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 59
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "number"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "number":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$1;->a:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/WhiteContract;->a(Lcom/lenovo/safecenter/safemode/WhiteContract;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/lenovo/safecenter/database/AppDatabase;->getwhiteSmsInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 62
    .local v2, "smslist":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$1;->a:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/WhiteContract;->a(Lcom/lenovo/safecenter/safemode/WhiteContract;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/lenovo/safecenter/database/AppDatabase;->getCallByNumber(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 63
    .local v0, "calllist":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 65
    :cond_1
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$1;->a:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v3, v2, v0, v1}, Lcom/lenovo/safecenter/safemode/WhiteContract;->a(Lcom/lenovo/safecenter/safemode/WhiteContract;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
