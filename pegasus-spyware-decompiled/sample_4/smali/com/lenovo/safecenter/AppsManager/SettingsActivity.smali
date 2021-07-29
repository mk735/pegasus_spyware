.class public Lcom/lenovo/safecenter/AppsManager/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/AppsManager/SettingsActivity$a;
    }
.end annotation


# static fields
.field public static final DIALOG_RETRIEVE_PASSWORD:I = 0x1


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Lcom/lenovo/safecenter/AppsManager/SettingsActivity$a;

.field private m:Landroid/app/ProgressDialog;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Landroid/os/Handler;

.field private p:Landroid/content/BroadcastReceiver;

.field private q:Lcom/lenovo/safecenter/utils/LeSafeObservable;

.field private r:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    new-instance v0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$1;-><init>(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->o:Landroid/os/Handler;

    .line 128
    new-instance v0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$2;-><init>(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->p:Landroid/content/BroadcastReceiver;

    .line 483
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 310
    const v0, 0x7f090531

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p0}, Lcom/lenovo/safecenter/utils/PwdUtil;->hasPassword(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0d0371

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 311
    :goto_0
    const v0, 0x7f090532

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f090533

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p0}, Lcom/lenovo/safecenter/utils/PwdUtil;->queryPwdQuestionAndAnswer(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 313
    :goto_1
    return-void

    .line 310
    :cond_0
    const v1, 0x7f0d03ab

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 311
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->i:Z

    return v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/SettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->j:Z

    return v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->m:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->k:Z

    return v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->o:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->r:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic k(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic l(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->n:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic m(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->m:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v7, 0x7f0200de

    const/16 v6, 0x8

    const/4 v8, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 339
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 449
    :goto_0
    return-void

    .line 341
    :sswitch_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->finish()V

    goto :goto_0

    .line 344
    :sswitch_1
    iget-boolean v5, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->i:Z

    if-nez v5, :cond_0

    :goto_1
    iput-boolean v3, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->i:Z

    .line 345
    sget-object v3, Lcom/lenovo/safecenter/utils/Const;->mDefaultPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "anti_tapping"

    iget-boolean v6, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->i:Z

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 348
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->o:Landroid/os/Handler;

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->o:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    move v3, v4

    .line 344
    goto :goto_1

    .line 351
    :sswitch_2
    iget-boolean v5, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->j:Z

    if-nez v5, :cond_1

    move v4, v3

    :cond_1
    iput-boolean v4, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->j:Z

    .line 352
    sget-object v4, Lcom/lenovo/safecenter/utils/Const;->mDefaultPreference:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "block_notify"

    iget-boolean v6, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->j:Z

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 355
    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->o:Landroid/os/Handler;

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->o:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 358
    :sswitch_3
    new-instance v5, Landroid/app/ProgressDialog;

    invoke-direct {v5, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->m:Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->m:Landroid/app/ProgressDialog;

    new-instance v6, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$3;

    invoke-direct {v6, p0}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$3;-><init>(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)V

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->m:Landroid/app/ProgressDialog;

    const v6, 0x7f0d0160

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    .line 359
    iget-boolean v5, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->k:Z

    if-eqz v5, :cond_2

    .line 360
    const-string v3, "safecenter.system13"

    invoke-static {v3, v4, v4, v4}, Lcom/lenovo/safecenter/support/CMDHelper;->guestModeClient(Ljava/lang/String;III)Z

    .line 362
    const-string v3, "safecenter.phone13"

    invoke-static {v3, v4, v4, v4}, Lcom/lenovo/safecenter/support/CMDHelper;->guestModeClient(Ljava/lang/String;III)Z

    .line 364
    const-string v3, "safecenter.contact13"

    invoke-static {v3, v4, v4, v4}, Lcom/lenovo/safecenter/support/CMDHelper;->guestModeClient(Ljava/lang/String;III)Z

    .line 375
    :goto_2
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->o:Landroid/os/Handler;

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->o:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 367
    :cond_2
    const-string v5, "safecenter.system13"

    invoke-static {v5, v4, v3, v4}, Lcom/lenovo/safecenter/support/CMDHelper;->guestModeClient(Ljava/lang/String;III)Z

    .line 369
    const-string v5, "safecenter.phone13"

    invoke-static {v5, v4, v3, v4}, Lcom/lenovo/safecenter/support/CMDHelper;->guestModeClient(Ljava/lang/String;III)Z

    .line 371
    const-string v5, "safecenter.contact13"

    invoke-static {v5, v4, v3, v4}, Lcom/lenovo/safecenter/support/CMDHelper;->guestModeClient(Ljava/lang/String;III)Z

    goto :goto_2

    .line 379
    :sswitch_4
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/PwdUtil;->hasPassword(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 380
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->o:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 381
    const-string v3, "action_modify_password_use_pre_password"

    invoke-static {v3, p0}, Lcom/lenovo/safecenter/utils/DialogUtil;->showPwdDialog(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 384
    :cond_3
    const-string v3, "com.lenovo.safecenter.safemode.SettingPassword"

    invoke-static {p0, v3}, Lcom/lenovo/safecenter/utils/WflUtils;->startSettingPasswordActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 390
    :sswitch_5
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->o:Landroid/os/Handler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 391
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/PwdUtil;->queryPwdQuestionAndAnswer(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    .line 392
    .local v2, "questions":[Ljava/lang/String;
    aget-object v4, v2, v4

    aget-object v5, v2, v3

    invoke-static {p0, v3, v4, v5}, Lcom/lenovo/safecenter/utils/DialogUtil;->showPasswordQuestionDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 401
    .end local v2    # "questions":[Ljava/lang/String;
    :sswitch_6
    const v4, 0x7f020226

    const v5, 0x7f0d088b

    invoke-static {p0, v4, v5, v3}, Lcom/lenovo/performancecenter/coreui/util/Utils;->createShortCut(Landroid/content/Context;IIZ)V

    goto/16 :goto_0

    .line 406
    :sswitch_7
    invoke-static {p0}, Lcom/lenovo/safecenter/floatwindow/data/SaveData;->get_flow_status(Landroid/content/Context;)Z

    move-result v1

    .line 407
    .local v1, "flowFlag":Z
    if-eqz v1, :cond_5

    .line 408
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 409
    sget-object v3, Lcom/lenovo/safecenter/support/SecurityService;->instance:Lcom/lenovo/safecenter/support/SecurityService;

    if-eqz v3, :cond_4

    .line 410
    sget-object v3, Lcom/lenovo/safecenter/support/SecurityService;->instance:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v3, v6}, Lcom/lenovo/safecenter/support/SecurityService;->setFlowVisibility(I)V

    .line 412
    :cond_4
    invoke-static {p0, v4}, Lcom/lenovo/safecenter/floatwindow/data/SaveData;->save_flow_status(Landroid/content/Context;Z)V

    .line 413
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 414
    invoke-static {v4}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportTrafficFloatwindowSwitchChanged(Z)V

    goto/16 :goto_0

    .line 416
    :cond_5
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->e:Landroid/widget/ImageView;

    const v6, 0x7f0200df

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 417
    sget-object v5, Lcom/lenovo/safecenter/support/SecurityService;->instance:Lcom/lenovo/safecenter/support/SecurityService;

    if-eqz v5, :cond_6

    .line 418
    sget-object v5, Lcom/lenovo/safecenter/support/SecurityService;->instance:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v5, v4}, Lcom/lenovo/safecenter/support/SecurityService;->setFlowVisibility(I)V

    .line 420
    :cond_6
    invoke-static {p0, v3}, Lcom/lenovo/safecenter/floatwindow/data/SaveData;->save_flow_status(Landroid/content/Context;Z)V

    .line 421
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 422
    invoke-static {v3}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportTrafficFloatwindowSwitchChanged(Z)V

    goto/16 :goto_0

    .line 426
    .end local v1    # "flowFlag":Z
    :sswitch_8
    invoke-static {p0}, Lcom/lenovo/safecenter/floatwindow/data/SaveData;->get_flow_immove_state(Landroid/content/Context;)Z

    move-result v0

    .line 428
    .local v0, "flowFixedFlag":Z
    if-eqz v0, :cond_8

    .line 429
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 430
    sget-object v3, Lcom/lenovo/safecenter/support/SecurityService;->instance:Lcom/lenovo/safecenter/support/SecurityService;

    if-eqz v3, :cond_7

    .line 431
    sget-object v3, Lcom/lenovo/safecenter/support/SecurityService;->instance:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/support/SecurityService;->setFlowIsFixed(Z)V

    .line 433
    :cond_7
    invoke-static {p0, v4}, Lcom/lenovo/safecenter/floatwindow/data/SaveData;->save_flow_immove_state(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 435
    :cond_8
    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->h:Landroid/widget/ImageView;

    const v5, 0x7f0200df

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 436
    sget-object v4, Lcom/lenovo/safecenter/support/SecurityService;->instance:Lcom/lenovo/safecenter/support/SecurityService;

    if-eqz v4, :cond_9

    .line 437
    sget-object v4, Lcom/lenovo/safecenter/support/SecurityService;->instance:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v4, v3}, Lcom/lenovo/safecenter/support/SecurityService;->setFlowIsFixed(Z)V

    .line 439
    :cond_9
    invoke-static {p0, v3}, Lcom/lenovo/safecenter/floatwindow/data/SaveData;->save_flow_immove_state(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 443
    .end local v0    # "flowFixedFlag":Z
    :sswitch_9
    const-string v3, "LenovoSafeWidget115.apk"

    const-string v4, "com.lenovo.safecenterwidget"

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->o:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-static {v3, v4, p0, v5, v6}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->copyAssetsFilesInstall(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;I)V

    goto/16 :goto_0

    .line 448
    :sswitch_a
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->o:Landroid/os/Handler;

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->o:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 339
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090530 -> :sswitch_4
        0x7f090532 -> :sswitch_5
        0x7f090534 -> :sswitch_3
        0x7f090537 -> :sswitch_1
        0x7f090538 -> :sswitch_2
        0x7f09053b -> :sswitch_a
        0x7f09053d -> :sswitch_7
        0x7f090541 -> :sswitch_8
        0x7f090544 -> :sswitch_6
        0x7f090546 -> :sswitch_9
        0x7f0905ad -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const v4, 0x7f0200df

    const v3, 0x7f0200de

    const/4 v2, 0x0

    .line 150
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    const v0, 0x7f030106

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->setContentView(I)V

    .line 153
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->q:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->q:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-virtual {v0, p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->addObserver(Ljava/util/Observer;)V

    .line 155
    const v0, 0x7f090546

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->r:Landroid/view/ViewGroup;

    const-string v0, "com.lenovo.safecenterwidget"

    invoke-static {p0, v0}, Lcom/lenovo/safecenter/database/AppUtil;->isAppExistence(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->r:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->isShowTaost()Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f090536

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const v0, 0x7f090590

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->a:Landroid/widget/TextView;

    const v1, 0x7f0d0044

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0905ad

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->b:Landroid/widget/ImageView;

    const v0, 0x7f090537

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->c:Landroid/widget/ImageView;

    const v0, 0x7f090538

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->d:Landroid/widget/ImageView;

    const v0, 0x7f09053d

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->e:Landroid/widget/ImageView;

    const v0, 0x7f090540

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->n:Landroid/widget/RelativeLayout;

    const v0, 0x7f090541

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->h:Landroid/widget/ImageView;

    const v0, 0x7f09053b

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->g:Landroid/widget/ImageView;

    const v0, 0x7f090534

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->f:Landroid/widget/ImageView;

    const v0, 0x7f0905ae

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lcom/lenovo/safecenter/utils/Const;->mDefaultPreference:Landroid/content/SharedPreferences;

    const-string v1, "anti_tapping"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->i:Z

    sget-object v0, Lcom/lenovo/safecenter/utils/Const;->mDefaultPreference:Landroid/content/SharedPreferences;

    const-string v1, "block_notify"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->j:Z

    sget-object v0, Lcom/lenovo/safecenter/utils/Const;->mDefaultPreference:Landroid/content/SharedPreferences;

    const-string v1, "inject_switch"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->k:Z

    iget-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->k:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    iget-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->i:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    iget-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->j:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    sget-object v0, Lcom/lenovo/safecenter/utils/Const;->mDefaultPreference:Landroid/content/SharedPreferences;

    const-string v1, "safehomepage_on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_5
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->r:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090544

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090530

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f090532

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/lenovo/safecenter/floatwindow/data/SaveData;->get_flow_status(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_6
    invoke-static {p0}, Lcom/lenovo/safecenter/floatwindow/data/SaveData;->get_flow_immove_state(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v0, Lcom/lenovo/safecenter/support/SecurityService;->instance:Lcom/lenovo/safecenter/support/SecurityService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lenovo/safecenter/support/SecurityService;->instance:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v0, v5}, Lcom/lenovo/safecenter/support/SecurityService;->setFlowIsFixed(Z)V

    :cond_0
    :goto_7
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->nacServerIsExist()Z

    invoke-direct {p0}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->a()V

    .line 156
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->l:Lcom/lenovo/safecenter/AppsManager/SettingsActivity$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$a;

    invoke-direct {v0, p0, v2}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$a;-><init>(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;B)V

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->l:Lcom/lenovo/safecenter/AppsManager/SettingsActivity$a;

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.lenovo.safecenter.flowrefresh"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->l:Lcom/lenovo/safecenter/AppsManager/SettingsActivity$a;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 157
    return-void

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->r:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    const v0, 0x7f090536

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_6
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    :cond_7
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    :cond_8
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v0, Lcom/lenovo/safecenter/support/SecurityService;->instance:Lcom/lenovo/safecenter/support/SecurityService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lenovo/safecenter/support/SecurityService;->instance:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/support/SecurityService;->setFlowIsFixed(Z)V

    goto :goto_7
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 188
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->l:Lcom/lenovo/safecenter/AppsManager/SettingsActivity$a;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 190
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 168
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 169
    invoke-static {}, Lcom/lenovo/safecenter/utils/DialogUtil;->dismissShowPwdDialog()V

    .line 170
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 171
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 175
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 176
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 177
    invoke-static {p0}, Lcom/lenovo/safecenter/floatwindow/data/SaveData;->get_flow_status(Landroid/content/Context;)Z

    move-result v0

    .line 178
    .local v0, "flowFlag":Z
    if-eqz v0, :cond_0

    .line 179
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->e:Landroid/widget/ImageView;

    const v2, 0x7f0200df

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->e:Landroid/widget/ImageView;

    const v2, 0x7f0200de

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 472
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 473
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 475
    :pswitch_0
    invoke-direct {p0}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->a()V

    goto :goto_0

    .line 473
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
