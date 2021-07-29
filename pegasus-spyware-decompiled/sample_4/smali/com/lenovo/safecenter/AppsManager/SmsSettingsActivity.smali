.class public Lcom/lenovo/safecenter/AppsManager/SmsSettingsActivity;
.super Landroid/app/Activity;
.source "SmsSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/lenovo/safecenter/utils/DialogUtil$SettingNumberDialogListener;


# static fields
.field public static final DIALOG_SET_MONTH_LIMIT_SMS:I = 0x2

.field public static final DIALOG_SET_TRAFFIC_SMS_QUERY:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    const v5, 0x7f0200de

    const/4 v4, 0x0

    .line 53
    const v2, 0x7f09057e

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/AppsManager/SmsSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 54
    .local v1, "text":Landroid/widget/TextView;
    const v2, 0x7f09057f

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/AppsManager/SmsSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 55
    .local v0, "ImgMonthWarm":Landroid/widget/ImageView;
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitSMS()I

    move-result v2

    if-nez v2, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/SmsSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 60
    invoke-static {v4}, Lcom/lenovo/safecenter/utils/Const;->setOutMonthLimitSMSWarn(Z)V

    .line 61
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/SmsSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 66
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->isOutMonthLimitSMSWarn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    const v2, 0x7f0200df

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 77
    const v1, 0x7f09057d

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/SmsSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 79
    .local v0, "monthLimitSMS":Landroid/widget/TextView;
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitSMS()I

    move-result v1

    if-nez v1, :cond_0

    .line 80
    const v1, 0x7f0d0586

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/SmsSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :goto_0
    invoke-direct {p0}, Lcom/lenovo/safecenter/AppsManager/SmsSettingsActivity;->a()V

    .line 85
    return-void

    .line 82
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitSMS()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0d0364

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/AppsManager/SmsSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 100
    :sswitch_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/SmsSettingsActivity;->finish()V

    goto :goto_0

    .line 105
    :sswitch_1
    const/4 v0, 0x2

    invoke-static {p0, v0, p0}, Lcom/lenovo/safecenter/utils/DialogUtil;->createSettingNumberDialog(Landroid/content/Context;ILcom/lenovo/safecenter/utils/DialogUtil$SettingNumberDialogListener;)Landroid/app/Dialog;

    goto :goto_0

    .line 110
    :sswitch_2
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->isOutMonthLimitSMSWarn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Const;->setOutMonthLimitSMSWarn(Z)V

    .line 111
    invoke-direct {p0}, Lcom/lenovo/safecenter/AppsManager/SmsSettingsActivity;->a()V

    .line 112
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/SmsUtil;->statisticsSmsSent(Landroid/content/Context;)V

    goto :goto_0

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 98
    :sswitch_data_0
    .sparse-switch
        0x7f09057b -> :sswitch_1
        0x7f09057f -> :sswitch_2
        0x7f0905ad -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f030111

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/SmsSettingsActivity;->setContentView(I)V

    .line 42
    const v0, 0x7f090590

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/SmsSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d03b0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 44
    const v0, 0x7f0905ad

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/SmsSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const v0, 0x7f09057b

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/SmsSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-direct {p0}, Lcom/lenovo/safecenter/AppsManager/SmsSettingsActivity;->b()V

    .line 49
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 88
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 90
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 93
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 95
    return-void
.end method

.method public onSettingNumberDialogCancel(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "number"    # I

    .prologue
    .line 146
    return-void
.end method

.method public onSettingNumberDialogOK(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "number"    # I

    .prologue
    .line 131
    packed-switch p1, :pswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 133
    :pswitch_0
    invoke-static {p2}, Lcom/lenovo/safecenter/utils/Const;->setMonthLimitSMS(I)V

    .line 134
    invoke-direct {p0}, Lcom/lenovo/safecenter/AppsManager/SmsSettingsActivity;->b()V

    .line 135
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/SmsUtil;->statisticsSmsSent(Landroid/content/Context;)V

    .line 136
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeRefreshSmsSentNumCurrMonth()V

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
