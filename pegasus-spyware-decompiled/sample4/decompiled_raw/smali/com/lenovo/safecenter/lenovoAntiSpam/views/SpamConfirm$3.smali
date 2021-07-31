.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm$3;
.super Ljava/lang/Thread;
.source "SpamConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->addSign(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 203
    :try_start_0
    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;

    invoke-direct {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;-><init>()V

    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;

    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "number"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;

    invoke-static {v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->upload_sign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 204
    .local v1, "ff":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 206
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->b(Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;)Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "number"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->updateSign(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v1    # "ff":I
    :cond_0
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
