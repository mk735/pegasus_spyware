.class final Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;
.super Landroid/os/Handler;
.source "AppUninstall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/Laboratory/AppUninstall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v8, 0x7f0d0354

    const v6, 0x7f0d022a

    const/4 v7, 0x1

    .line 147
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 227
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 149
    :pswitch_1
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    new-instance v4, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;

    iget-object v5, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-direct {v4, v5}, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;-><init>(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)V

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->a(Lcom/lenovo/safecenter/Laboratory/AppUninstall;Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;)Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;

    .line 150
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v3}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->b(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v4}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->a(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v3}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->c(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 152
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v3}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->b(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 155
    :pswitch_2
    iget-object v4, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v3, v3, Lcom/lenovo/safecenter/support/AppInfo;->name:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->a(Lcom/lenovo/safecenter/Laboratory/AppUninstall;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    iget-object v4, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/lenovo/safecenter/support/AppInfo;

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-static {v4, v5, v3, v6}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->a(Lcom/lenovo/safecenter/Laboratory/AppUninstall;ILcom/lenovo/safecenter/support/AppInfo;I)V

    goto :goto_0

    .line 181
    :pswitch_3
    const-string v3, "ydp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delthird over :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v3}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->d(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Landroid/widget/ProgressBar;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 188
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v3}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->e(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->getDialog()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 189
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v3}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->e(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->getDialog()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/safecenter/dialog/CustomDialog;->dismiss()V

    .line 191
    :cond_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    packed-switch v3, :pswitch_data_1

    :pswitch_4
    goto/16 :goto_0

    .line 199
    :pswitch_5
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v5}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->f(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-virtual {v5, v8}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 195
    :pswitch_6
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v5}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->f(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    const v6, 0x7f0d0353

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 203
    :pswitch_7
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v5}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->f(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-virtual {v5, v8}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 209
    :pswitch_8
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v3}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->d(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Landroid/widget/ProgressBar;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 210
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v3}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->e(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->getDialog()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 211
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v3}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->e(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->getDialog()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/safecenter/dialog/CustomDialog;->dismiss()V

    .line 213
    :cond_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 214
    .local v1, "result":I
    if-ne v1, v7, :cond_3

    .line 215
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v5}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->f(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    const v6, 0x7f0d05e5

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 217
    :cond_3
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v5}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->f(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    const v6, 0x7f0d05e6

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 222
    .end local v1    # "result":I
    :pswitch_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 223
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DELETE"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 224
    .local v2, "uninstallIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-virtual {v3, v2}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 191
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method
