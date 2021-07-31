.class public Lcom/lenovo/safecenter/MainTab/AppLockMustUpdateDialogActivity;
.super Landroid/app/Activity;
.source "AppLockMustUpdateDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    new-instance v0, Lcom/lenovo/safecenter/MainTab/AppLockMustUpdateDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/MainTab/AppLockMustUpdateDialogActivity$1;-><init>(Lcom/lenovo/safecenter/MainTab/AppLockMustUpdateDialogActivity;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/AppLockMustUpdateDialogActivity;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 109
    :goto_0
    :pswitch_0
    return-void

    .line 102
    :pswitch_1
    const-string v0, "LenovoSafeBox455.apk"

    const-string v1, "com.lenovo.safebox"

    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/AppLockMustUpdateDialogActivity;->a:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v0, v1, p0, v2, v3}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->copyAssetsFilesInstall(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 105
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/AppLockMustUpdateDialogActivity;->finish()V

    goto :goto_0

    .line 108
    :pswitch_2
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/AppLockMustUpdateDialogActivity;->finish()V

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x7f0902ab
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f0902a7

    const/16 v6, 0x8

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v4, 0x7f030067

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/MainTab/AppLockMustUpdateDialogActivity;->setContentView(I)V

    .line 50
    sget v4, Lcom/lenovo/safecenter/utils/Const;->SDK_VERSION:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_0

    .line 51
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/MainTab/AppLockMustUpdateDialogActivity;->setFinishOnTouchOutside(Z)V

    .line 54
    :cond_0
    const v4, 0x7f09000c

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/MainTab/AppLockMustUpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 55
    .local v3, "title":Landroid/widget/TextView;
    const v4, 0x7f0d03b8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 57
    const v4, 0x7f0902ad

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/MainTab/AppLockMustUpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 58
    .local v2, "okbtn":Landroid/widget/TextView;
    const v4, 0x7f0d05f7

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 59
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v4, 0x7f0902ac

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/MainTab/AppLockMustUpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 63
    const v4, 0x7f0902ab

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/MainTab/AppLockMustUpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 69
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03006c

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "contentView":Landroid/view/View;
    const v4, 0x7f0902b9

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 73
    .local v1, "note":Landroid/widget/TextView;
    const v4, 0x7f0d0716

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/MainTab/AppLockMustUpdateDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/MainTab/AppLockMustUpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 92
    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/MainTab/AppLockMustUpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 117
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 118
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 119
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 124
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 125
    return-void
.end method
