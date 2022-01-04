.class final Lcom/lenovo/safecenter/safemode/AddContract$1;
.super Landroid/os/Handler;
.source "AddContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/safemode/AddContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/AddContract;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/AddContract;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/AddContract$1;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 54
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 139
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 56
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract$1;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/AddContract;->a(Lcom/lenovo/safecenter/safemode/AddContract;)Z

    .line 57
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract$1;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/AddContract;->b(Lcom/lenovo/safecenter/safemode/AddContract;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract$1;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/AddContract;->b(Lcom/lenovo/safecenter/safemode/AddContract;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract$1;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    const-string v2, "com.lenovo.securityperson.change"

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->sendBraodcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract$1;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/safemode/AddContract;->finish()V

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract$1;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/AddContract;->a(Lcom/lenovo/safecenter/safemode/AddContract;)Z

    .line 99
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract$1;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/AddContract;->b(Lcom/lenovo/safecenter/safemode/AddContract;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 103
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract$1;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/AddContract;->b(Lcom/lenovo/safecenter/safemode/AddContract;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract$1;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/safemode/AddContract;->finish()V

    goto :goto_0

    .line 104
    :catch_1
    move-exception v0

    .line 106
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_3
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract$1;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/AddContract;->a(Lcom/lenovo/safecenter/safemode/AddContract;)Z

    .line 113
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract$1;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/AddContract;->b(Lcom/lenovo/safecenter/safemode/AddContract;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 117
    :try_start_2
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract$1;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/AddContract;->b(Lcom/lenovo/safecenter/safemode/AddContract;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 123
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract$1;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/AddContract;->c(Lcom/lenovo/safecenter/safemode/AddContract;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract$1;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/AddContract;->d(Lcom/lenovo/safecenter/safemode/AddContract;)I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_5

    .line 127
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract$1;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    new-instance v2, Lcom/lenovo/safecenter/adapter/CallAdapter;

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/AddContract$1;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/AddContract$1;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v4}, Lcom/lenovo/safecenter/safemode/AddContract;->c(Lcom/lenovo/safecenter/safemode/AddContract;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/safemode/AddContract$1;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v5}, Lcom/lenovo/safecenter/safemode/AddContract;->d(Lcom/lenovo/safecenter/safemode/AddContract;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/lenovo/safecenter/adapter/CallAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/safemode/AddContract;->a(Lcom/lenovo/safecenter/safemode/AddContract;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;

    .line 133
    :cond_4
    :goto_4
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract$1;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/AddContract;->f(Lcom/lenovo/safecenter/safemode/AddContract;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/AddContract$1;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/AddContract;->e(Lcom/lenovo/safecenter/safemode/AddContract;)Landroid/widget/BaseAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 118
    :catch_2
    move-exception v0

    .line 120
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract$1;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/AddContract;->d(Lcom/lenovo/safecenter/safemode/AddContract;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 131
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract$1;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    new-instance v2, Lcom/lenovo/safecenter/adapter/SmsAdapter;

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/AddContract$1;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/AddContract$1;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v4}, Lcom/lenovo/safecenter/safemode/AddContract;->c(Lcom/lenovo/safecenter/safemode/AddContract;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/lenovo/safecenter/adapter/SmsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/safemode/AddContract;->a(Lcom/lenovo/safecenter/safemode/AddContract;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;

    goto :goto_4

    .line 54
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
