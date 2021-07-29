.class public Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;
.super Landroid/app/Activity;
.source "FirstUsePasswordSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/Button;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:[Ljava/lang/String;

.field private l:J

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->a:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->c:I

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;J)J
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;
    .param p1, "x1"    # J

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->l:J

    return-wide p1
.end method

.method private a()V
    .locals 7

    .prologue
    const v6, 0x7f020131

    const v2, 0x7f020130

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 111
    iget v1, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->c:I

    packed-switch v1, :pswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 113
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 115
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 117
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->b:Landroid/widget/Button;

    const v2, 0x7f0d055e

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 118
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->h:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->i:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 122
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 124
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 126
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->b:Landroid/widget/Button;

    const v2, 0x7f0d00a8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 127
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->h:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->i:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 129
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/PwdUtil;->queryPwdQuestionAndAnswerWithJieMi(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "preAnswer":[Ljava/lang/String;
    const-string v1, "action_modify_password_use_answer"

    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "action_modify_password_use_pre_password"

    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 134
    :cond_0
    aget-object v1, v0, v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->g:Landroid/widget/EditText;

    const v2, 0x7f0d0292

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 142
    :goto_1
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    iget-object v4, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->k:[Ljava/lang/String;

    invoke-direct {v2, p0, v1, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x1090009

    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    const v1, 0x7f09003c

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    move v2, v3

    :goto_2
    iget-object v4, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->k:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->k:[Ljava/lang/String;

    aget-object v4, v4, v2

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_1
    new-instance v2, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity$2;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity$2;-><init>(Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto/16 :goto_0

    .line 137
    :cond_2
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->g:Landroid/widget/EditText;

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 140
    :cond_3
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->g:Landroid/widget/EditText;

    const v2, 0x7f0d0292

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_1

    .line 142
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.lenovo.safecenter.view.ForbiddenApplication"

    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.lenovo.safecenter.view.ForbiddenApplication"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->finish()V

    return-void

    :cond_1
    const-string v1, "com.lenovo.intent.action.kidmode"

    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/lenovo/safecenter/utils/WflUtils;->jumpKidModeOrDownloadpage(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string v1, "com.lenovo.safecenter.view.GuestModeSet"

    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "com.lenovo.safecenter.view.GuestModeSet"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v1, "com.lenovo.safecenter.privatezone"

    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/lenovo/safecenter/utils/WflUtils;->jumpPrivatezoneOrDownloadpage(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    const-string v1, "com.lenovo.safecenter.LENOVO_APPLOCK"

    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p0}, Lcom/lenovo/safecenter/utils/WflUtils;->jumpAppLockOrDownloadpage(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    const-string v1, "com.lenovo.safecenter.AgainstTheftSet"

    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "com.lenovo.safecenter.AgainstTheftSet"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    const-string v1, "switch_child_mode"

    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeChangeGuestModeSuccess()V

    goto :goto_0

    :cond_7
    const-string v1, "switch_guest_mode"

    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeChangeGuestModeSuccess()V

    goto :goto_0

    :cond_8
    const-string v1, "com.lenovo.safecenter.safemode.SettingPassword"

    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "action_modify_password_use_answer"

    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "action_modify_password_use_pre_password"

    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeChangePassword()V

    goto/16 :goto_0

    :cond_a
    const-string v1, "com.lenovo.safecenter.privacygesture.LePrivacyGestureTutorial"

    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "com.lenovo.safecenter.privacygesture.LePrivacyGestureTutorial"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_b
    const-string v1, "com.lenovo.safecenter.privacygesture.GestureAdminActivity"

    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.lenovo.safecenter.privacygesture.GestureAdminActivity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 183
    :sswitch_0
    iget v1, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->c:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v2, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->d:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->c:I

    invoke-direct {p0}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->a()V

    goto :goto_0

    :cond_1
    const v1, 0x7f0d035d

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v5, :cond_3

    const v1, 0x7f0d05a8

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v5, :cond_0

    const v1, 0x7f0d05a9

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->k:[Ljava/lang/String;

    iget-wide v2, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->l:J

    long-to-int v2, v2

    aget-object v2, v1, v2

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const v1, 0x7f0d055f

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const v1, 0x7f0d0560

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->d:Ljava/lang/String;

    invoke-static {p0, v3, v2, v1}, Lcom/lenovo/safecenter/utils/PwdUtil;->insertPwdQuestionAndAnswer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0798

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0799

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0489

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity$3;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity$3;-><init>(Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    goto/16 :goto_0

    .line 186
    :sswitch_1
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 187
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->j:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_0

    .line 181
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090031 -> :sswitch_1
        0x7f09003e -> :sswitch_0
    .end sparse-switch

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->setContentView(I)V

    .line 66
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 69
    const v0, 0x7f090590

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d035c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0905ad

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity$1;-><init>(Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->k:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->a:Ljava/lang/String;

    const-string v0, "wu0wu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FirstUsePasswordSettingActivity mAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const v0, 0x7f090036

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->h:Landroid/view/View;

    const v0, 0x7f090031

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->j:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->m:Landroid/widget/ImageView;

    const v0, 0x7f090035

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->n:Landroid/widget/ImageView;

    const v0, 0x7f09003b

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->i:Landroid/view/View;

    const v0, 0x7f090038

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->e:Landroid/widget/EditText;

    const v0, 0x7f09003a

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->f:Landroid/widget/EditText;

    const v0, 0x7f09003d

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->g:Landroid/widget/EditText;

    const v0, 0x7f09003e

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->a()V

    .line 72
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 327
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 328
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 315
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 316
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 317
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 321
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 322
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 323
    return-void
.end method
