.class final Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;
.super Landroid/os/Handler;
.source "AppPermManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/AppPermManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const v8, 0x7f02022f

    const v7, 0x7f02022d

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 99
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 102
    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->c(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v4}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->b(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->f(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v4}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->b(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)I

    move-result v4

    aget-object v3, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->d(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->e(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v6}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->b(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->g(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v4}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->b(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)I

    move-result v4

    aget-object v3, v3, v4

    const v4, 0x7f02022f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 107
    .end local v1    # "e1":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->c(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v4}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->b(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 108
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->f(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v4}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->b(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)I

    move-result v4

    aget-object v3, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->h(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->e(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v6}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->b(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->g(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v4}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->b(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)I

    move-result v4

    aget-object v3, v3, v4

    const v4, 0x7f02022d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 110
    :cond_2
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->c(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v4}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->b(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->f(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v4}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->b(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)I

    move-result v4

    aget-object v3, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->i(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->e(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v6}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->b(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->g(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v4}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->b(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)I

    move-result v4

    aget-object v3, v3, v4

    const v4, 0x7f020233

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 121
    :pswitch_1
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->j(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 122
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->c(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v4}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->b(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 123
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->k(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->d(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->e(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v6}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->b(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->l(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 126
    :cond_3
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->k(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->h(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->e(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v6}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->b(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->l(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 130
    :cond_4
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    const v4, 0x7f0d00f1

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    const v6, 0x7f0d00f0

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/lenovo/safecenter/utils/MyUtils;->alert(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 137
    :pswitch_2
    :try_start_2
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->m(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 138
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->n(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f0200df

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 139
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->o(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)V

    .line 141
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->p(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportTrustApp(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 148
    :catch_1
    move-exception v1

    .line 149
    .restart local v1    # "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 144
    .end local v1    # "e1":Ljava/lang/Exception;
    :cond_5
    :try_start_3
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->n(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f0200de

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 145
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->o(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 156
    :pswitch_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_4
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->q(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 157
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->q(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    const-string v4, "internet"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 156
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 160
    :cond_6
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->f(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Landroid/widget/TextView;

    move-result-object v3

    aget-object v3, v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->d(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->e(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->g(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Landroid/widget/ImageView;

    move-result-object v3

    aget-object v3, v3, v2

    const v4, 0x7f02022f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 164
    :catch_2
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 172
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    :pswitch_4
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    :try_start_5
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->q(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 173
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->q(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    const-string v4, "internet"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 172
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 176
    :cond_7
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->f(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Landroid/widget/TextView;

    move-result-object v3

    aget-object v3, v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->h(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->e(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->g(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Landroid/widget/ImageView;

    move-result-object v3

    aget-object v3, v3, v2

    const v4, 0x7f02022d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 180
    :catch_3
    move-exception v0

    .line 181
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 186
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    :pswitch_5
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->r(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_8

    .line 187
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->r(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 189
    :cond_8
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->r(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 193
    :pswitch_6
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    .line 195
    :try_start_6
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->s(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 199
    :goto_5
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    const v4, 0x7f0d0150

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 200
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->t(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v4}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->p(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/lenovo/safecenter/database/AppDatabase;->updateApp_isupload(Ljava/lang/String;I)V

    .line 201
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->u(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0d0162

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 202
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->u(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 196
    :catch_4
    move-exception v0

    .line 197
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 204
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 206
    :try_start_7
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->s(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 210
    :goto_6
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    const v4, 0x7f0d013c

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 211
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->u(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 207
    :catch_5
    move-exception v0

    .line 208
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 217
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_7
    :try_start_8
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 219
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->q(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 220
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->c(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 221
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->f(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Landroid/widget/TextView;

    move-result-object v3

    aget-object v3, v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->d(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->e(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->g(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Landroid/widget/ImageView;

    move-result-object v3

    aget-object v3, v3, v2

    const v4, 0x7f02022f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 219
    :cond_a
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 223
    :cond_b
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->c(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 224
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->f(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Landroid/widget/TextView;

    move-result-object v3

    aget-object v3, v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->h(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->e(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->g(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Landroid/widget/ImageView;

    move-result-object v3

    aget-object v3, v3, v2

    const v4, 0x7f02022d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_8

    .line 231
    .end local v2    # "i":I
    :catch_6
    move-exception v1

    .line 232
    .restart local v1    # "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 226
    .end local v1    # "e1":Ljava/lang/Exception;
    .restart local v2    # "i":I
    :cond_c
    :try_start_9
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->c(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 227
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->f(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Landroid/widget/TextView;

    move-result-object v3

    aget-object v3, v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->i(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->e(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->g(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Landroid/widget/ImageView;

    move-result-object v3

    aget-object v3, v3, v2

    const v4, 0x7f020233

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_8

    .line 237
    .end local v2    # "i":I
    :pswitch_8
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->v(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->w(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 99
    nop

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
        :pswitch_8
    .end packed-switch
.end method
