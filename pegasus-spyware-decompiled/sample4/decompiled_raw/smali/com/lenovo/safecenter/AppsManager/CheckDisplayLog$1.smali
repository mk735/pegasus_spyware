.class final Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$1;
.super Landroid/os/Handler;
.source "CheckDisplayLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$1;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 65
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 112
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$1;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->setAdapter()V

    goto :goto_0

    .line 70
    :pswitch_1
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$1;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->setAdapter()V

    goto :goto_0

    .line 75
    :pswitch_2
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$1;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 76
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$1;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$1;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->b(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 82
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$1;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->c(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/support/SafeLog;

    .line 83
    .local v2, "log":Lcom/lenovo/safecenter/support/SafeLog;
    const/4 v3, 0x1

    iput v3, v2, Lcom/lenovo/safecenter/support/SafeLog;->isUpload:I

    goto :goto_2

    .line 78
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "log":Lcom/lenovo/safecenter/support/SafeLog;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$1;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->e(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$1;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v4}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->c(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$1;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->d(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/safecenter/database/AppDatabase;->updateSafeLogUpload(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 86
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$1;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    const v4, 0x7f0d013b

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 87
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$1;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->finish()V

    goto :goto_0

    .line 89
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$1;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    const v4, 0x7f0d013c

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 94
    :pswitch_3
    :try_start_1
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$1;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 95
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$1;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$1;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->f(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Landroid/widget/BaseAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 101
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$1;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->g(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_0

    .line 97
    :catch_1
    move-exception v0

    .line 98
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_4
    :try_start_2
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$1;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 106
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$1;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 111
    :cond_4
    :goto_4
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$1;->a:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->h(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 108
    :catch_2
    move-exception v0

    .line 109
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
