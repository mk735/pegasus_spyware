.class public Lcom/lenovo/safecenter/lenovoAntiSpam/newview/ShowConfirm;
.super Landroid/app/Activity;
.source "ShowConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 104
    :goto_0
    :pswitch_0
    return-void

    .line 87
    :pswitch_1
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/ShowConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cloudscan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-static {}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportUserActionCloudKillVirusCanUpdateNotice()V

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/ShowConfirm;->startActivity(Landroid/content/Intent;)V

    .line 95
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/ShowConfirm;->finish()V

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/ShowConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nullnumber"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;

    invoke-direct {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;-><init>()V

    const-string v1, "getnonumber"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    .line 99
    :pswitch_2
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/ShowConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cloudscan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    invoke-static {}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportUserActionIgnoreVirusCanUpdateNotice()V

    .line 103
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/ShowConfirm;->finish()V

    goto :goto_0

    .line 85
    nop

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
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v7, 0x7f030067

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/ShowConfirm;->setContentView(I)V

    .line 32
    sget v7, Lcom/lenovo/safecenter/utils/Const;->SDK_VERSION:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_0

    .line 33
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/ShowConfirm;->setFinishOnTouchOutside(Z)V

    .line 36
    :cond_0
    const v7, 0x7f0902a5

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/ShowConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 37
    .local v5, "rel_title":Landroid/widget/RelativeLayout;
    const/16 v7, 0x11

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 38
    const v7, 0x7f0902a6

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/ShowConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 39
    .local v2, "img":Landroid/widget/ImageView;
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    const v7, 0x7f02025a

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    const v7, 0x7f09000c

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/ShowConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 42
    .local v6, "title":Landroid/widget/TextView;
    const v7, 0x7f0d05cc

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 44
    const v7, 0x7f0902ad

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/ShowConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 45
    .local v4, "okbtn":Landroid/widget/TextView;
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v7, 0x7f0902ac

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/ShowConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 50
    const v7, 0x7f0902ab

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/ShowConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    .local v0, "cancelbtn":Landroid/widget/TextView;
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
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/ShowConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "from"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "cloudscan"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 60
    const v7, 0x7f0d074c

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/ShowConfirm;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/ShowConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "count"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const v7, 0x7f0d0302

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 62
    const v7, 0x7f0d074d

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 76
    :cond_1
    :goto_0
    const v7, 0x7f0902a7

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/ShowConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 77
    const v7, 0x7f0902a7

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/ShowConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    const/16 v7, 0xa

    const/4 v8, 0x5

    const/16 v9, 0xa

    const/4 v10, 0x5

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 81
    return-void

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/ShowConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "from"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "nullnumber"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 66
    const v7, 0x7f0d074b

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    .line 67
    const v7, 0x7f0d058f

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 68
    const v7, 0x7f0d074a

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 112
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 114
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 118
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 120
    return-void
.end method
