.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;
.super Landroid/os/Handler;
.source "ManAddWhiteContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;


# direct methods
.method private constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;B)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x8

    const v10, 0x7f020013

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 54
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 56
    :pswitch_0
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->checkSelAll()Z

    move-result v2

    .line 57
    .local v2, "isCheckAll":Z
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->checkCancelAll()Z

    move-result v0

    .line 58
    .local v0, "cancelAll":Z
    if-eqz v2, :cond_0

    .line 60
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 61
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->b(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 62
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-virtual {v3, v9, v10}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->changeBtn(ZI)V

    goto :goto_0

    .line 64
    :cond_0
    if-eqz v0, :cond_1

    .line 66
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 67
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->b(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 68
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-virtual {v3, v9, v10}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->changeBtn(ZI)V

    goto :goto_0

    .line 71
    :cond_1
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 72
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->b(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 73
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-virtual {v3, v9, v10}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->changeBtn(ZI)V

    goto :goto_0

    .line 78
    .end local v0    # "cancelAll":Z
    .end local v2    # "isCheckAll":Z
    :pswitch_1
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3, v8}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;Z)Z

    .line 79
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 83
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    const v4, 0x7f0d024d

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 91
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    const-string v4, "com.lenovo.antispam.whiteperson.change"

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->sendBraodcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->finish()V

    goto/16 :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 97
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_2
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3, v8}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;Z)Z

    .line 98
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 102
    :try_start_1
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 111
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->e(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->f(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->g(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 115
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    new-instance v4, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$PhoneAdapter;

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    iget-object v7, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$PhoneAdapter;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;

    .line 126
    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->i(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->h(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/widget/BaseAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    :cond_5
    :goto_4
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 139
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->b(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 140
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-virtual {v3, v9, v10}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->changeBtn(ZI)V

    goto/16 :goto_0

    .line 104
    :catch_1
    move-exception v1

    .line 106
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 117
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->g(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "call"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 119
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    new-instance v4, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$CallAdapter;

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    iget-object v7, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$CallAdapter;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;

    goto :goto_3

    .line 120
    :cond_7
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->g(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 122
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    new-instance v4, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$SmsAdapter;

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    iget-object v7, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$SmsAdapter;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;

    goto :goto_3

    .line 130
    :cond_8
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->e(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->f(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->g(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 134
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->f(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0d076d

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 143
    :pswitch_3
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3, v8}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;Z)Z

    .line 144
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 148
    :try_start_2
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 155
    :cond_9
    :goto_5
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->finish()V

    goto/16 :goto_0

    .line 150
    :catch_2
    move-exception v1

    .line 152
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
