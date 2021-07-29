.class public Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstHarssActivity;
.super Landroid/app/Activity;
.source "FirstHarssActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstHarssActivity;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 68
    :pswitch_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstHarssActivity;->finish()V

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x7f0902ad
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x7f0902a7

    const/16 v10, 0xa

    const/4 v9, 0x5

    const/16 v7, 0x8

    const/4 v8, 0x0

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v5, 0x7f030067

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstHarssActivity;->setContentView(I)V

    .line 26
    sget v5, Lcom/lenovo/safecenter/utils/Const;->SDK_VERSION:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_0

    .line 27
    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstHarssActivity;->setFinishOnTouchOutside(Z)V

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstHarssActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 31
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstHarssActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "from"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstHarssActivity;->a:Ljava/lang/String;

    .line 33
    :cond_1
    const v5, 0x7f0902a5

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstHarssActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 34
    .local v3, "rel_title":Landroid/widget/RelativeLayout;
    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 35
    const v5, 0x7f0902a6

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstHarssActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 36
    .local v1, "img":Landroid/widget/ImageView;
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    const v5, 0x7f09000c

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstHarssActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 39
    .local v4, "title":Landroid/widget/TextView;
    const v5, 0x7f0d05cc

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 41
    const v5, 0x7f0902ad

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstHarssActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 42
    .local v2, "okbtn":Landroid/widget/TextView;
    const v5, 0x7f0d0489

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 43
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const v5, 0x7f0902ac

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstHarssActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 47
    const v5, 0x7f0902ab

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstHarssActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 49
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030079

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "contentView":Landroid/view/View;
    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstHarssActivity;->a:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 52
    const v5, 0x7f0902e1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 58
    :goto_0
    invoke-virtual {p0, v11}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstHarssActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 59
    invoke-virtual {p0, v11}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstHarssActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    invoke-virtual {v0, v10, v9, v10, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 62
    return-void

    .line 54
    :cond_2
    const v5, 0x7f090204

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 55
    const v5, 0x7f0902b9

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0d0731

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 84
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 86
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 78
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 80
    return-void
.end method
