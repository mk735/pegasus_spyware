.class public Lcom/lenovo/safecenter/safemode/PrivateMainActivity;
.super Lcom/lenovo/safecenter/platform/BaseTitleActivity;
.source "PrivateMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/safemode/PrivateMainActivity$PrivateItemApater;,
        Lcom/lenovo/safecenter/safemode/PrivateMainActivity$a;
    }
.end annotation


# instance fields
.field private a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity$PrivateItemApater;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/lenovo/safecenter/dialog/CustomDialog;

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/lenovo/safecenter/safemode/PrivateMainActivity$a;

.field private h:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

.field private i:Z

.field private j:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->f:Ljava/util/HashMap;

    .line 57
    new-instance v0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$1;-><init>(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->j:Landroid/os/Handler;

    .line 389
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;)Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->h:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/PrivateMainActivity;
    .param p1, "x1"    # Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->h:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/PrivateMainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/PwdUtil;->hasPassword(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03008c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f09034f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d0055

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f090350

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->e:Lcom/lenovo/safecenter/dialog/CustomDialog;

    if-nez v3, :cond_0

    new-instance v3, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d0053

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0046

    new-instance v4, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$5;

    invoke-direct {v4, p0, v1, p1, v0}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$5;-><init>(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;Landroid/widget/EditText;Ljava/lang/String;Landroid/widget/TextView;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v3, v4, v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    new-instance v2, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$4;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$4;-><init>(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->create()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->e:Lcom/lenovo/safecenter/dialog/CustomDialog;

    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->e:Lcom/lenovo/safecenter/dialog/CustomDialog;

    new-instance v1, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$6;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$6;-><init>(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->e:Lcom/lenovo/safecenter/dialog/CustomDialog;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->e:Lcom/lenovo/safecenter/dialog/CustomDialog;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog;->show()V

    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->j:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->i:Z

    return v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    .prologue
    .line 46
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d059e

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d059f

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d05a1

    new-instance v2, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$2;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$2;-><init>(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0576

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-void
.end method

.method static synthetic d(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;)Lcom/lenovo/safecenter/dialog/CustomDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    .prologue
    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->e:Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    .prologue
    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->i:Z

    return v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;)Lcom/lenovo/safecenter/dialog/CustomDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->e:Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-object v0
.end method


# virtual methods
.method public findViews()V
    .locals 2

    .prologue
    .line 181
    const v0, 0x7f09049d

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->c:Landroid/widget/ListView;

    .line 182
    const v0, 0x7f09049e

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->b:Landroid/widget/TextView;

    .line 183
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->c:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 184
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 185
    const v0, 0x7f09049b

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->d:Landroid/widget/ImageView;

    .line 186
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->d:Landroid/widget/ImageView;

    const v1, 0x7f02025f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$3;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$3;-><init>(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 294
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904b9

    if-ne v0, v1, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->finish()V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904ba

    if-ne v0, v1, :cond_0

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f0d000b

    const v5, 0x7f020286

    const/4 v4, 0x0

    .line 68
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v1, 0x7f0300da

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->setContentView(I)V

    .line 70
    iput-boolean v4, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->i:Z

    .line 72
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "pwd"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "pwd"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pwd"

    invoke-static {v2, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "pwd"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/lenovo/safecenter/utils/PwdUtil;->checkPassword(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 77
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v6, v2}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 91
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->findViews()V

    .line 92
    new-instance v1, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$a;

    invoke-direct {v1, p0, v4}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$a;-><init>(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;B)V

    iput-object v1, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->g:Lcom/lenovo/safecenter/safemode/PrivateMainActivity$a;

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->g:Lcom/lenovo/safecenter/safemode/PrivateMainActivity$a;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    return-void

    .line 79
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "pwd"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/lenovo/safecenter/utils/PwdUtil;->checkPassword(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v6, v2}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onDestroy()V

    .line 168
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->i:Z

    .line 169
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->g:Lcom/lenovo/safecenter/safemode/PrivateMainActivity$a;

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->f:Ljava/util/HashMap;

    .line 172
    :try_start_0
    sget-object v1, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 153
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 154
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onPause()V

    .line 155
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 139
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onResume()V

    .line 140
    new-instance v0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$PrivateItemApater;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$PrivateItemApater;-><init>(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity$PrivateItemApater;

    .line 141
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity$PrivateItemApater;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 142
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->f:Ljava/util/HashMap;

    const-string v1, "timespace"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->f:Ljava/util/HashMap;

    const-string v1, "timespace"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x1d4c0

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->i:Z

    .line 147
    :cond_0
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 148
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 134
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onStop()V

    .line 135
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->f:Ljava/util/HashMap;

    const-string v1, "timespace"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void
.end method
