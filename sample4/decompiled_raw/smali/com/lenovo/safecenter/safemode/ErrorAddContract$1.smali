.class final Lcom/lenovo/safecenter/safemode/ErrorAddContract$1;
.super Landroid/os/Handler;
.source "ErrorAddContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/safemode/ErrorAddContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$1;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 48
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 133
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 50
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$1;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->a(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)Z

    .line 51
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$1;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->b(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$1;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->b(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$1;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    const-string v2, "com.lenovo.securityperson.change"

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->sendBraodcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$1;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->finish()V

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$1;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->a(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)Z

    .line 93
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$1;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->b(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 97
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$1;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->b(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$1;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->finish()V

    goto :goto_0

    .line 98
    :catch_1
    move-exception v0

    .line 100
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 106
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_3
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$1;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->a(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)Z

    .line 107
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$1;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->b(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 111
    :try_start_2
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$1;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->b(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 117
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$1;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->c(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$1;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->d(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_5

    .line 121
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$1;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    new-instance v2, Lcom/lenovo/safecenter/adapter/CallAdapter;

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$1;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$1;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-static {v4}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->c(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$1;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-static {v5}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->d(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/lenovo/safecenter/adapter/CallAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->a(Lcom/lenovo/safecenter/safemode/ErrorAddContract;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;

    .line 127
    :cond_4
    :goto_4
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$1;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->f(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$1;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->e(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)Landroid/widget/BaseAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 112
    :catch_2
    move-exception v0

    .line 114
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$1;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->d(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 125
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$1;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    new-instance v2, Lcom/lenovo/safecenter/adapter/SmsAdapter;

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$1;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$1;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-static {v4}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->c(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/lenovo/safecenter/adapter/SmsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->a(Lcom/lenovo/safecenter/safemode/ErrorAddContract;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;

    goto :goto_4

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
