.class public Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;
.super Lcom/lenovo/safecenter/platform/BaseTitleActivity;
.source "AntiVirusSetting.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;

    .prologue
    .line 24
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00f2

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d04c4

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setColorPositiveButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setColorNegativeButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$2;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$2;-><init>(Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    new-instance v2, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$1;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$1;-><init>(Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-void
.end method

.method static synthetic b(Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;

    .prologue
    .line 24
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d01bb

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0549

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setColorPositiveButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setColorNegativeButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$4;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$4;-><init>(Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    new-instance v2, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$3;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$3;-><init>(Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-void
.end method


# virtual methods
.method public getSpan(I)Landroid/text/SpannableString;
    .locals 5
    .param p1, "resID"    # I

    .prologue
    const/4 v4, 0x0

    .line 201
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 202
    .local v0, "spannable":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 203
    return-object v0
.end method

.method public getSpan_str(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 5
    .param p1, "res"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 216
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 217
    .local v0, "spannable":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 218
    return-object v0
.end method

.method public getSpan_title(I)Landroid/text/SpannableString;
    .locals 5
    .param p1, "resID"    # I

    .prologue
    const/4 v4, 0x0

    .line 209
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 210
    .local v0, "spannable":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 211
    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    const v4, 0x7f0200df

    const v3, 0x7f0200de

    const/4 v2, 0x1

    .line 73
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isRealtimeProtectOpen"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 75
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->d:Landroid/widget/TextView;

    const v1, 0x7f0d003c

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->getSpan(I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "netScan_switch"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 87
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    :goto_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "netScan_weekservice"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 95
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    :goto_2
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->d:Landroid/widget/TextView;

    const v1, 0x7f0d003d

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->getSpan(I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method public onBtnclick()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$5;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$5;-><init>(Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$6;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$6;-><init>(Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$7;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$7;-><init>(Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904b9

    if-ne v0, v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->finish()V

    .line 69
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f030123

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->setContentView(I)V

    .line 36
    const v0, 0x7f020286

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0d01cc

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 37
    const v0, 0x7f0900fd

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->a:Landroid/widget/ImageView;

    .line 38
    const v0, 0x7f090100

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->d:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f0900ff

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->f:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f0905f8

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->b:Landroid/widget/ImageView;

    .line 41
    const v0, 0x7f0905fa

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->e:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f0905f9

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->g:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->g:Landroid/widget/TextView;

    const v1, 0x7f0d0418

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->getSpan_title(I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->e:Landroid/widget/TextView;

    const v1, 0x7f0d0419

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->getSpan(I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->f:Landroid/widget/TextView;

    const v1, 0x7f0d02b5

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->getSpan_title(I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    const v0, 0x7f0905fd

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->c:Landroid/widget/ImageView;

    .line 47
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->init()V

    .line 48
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->onBtnclick()V

    .line 49
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 53
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 54
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onPause()V

    .line 55
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 59
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 60
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onResume()V

    .line 61
    return-void
.end method
