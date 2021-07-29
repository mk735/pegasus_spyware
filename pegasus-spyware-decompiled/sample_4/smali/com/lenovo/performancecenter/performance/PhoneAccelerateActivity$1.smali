.class final Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;
.super Landroid/os/Handler;
.source "PhoneAccelerateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v6, 0x7f0d086f

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 91
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 93
    :pswitch_0
    invoke-static {}, Lcom/lenovo/safecenter/utils/WflUtils;->isRoot()Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->b(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d08b2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 97
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->b(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d089e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->b(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    const v2, 0x7f0d0861

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 105
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->c(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->d(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->e(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)V

    .line 110
    const-string v0, "HomePage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRunningCount == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v2}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->f(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cacheAppList.size() == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v2}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->g(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->f(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->g(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 112
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->h(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->i(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d087f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->j(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->j(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d089c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->j(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->h(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0881

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->h(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->i(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d087c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->j(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->j(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d089a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->j(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 128
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0, v3}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;Z)Z

    .line 129
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->k(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->k(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 130
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->l(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 131
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->f(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 132
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->m(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d089d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 134
    :cond_4
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->m(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    const v2, 0x7f0d0896

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->f(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 139
    :pswitch_3
    const-string v0, "HomePage"

    const-string v1, "handler receive, update ui"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->n(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)V

    goto/16 :goto_0

    .line 143
    :pswitch_4
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0, v3}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->b(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;Z)Z

    .line 144
    const-string v0, "HomePage"

    const-string v1, "Handler.receive ---> totalCacheSize == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->k(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->k(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 146
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->o(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-virtual {v1, v6}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 149
    :pswitch_5
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0, v3}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->b(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;Z)Z

    .line 150
    const-string v0, "HomePage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage ---> cacheAppSize == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v2}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->g(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->k(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->k(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 152
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->g(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 153
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->o(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-virtual {v1, v6}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 155
    :cond_5
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->o(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d086e

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->g(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
