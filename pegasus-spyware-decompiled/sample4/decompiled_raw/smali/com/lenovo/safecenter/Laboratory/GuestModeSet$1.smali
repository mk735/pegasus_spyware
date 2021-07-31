.class final Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;
.super Landroid/os/Handler;
.source "GuestModeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/Laboratory/GuestModeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v5, 0x7f0d00f0

    const/16 v4, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 84
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 164
    :goto_0
    return-void

    .line 86
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->a(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 87
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->c(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$a;

    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    iget-object v4, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    iget-object v5, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v5}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->b(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$a;-><init>(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 92
    :pswitch_1
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v3}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->d(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v3}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->d(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    iget-object v4, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v4}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->e(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v3, v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->a(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;Z)Z

    .line 98
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->f(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 99
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->e(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->f(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f0200df

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 105
    :goto_2
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeChangeGuestModeSuccess()V

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->f(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f0200de

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2

    .line 110
    :pswitch_2
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->d(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->d(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->f(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 116
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 117
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeChangeChildModeFail()V

    goto/16 :goto_0

    .line 111
    :catch_1
    move-exception v0

    .line 112
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 121
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_3
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->g(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 126
    :pswitch_4
    :try_start_2
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v3}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->d(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v3}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->d(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 130
    :cond_4
    :goto_4
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v3}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->c(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 131
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v3}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->i(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v4}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->h(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Lcom/lenovo/safecenter/support/AppInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/lenovo/safecenter/database/AppDatabase;->deleteApp(Ljava/lang/String;I)V

    .line 132
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v2}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->j(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)I

    .line 133
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v2}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->h(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Lcom/lenovo/safecenter/support/AppInfo;

    move-result-object v2

    iput v1, v2, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    .line 134
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->c(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_0

    .line 127
    :catch_2
    move-exception v0

    .line 128
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_5
    :try_start_3
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->d(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->d(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 143
    :cond_5
    :goto_5
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->c(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 144
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->k(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)I

    .line 145
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->h(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Lcom/lenovo/safecenter/support/AppInfo;

    move-result-object v1

    iput v2, v1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    .line 146
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->c(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_0

    .line 140
    :catch_3
    move-exception v0

    .line 141
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 151
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_6
    :try_start_4
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->d(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->d(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 155
    :cond_6
    :goto_6
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->c(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 156
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 152
    :catch_4
    move-exception v0

    .line 153
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 160
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_7
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v2}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->l(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v2}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->m(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
