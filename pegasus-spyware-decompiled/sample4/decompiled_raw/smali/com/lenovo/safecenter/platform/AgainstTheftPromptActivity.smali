.class public Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;
.super Landroid/app/Activity;
.source "AgainstTheftPromptActivity.java"


# instance fields
.field a:Lcom/lenovo/safecenter/dialog/CustomDialog;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/EditText;

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0902bc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->c:Landroid/widget/EditText;

    const v2, 0x7f0d00ae

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(I)V

    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->a:Lcom/lenovo/safecenter/dialog/CustomDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d00f2

    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00fc

    new-instance v2, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$5;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$5;-><init>(Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00fd

    new-instance v2, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$4;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$4;-><init>(Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->create()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->a:Lcom/lenovo/safecenter/dialog/CustomDialog;

    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->a:Lcom/lenovo/safecenter/dialog/CustomDialog;

    new-instance v1, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$6;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$6;-><init>(Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->a:Lcom/lenovo/safecenter/dialog/CustomDialog;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->a:Lcom/lenovo/safecenter/dialog/CustomDialog;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog;->show()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->c:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;

    .prologue
    .line 25
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00f1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d016d

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$7;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$7;-><init>(Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-void
.end method


# virtual methods
.method public isMobileNO(Ljava/lang/String;)Z
    .locals 3
    .param p1, "mobiles"    # Ljava/lang/String;

    .prologue
    .line 129
    const-string v2, "^((\\+86)|(86))?((13[0-9])|(15[^4,\\D])|(18[0-9]))\\d{8}$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 130
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 131
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->setContentView(I)V

    .line 39
    const v1, 0x7f090590

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 40
    .local v0, "topBar":Landroid/widget/TextView;
    const v1, 0x7f0d00a4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 41
    const v1, 0x7f0905ad

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$1;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$1;-><init>(Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->f:Landroid/app/ActivityManager;

    .line 49
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getSafePhoneNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->d:Ljava/lang/String;

    .line 50
    const v1, 0x7f090024

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->b:Landroid/widget/TextView;

    .line 51
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->b:Landroid/widget/TextView;

    new-instance v2, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$2;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$2;-><init>(Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v1, 0x7f090019

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->e:Landroid/widget/ImageView;

    .line 58
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->e:Landroid/widget/ImageView;

    new-instance v2, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$3;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$3;-><init>(Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 65
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 69
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 70
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->f:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->setResult(I)V

    .line 72
    invoke-virtual {p0}, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->finish()V

    .line 74
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 75
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 79
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 81
    return-void
.end method
