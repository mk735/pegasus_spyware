.class public Lcom/lenovo/safecenter/MainTab/LabUpdateDialogActivity;
.super Landroid/app/Activity;
.source "LabUpdateDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 110
    :goto_0
    :pswitch_0
    return-void

    .line 105
    :pswitch_1
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->startServiceUpdateLab(Landroid/content/Context;)V

    .line 106
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/LabUpdateDialogActivity;->finish()V

    goto :goto_0

    .line 109
    :pswitch_2
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/LabUpdateDialogActivity;->finish()V

    goto :goto_0

    .line 103
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
    const v11, 0x7f0902a7

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v6, 0x7f030067

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/MainTab/LabUpdateDialogActivity;->setContentView(I)V

    .line 33
    sget v6, Lcom/lenovo/safecenter/utils/Const;->SDK_VERSION:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_0

    .line 34
    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/MainTab/LabUpdateDialogActivity;->setFinishOnTouchOutside(Z)V

    .line 37
    :cond_0
    const v6, 0x7f09000c

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/MainTab/LabUpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 38
    .local v5, "title":Landroid/widget/TextView;
    const v6, 0x7f0d03b8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 40
    const v6, 0x7f0902ad

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/MainTab/LabUpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 41
    .local v4, "okbtn":Landroid/widget/TextView;
    const v6, 0x7f0d04b5

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 42
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const v6, 0x7f0902ac

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/MainTab/LabUpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 47
    const v6, 0x7f0902ab

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/MainTab/LabUpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 48
    .local v1, "cancelbtn":Landroid/widget/TextView;
    const v6, 0x7f0d0576

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 49
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03006c

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 53
    .local v2, "contentView":Landroid/view/View;
    const v6, 0x7f0902b9

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 54
    .local v3, "note":Landroid/widget/TextView;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 55
    .local v0, "canUpdatelabs":Ljava/lang/StringBuffer;
    invoke-static {v9}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->getQueryLabStatus(I)I

    move-result v6

    if-nez v6, :cond_1

    .line 56
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const v6, 0x7f0d037d

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/MainTab/LabUpdateDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    :cond_1
    invoke-static {v10}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->getQueryLabStatus(I)I

    move-result v6

    if-nez v6, :cond_3

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-eqz v6, :cond_2

    .line 61
    const-string v6, "\u3001"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    :cond_2
    const v6, 0x7f0d05a4

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/MainTab/LabUpdateDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    :cond_3
    const/4 v6, 0x3

    invoke-static {v6}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->getQueryLabStatus(I)I

    move-result v6

    if-nez v6, :cond_5

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-eqz v6, :cond_4

    .line 69
    const-string v6, "\u3001"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    :cond_4
    const v6, 0x7f0d056f

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/MainTab/LabUpdateDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    :cond_5
    const v6, 0x7f0d056e

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/MainTab/LabUpdateDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p0, v11}, Lcom/lenovo/safecenter/MainTab/LabUpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 95
    invoke-virtual {p0, v11}, Lcom/lenovo/safecenter/MainTab/LabUpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 118
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 120
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 125
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 126
    return-void
.end method
