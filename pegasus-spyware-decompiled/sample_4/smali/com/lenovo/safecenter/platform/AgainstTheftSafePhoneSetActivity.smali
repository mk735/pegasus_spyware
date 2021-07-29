.class public Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;
.super Landroid/app/Activity;
.source "AgainstTheftSafePhoneSetActivity.java"


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/EditText;

.field private c:Landroid/content/SharedPreferences;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Landroid/telephony/TelephonyManager;

.field private h:Landroid/app/ActivityManager;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->f:I

    return p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    .prologue
    .line 31
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00f2

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d016e

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00fc

    new-instance v2, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$5;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$5;-><init>(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00fd

    new-instance v2, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$4;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$4;-><init>(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-void
.end method

.method static synthetic e(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->i:Z

    return v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->g:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    .prologue
    .line 31
    iget v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->f:I

    return v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    .prologue
    .line 31
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00f1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d016d

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$3;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$3;-><init>(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-void
.end method

.method static synthetic i(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    invoke-virtual {p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "first_set_phone"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->g:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->f:I

    iget v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->f:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->f:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->g:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "ORG_SIM_NUMBER"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sim_alarm_sms"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sim_alarm_screen"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "to_angist"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->finish()V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sim_alarm_sms"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sim_alarm_screen"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->finish()V

    goto :goto_1
.end method


# virtual methods
.method public isMobileNO(Ljava/lang/String;)Z
    .locals 3
    .param p1, "mobiles"    # Ljava/lang/String;

    .prologue
    .line 160
    const-string v2, "^((\\+86)|(86))?((13[0-9])|(15[^4,\\D])|(18[0-9]))\\d{8}$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 161
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 162
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 47
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->g:Landroid/telephony/TelephonyManager;

    .line 48
    const v1, 0x7f090590

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 49
    .local v0, "topBar":Landroid/widget/TextView;
    const v1, 0x7f0d009a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 50
    const v1, 0x7f0905ad

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$1;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$1;-><init>(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->h:Landroid/app/ActivityManager;

    .line 57
    const-string v1, "antitheft"

    invoke-virtual {p0, v1, v3}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->c:Landroid/content/SharedPreferences;

    .line 58
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getSafePhoneNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->d:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "firstsetphone"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->i:Z

    .line 60
    const v1, 0x7f090030

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->b:Landroid/widget/EditText;

    .line 61
    const-string v1, "ydp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "++++++++++++++"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->b:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const v1, 0x7f09002a

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->a:Landroid/widget/TextView;

    .line 65
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->a:Landroid/widget/TextView;

    new-instance v2, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;-><init>(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    return-void
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 144
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 145
    const-string v1, "ydp"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result pkg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->h:Landroid/app/ActivityManager;

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->h:Landroid/app/ActivityManager;

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->setResult(I)V

    .line 148
    invoke-virtual {p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->finish()V

    .line 150
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 151
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 155
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 156
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 157
    return-void
.end method
