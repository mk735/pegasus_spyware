.class final Lcom/lenovo/safecenter/safemode/WhiteCall$6;
.super Ljava/lang/Object;
.source "WhiteCall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/safemode/WhiteCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/support/Contract;

.field final synthetic b:Lcom/lenovo/safecenter/safemode/WhiteCall;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/WhiteCall;Lcom/lenovo/safecenter/support/Contract;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/WhiteCall$6;->b:Lcom/lenovo/safecenter/safemode/WhiteCall;

    iput-object p2, p0, Lcom/lenovo/safecenter/safemode/WhiteCall$6;->a:Lcom/lenovo/safecenter/support/Contract;

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

    .line 222
    packed-switch p2, :pswitch_data_0

    .line 262
    :goto_0
    return-void

    .line 230
    :pswitch_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteCall$6;->b:Lcom/lenovo/safecenter/safemode/WhiteCall;

    const-class v4, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    .local v2, "smsIntent":Landroid/content/Intent;
    const-string v3, "number"

    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/WhiteCall$6;->a:Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteCall$6;->b:Lcom/lenovo/safecenter/safemode/WhiteCall;

    invoke-virtual {v3, v2}, Lcom/lenovo/safecenter/safemode/WhiteCall;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 233
    .end local v2    # "smsIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 235
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteCall$6;->b:Lcom/lenovo/safecenter/safemode/WhiteCall;

    invoke-static {v3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 240
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/safemode/WhiteCall$6;->a:Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 242
    .local v0, "callIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteCall$6;->b:Lcom/lenovo/safecenter/safemode/WhiteCall;

    invoke-virtual {v3, v0}, Lcom/lenovo/safecenter/safemode/WhiteCall;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 243
    .end local v0    # "callIntent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 244
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteCall$6;->b:Lcom/lenovo/safecenter/safemode/WhiteCall;

    invoke-static {v3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 245
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 250
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_2
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteCall$6;->b:Lcom/lenovo/safecenter/safemode/WhiteCall;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/WhiteCall;->c(Lcom/lenovo/safecenter/safemode/WhiteCall;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/WhiteCall$6;->a:Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/Contract;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/database/AppDatabase;->deleteCall(I)V

    .line 251
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteCall$6;->b:Lcom/lenovo/safecenter/safemode/WhiteCall;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/WhiteCall;->d(Lcom/lenovo/safecenter/safemode/WhiteCall;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/WhiteCall$6;->b:Lcom/lenovo/safecenter/safemode/WhiteCall;

    invoke-static {v4}, Lcom/lenovo/safecenter/safemode/WhiteCall;->g(Lcom/lenovo/safecenter/safemode/WhiteCall;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 257
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteCall$6;->b:Lcom/lenovo/safecenter/safemode/WhiteCall;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/WhiteCall;->f(Lcom/lenovo/safecenter/safemode/WhiteCall;)Landroid/widget/BaseAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 258
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteCall$6;->b:Lcom/lenovo/safecenter/safemode/WhiteCall;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/WhiteCall;->a(Lcom/lenovo/safecenter/safemode/WhiteCall;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
