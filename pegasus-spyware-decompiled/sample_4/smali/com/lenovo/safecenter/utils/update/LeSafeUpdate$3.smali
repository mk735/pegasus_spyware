.class final Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$3;
.super Landroid/os/Handler;
.source "LeSafeUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$3;->a:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 406
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 424
    :goto_0
    return-void

    .line 408
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 409
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 412
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$3;->a:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->d(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 416
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/lenovo/safecenter/utils/update/LeSafeUpdateInfo;

    .line 417
    .local v1, "lsui":Lcom/lenovo/safecenter/utils/update/LeSafeUpdateInfo;
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$3;->a:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->d(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdateInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdateInfo;->getApkName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdateInfo;->getFileSize()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/lenovo/lps/sus/SUS;->downloadApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 421
    .end local v1    # "lsui":Lcom/lenovo/safecenter/utils/update/LeSafeUpdateInfo;
    :pswitch_2
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate$3;->a:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->h(Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)V

    goto :goto_0

    .line 406
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
