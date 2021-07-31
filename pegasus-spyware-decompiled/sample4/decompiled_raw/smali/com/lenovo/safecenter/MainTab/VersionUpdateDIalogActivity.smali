.class public Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity;
.super Landroid/app/Activity;
.source "VersionUpdateDIalogActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v4, 0x7f030067

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity;->setContentView(I)V

    .line 22
    sget v4, Lcom/lenovo/safecenter/utils/Const;->SDK_VERSION:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_0

    .line 23
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity;->setFinishOnTouchOutside(Z)V

    .line 26
    :cond_0
    const v4, 0x7f09000c

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 27
    .local v3, "title":Landroid/widget/TextView;
    const v4, 0x7f0d08bb

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 29
    const v4, 0x7f0902a8

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 30
    .local v1, "message":Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0d08bd

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "versionname"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0d08be

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "filesize"

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {p0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0d08bf

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "appinfo"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    const v4, 0x7f0902ad

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 41
    .local v2, "okbtn":Landroid/widget/TextView;
    const v4, 0x7f0d08c0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 42
    new-instance v4, Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity$1;

    invoke-direct {v4, p0}, Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity$1;-><init>(Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v4, 0x7f0902ac

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 61
    const v4, 0x7f0902ab

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    .local v0, "cancelbtn":Landroid/widget/TextView;
    const v4, 0x7f0d0047

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 63
    new-instance v4, Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity$2;

    invoke-direct {v4, p0}, Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity$2;-><init>(Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 81
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 83
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 76
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 77
    return-void
.end method
