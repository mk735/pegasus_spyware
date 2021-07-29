.class final Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2;
.super Landroid/os/Handler;
.source "LeSafeDownLoadApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 112
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 168
    :goto_0
    return-void

    .line 114
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->f(Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;)Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    move-result-object v0

    if-nez v0, :cond_0

    .line 115
    iget-object v9, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    new-instance v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    iget-object v1, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    iget-object v2, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->b(Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;)I

    move-result v3

    sget-object v4, Lcom/lenovo/safecenter/utils/Const;->SUS_CHANNEL:Ljava/lang/String;

    new-instance v8, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2$1;

    invoke-direct {v8, p0}, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2$1;-><init>(Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2;)V

    move v7, v6

    invoke-direct/range {v0 .. v8}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZZZLcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;)V

    invoke-static {v9, v0}, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->a(Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2;->a:Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->f(Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;)Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    move-result-object v0

    invoke-virtual {v0, v6, v5}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->upDate(ZZ)V

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
