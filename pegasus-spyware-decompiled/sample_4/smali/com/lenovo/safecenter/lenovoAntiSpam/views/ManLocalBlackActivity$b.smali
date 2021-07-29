.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;
.super Landroid/os/Handler;
.source "ManLocalBlackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;


# direct methods
.method private constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 51
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 131
    :goto_0
    :pswitch_0
    return-void

    .line 53
    :pswitch_1
    const-string v3, "handler"

    const-string v4, "progress.dismiss()1;"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    const-string v4, "com.lenovo.antispam.blackperson.change"

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->sendBraodcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 58
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->initViewSys()V

    goto :goto_0

    .line 62
    :cond_0
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->b(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->notifyDataSetChanged()V

    .line 63
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Landroid/widget/ExpandableListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ExpandableListView;->invalidateViews()V

    goto :goto_0

    .line 67
    :pswitch_2
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 71
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_1
    :goto_1
    const-string v3, "handler"

    const-string v4, "progress.dismiss()2;"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 80
    .local v2, "str":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "result"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 81
    .local v1, "result":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 84
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    iget-object v3, v3, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-virtual {v3, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->updateLocalBlack(I)V

    .line 85
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    const v4, 0x7f0d024d

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 86
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->e(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;

    invoke-virtual {v3, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->setIsUpload(I)V

    .line 87
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->b(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->notifyDataSetChanged()V

    .line 88
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Landroid/widget/ExpandableListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ExpandableListView;->invalidateViews()V

    goto/16 :goto_0

    .line 73
    .end local v1    # "result":I
    .end local v2    # "str":I
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "result":I
    .restart local v2    # "str":I
    :cond_2
    if-ne v1, v5, :cond_3

    .line 91
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    const v4, 0x7f0d025d

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 95
    :cond_3
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    const v4, 0x7f0d025e

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 100
    .end local v1    # "result":I
    .end local v2    # "str":I
    :pswitch_3
    const-string v3, "handler"

    const-string v4, "progress.dismiss()5;"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 105
    :try_start_1
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 115
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->f(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    new-instance v4, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-direct {v4, v5, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;Landroid/content/Context;)V

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;)Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;

    .line 117
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Landroid/widget/ExpandableListView;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->b(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 118
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Landroid/widget/ExpandableListView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    goto/16 :goto_0

    .line 106
    :catch_1
    move-exception v0

    .line 108
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->f(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Landroid/widget/ExpandableListView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    goto/16 :goto_0

    .line 130
    :pswitch_4
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Landroid/widget/ExpandableListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ExpandableListView;->invalidateViews()V

    goto/16 :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
