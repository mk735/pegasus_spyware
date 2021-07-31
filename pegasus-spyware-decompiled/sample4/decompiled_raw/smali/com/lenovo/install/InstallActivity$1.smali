.class final Lcom/lenovo/install/InstallActivity$1;
.super Landroid/os/Handler;
.source "InstallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/install/InstallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/install/InstallActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/install/InstallActivity;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v3, 0x7f070010

    const v8, 0x7f02010e

    const v7, 0x7f02010d

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 121
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 254
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 123
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1, v6}, Lcom/lenovo/install/InstallActivity;->a(Lcom/lenovo/install/InstallActivity;Z)Z

    .line 124
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->a(Lcom/lenovo/install/InstallActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 125
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->b(Lcom/lenovo/install/InstallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 126
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->c(Lcom/lenovo/install/InstallActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->d(Lcom/lenovo/install/InstallActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020296

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 128
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->e(Lcom/lenovo/install/InstallActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0d076e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 129
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->e(Lcom/lenovo/install/InstallActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-virtual {v2}, Lcom/lenovo/install/InstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->f(Lcom/lenovo/install/InstallActivity;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-virtual {v1}, Lcom/lenovo/install/InstallActivity;->initAfterScan()V

    goto :goto_0

    .line 136
    :pswitch_2
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1, v5}, Lcom/lenovo/install/InstallActivity;->a(Lcom/lenovo/install/InstallActivity;Z)Z

    .line 137
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->a(Lcom/lenovo/install/InstallActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 138
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->b(Lcom/lenovo/install/InstallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 139
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->c(Lcom/lenovo/install/InstallActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 140
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->d(Lcom/lenovo/install/InstallActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020331

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 141
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->e(Lcom/lenovo/install/InstallActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0d076f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 142
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->e(Lcom/lenovo/install/InstallActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-virtual {v2}, Lcom/lenovo/install/InstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->f(Lcom/lenovo/install/InstallActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v2, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    invoke-virtual {v2, v1}, Lcom/lenovo/install/InstallActivity;->showVirusDesc(Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;)V

    .line 146
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-virtual {v1}, Lcom/lenovo/install/InstallActivity;->initAfterScan()V

    goto/16 :goto_0

    .line 150
    :pswitch_3
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->g(Lcom/lenovo/install/InstallActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 151
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->h(Lcom/lenovo/install/InstallActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 152
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->i(Lcom/lenovo/install/InstallActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 153
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->h(Lcom/lenovo/install/InstallActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-virtual {v2}, Lcom/lenovo/install/InstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->i(Lcom/lenovo/install/InstallActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-virtual {v2}, Lcom/lenovo/install/InstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    const-string v2, "privacy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 158
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    const v2, 0x7f090204

    const v3, 0x7f090377

    const v4, 0x7f090378

    invoke-static {v1, v0, v2, v3, v4}, Lcom/lenovo/install/InstallActivity;->a(Lcom/lenovo/install/InstallActivity;IIII)V

    .line 159
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-nez v1, :cond_3

    .line 160
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->k(Lcom/lenovo/install/InstallActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 165
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    iget-object v2, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v2}, Lcom/lenovo/install/InstallActivity;->l(Lcom/lenovo/install/InstallActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/install/InstallActivity;->a(Lcom/lenovo/install/InstallActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    const v2, 0x7f090376

    invoke-virtual {v1, v2}, Lcom/lenovo/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v2}, Lcom/lenovo/install/InstallActivity;->m(Lcom/lenovo/install/InstallActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 161
    :cond_3
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-ne v1, v5, :cond_1

    .line 162
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->k(Lcom/lenovo/install/InstallActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 168
    :cond_4
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 169
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    const v2, 0x7f09020a

    const v3, 0x7f090379

    const v4, 0x7f09037a

    invoke-static {v1, v0, v2, v3, v4}, Lcom/lenovo/install/InstallActivity;->a(Lcom/lenovo/install/InstallActivity;IIII)V

    .line 170
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-nez v1, :cond_5

    .line 171
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->k(Lcom/lenovo/install/InstallActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 172
    :cond_5
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-ne v1, v5, :cond_2

    .line 173
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->k(Lcom/lenovo/install/InstallActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 176
    :cond_6
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    const-string v2, "device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 177
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    const v2, 0x7f09037b

    const v3, 0x7f09037c

    const v4, 0x7f09037d

    invoke-static {v1, v0, v2, v3, v4}, Lcom/lenovo/install/InstallActivity;->a(Lcom/lenovo/install/InstallActivity;IIII)V

    .line 178
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-nez v1, :cond_7

    .line 179
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->k(Lcom/lenovo/install/InstallActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 180
    :cond_7
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-ne v1, v5, :cond_2

    .line 181
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->k(Lcom/lenovo/install/InstallActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 184
    :cond_8
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    const-string v2, "call_phone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 185
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    const v2, 0x7f0901fd

    const v3, 0x7f09037e

    const v4, 0x7f09037f

    invoke-static {v1, v0, v2, v3, v4}, Lcom/lenovo/install/InstallActivity;->a(Lcom/lenovo/install/InstallActivity;IIII)V

    .line 186
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-nez v1, :cond_9

    .line 187
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->k(Lcom/lenovo/install/InstallActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 188
    :cond_9
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-ne v1, v5, :cond_2

    .line 189
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->k(Lcom/lenovo/install/InstallActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 192
    :cond_a
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    const-string v2, "sendmessage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    const v2, 0x7f090270

    const v3, 0x7f090380

    const v4, 0x7f090381

    invoke-static {v1, v0, v2, v3, v4}, Lcom/lenovo/install/InstallActivity;->a(Lcom/lenovo/install/InstallActivity;IIII)V

    .line 194
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->n(Lcom/lenovo/install/InstallActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-nez v1, :cond_b

    .line 196
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->n(Lcom/lenovo/install/InstallActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0d0111

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 197
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->k(Lcom/lenovo/install/InstallActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v0

    const v2, 0x7f020230

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 198
    :cond_b
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-ne v1, v5, :cond_c

    .line 199
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->n(Lcom/lenovo/install/InstallActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0d0112

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 200
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->k(Lcom/lenovo/install/InstallActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v0

    const v2, 0x7f02022e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 201
    :cond_c
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 202
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->n(Lcom/lenovo/install/InstallActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0d01bb

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 203
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->k(Lcom/lenovo/install/InstallActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v0

    const v2, 0x7f020234

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 211
    .end local v0    # "i":I
    :pswitch_4
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v2}, Lcom/lenovo/install/InstallActivity;->o(Lcom/lenovo/install/InstallActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    const-string v2, "sendmessage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 212
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v2}, Lcom/lenovo/install/InstallActivity;->o(Lcom/lenovo/install/InstallActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-nez v1, :cond_d

    .line 213
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->n(Lcom/lenovo/install/InstallActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0d0111

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 214
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->k(Lcom/lenovo/install/InstallActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v2}, Lcom/lenovo/install/InstallActivity;->o(Lcom/lenovo/install/InstallActivity;)I

    move-result v2

    aget-object v1, v1, v2

    const v2, 0x7f020230

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 215
    :cond_d
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v2}, Lcom/lenovo/install/InstallActivity;->o(Lcom/lenovo/install/InstallActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-ne v1, v5, :cond_e

    .line 216
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->n(Lcom/lenovo/install/InstallActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0d0112

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 217
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->k(Lcom/lenovo/install/InstallActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v2}, Lcom/lenovo/install/InstallActivity;->o(Lcom/lenovo/install/InstallActivity;)I

    move-result v2

    aget-object v1, v1, v2

    const v2, 0x7f02022e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 219
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->p(Lcom/lenovo/install/InstallActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "next_notip"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    iget-object v2, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v3}, Lcom/lenovo/install/InstallActivity;->o(Lcom/lenovo/install/InstallActivity;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/lenovo/install/InstallActivity;->changePopState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    :cond_e
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v2}, Lcom/lenovo/install/InstallActivity;->o(Lcom/lenovo/install/InstallActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 222
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->n(Lcom/lenovo/install/InstallActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0d01bb

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 223
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->k(Lcom/lenovo/install/InstallActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v2}, Lcom/lenovo/install/InstallActivity;->o(Lcom/lenovo/install/InstallActivity;)I

    move-result v2

    aget-object v1, v1, v2

    const v2, 0x7f020234

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 226
    :cond_f
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v2}, Lcom/lenovo/install/InstallActivity;->o(Lcom/lenovo/install/InstallActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-nez v1, :cond_10

    .line 227
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->k(Lcom/lenovo/install/InstallActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v2}, Lcom/lenovo/install/InstallActivity;->o(Lcom/lenovo/install/InstallActivity;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 228
    :cond_10
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v2}, Lcom/lenovo/install/InstallActivity;->o(Lcom/lenovo/install/InstallActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-ne v1, v5, :cond_0

    .line 229
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->k(Lcom/lenovo/install/InstallActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v2}, Lcom/lenovo/install/InstallActivity;->o(Lcom/lenovo/install/InstallActivity;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 231
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->p(Lcom/lenovo/install/InstallActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "next_notip"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    iget-object v2, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v3}, Lcom/lenovo/install/InstallActivity;->o(Lcom/lenovo/install/InstallActivity;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/lenovo/install/InstallActivity;->changePopState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 239
    :pswitch_5
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->g(Lcom/lenovo/install/InstallActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 241
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->i(Lcom/lenovo/install/InstallActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 242
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->h(Lcom/lenovo/install/InstallActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 243
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->h(Lcom/lenovo/install/InstallActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-virtual {v2}, Lcom/lenovo/install/InstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->i(Lcom/lenovo/install/InstallActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-virtual {v2}, Lcom/lenovo/install/InstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 246
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->q(Lcom/lenovo/install/InstallActivity;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 247
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->r(Lcom/lenovo/install/InstallActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0d0772

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 248
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->s(Lcom/lenovo/install/InstallActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 250
    :cond_11
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->r(Lcom/lenovo/install/InstallActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0d0773

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 251
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->s(Lcom/lenovo/install/InstallActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$1;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v1}, Lcom/lenovo/install/InstallActivity;->t(Lcom/lenovo/install/InstallActivity;)V

    goto/16 :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
