.class final Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$7;
.super Ljava/lang/Object;
.source "ErrorWhiteContract.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/support/Contract;

.field final synthetic b:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;Lcom/lenovo/safecenter/support/Contract;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$7;->b:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    iput-object p2, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$7;->a:Lcom/lenovo/safecenter/support/Contract;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const v7, 0x7f0d04c8

    const/4 v6, 0x0

    .line 253
    packed-switch p2, :pswitch_data_0

    .line 291
    :goto_0
    return-void

    .line 256
    :pswitch_0
    sget-object v3, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->list:Ljava/util/List;

    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$7;->b:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    invoke-static {v4}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->e(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 258
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$7;->b:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->b(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidateViews()V

    .line 259
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$7;->b:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    const-string v4, "com.lenovo.securityperson.change"

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->sendBraodcast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :pswitch_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$7;->a:Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 266
    .local v0, "callIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$7;->b:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    invoke-virtual {v3, v0}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    .end local v0    # "callIntent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$7;->b:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    invoke-static {v3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 274
    :pswitch_2
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smsto:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$7;->a:Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 276
    .local v2, "smsToUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 278
    .local v1, "smsIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$7;->b:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    invoke-virtual {v3, v1}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 280
    .end local v1    # "smsIntent":Landroid/content/Intent;
    .end local v2    # "smsToUri":Landroid/net/Uri;
    :catch_1
    move-exception v3

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$7;->b:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    invoke-static {v3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 284
    :pswitch_3
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$7;->b:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->showChangeContract()V

    goto/16 :goto_0

    .line 287
    :pswitch_4
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$7;->b:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$7;->a:Lcom/lenovo/safecenter/support/Contract;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->f(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;)V

    goto/16 :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
