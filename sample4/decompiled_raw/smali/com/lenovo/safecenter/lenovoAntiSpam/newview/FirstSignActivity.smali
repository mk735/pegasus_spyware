.class public Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstSignActivity;
.super Landroid/app/Activity;
.source "FirstSignActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 86
    :goto_0
    :pswitch_0
    return-void

    .line 75
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    const-string v2, "number"

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstSignActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "number"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v2, "wastetime"

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstSignActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "wastetime"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstSignActivity;->startActivity(Landroid/content/Intent;)V

    .line 80
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstSignActivity;->finish()V

    goto :goto_0

    .line 83
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    .line 84
    .local v0, "db":Lcom/lenovo/safecenter/database/AppDatabase;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstSignActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "number"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/database/AppDatabase;->insertHarassPhone(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstSignActivity;->finish()V

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x7f0902ab
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v7, 0x7f030067

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstSignActivity;->setContentView(I)V

    .line 31
    sget v7, Lcom/lenovo/safecenter/utils/Const;->SDK_VERSION:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_0

    .line 32
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstSignActivity;->setFinishOnTouchOutside(Z)V

    .line 35
    :cond_0
    const v7, 0x7f0902a5

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstSignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 36
    .local v5, "rel_title":Landroid/widget/RelativeLayout;
    const/16 v7, 0x10

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 37
    const v7, 0x7f0902a6

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstSignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 38
    .local v2, "img":Landroid/widget/ImageView;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    const v7, 0x7f02025a

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    const v7, 0x7f09000c

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstSignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 41
    .local v6, "title":Landroid/widget/TextView;
    const v7, 0x7f0d04ec

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 43
    const v7, 0x7f0902ad

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstSignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 44
    .local v4, "okbtn":Landroid/widget/TextView;
    const v7, 0x7f0d058e

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 45
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v7, 0x7f0902ac

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstSignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 50
    const v7, 0x7f0902ab

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstSignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    .local v0, "cancelbtn":Landroid/widget/TextView;
    const v7, 0x7f0d058f

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 52
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03006c

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 56
    .local v1, "contentView":Landroid/view/View;
    const v7, 0x7f0902b9

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 58
    .local v3, "note":Landroid/widget/TextView;
    const v7, 0x7f0d04f9

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstSignActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstSignActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "number"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const v7, 0x7f0902a7

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstSignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 65
    const v7, 0x7f0902a7

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstSignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    const/16 v7, 0xa

    const/4 v8, 0x5

    const/16 v9, 0xa

    const/4 v10, 0x5

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 69
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 94
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 96
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 100
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 102
    return-void
.end method
