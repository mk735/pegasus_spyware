.class public Lcom/lenovo/safecenter/safemode/HandActivity;
.super Lcom/lenovo/safecenter/platform/BaseTitleActivity;
.source "HandActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/safemode/HandActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/Button;

.field private d:Lcom/lenovo/safecenter/database/AppDatabase;

.field private e:Lcom/lenovo/safecenter/utils/ContractHelpUtils;

.field private f:Lcom/lenovo/safecenter/safemode/HandActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;-><init>()V

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/HandActivity;)Lcom/lenovo/safecenter/utils/ContractHelpUtils;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/HandActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/HandActivity;->e:Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/safemode/HandActivity;)Lcom/lenovo/safecenter/database/AppDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/HandActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/HandActivity;->d:Lcom/lenovo/safecenter/database/AppDatabase;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/safemode/HandActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/HandActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/HandActivity;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/safemode/HandActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/HandActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/HandActivity;->b:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public initCopyDel(Lcom/lenovo/safecenter/support/Contract;)V
    .locals 1
    .param p1, "con"    # Lcom/lenovo/safecenter/support/Contract;

    .prologue
    .line 89
    new-instance v0, Lcom/lenovo/safecenter/safemode/HandActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/safecenter/safemode/HandActivity$1;-><init>(Lcom/lenovo/safecenter/safemode/HandActivity;Lcom/lenovo/safecenter/support/Contract;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/safemode/HandActivity$1;->start()V

    .line 116
    return-void
.end method

.method public onBtnClick()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/HandActivity;->c:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/safemode/HandActivity$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/safemode/HandActivity$2;-><init>(Lcom/lenovo/safecenter/safemode/HandActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904b9

    if-ne v0, v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/HandActivity;->finish()V

    .line 58
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v1, 0x7f03007e

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/safemode/HandActivity;->setContentView(I)V

    .line 36
    const v1, 0x7f020286

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d0022

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/lenovo/safecenter/safemode/HandActivity;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 39
    const v1, 0x7f0902f0

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/safemode/HandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/lenovo/safecenter/safemode/HandActivity;->a:Landroid/widget/EditText;

    .line 40
    const v1, 0x7f0902f3

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/safemode/HandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/lenovo/safecenter/safemode/HandActivity;->b:Landroid/widget/EditText;

    .line 41
    const v1, 0x7f0902f4

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/safemode/HandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/lenovo/safecenter/safemode/HandActivity;->c:Landroid/widget/Button;

    .line 42
    new-instance v1, Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/safemode/HandActivity;->d:Lcom/lenovo/safecenter/database/AppDatabase;

    .line 43
    new-instance v1, Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    invoke-direct {v1}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;-><init>()V

    iput-object v1, p0, Lcom/lenovo/safecenter/safemode/HandActivity;->e:Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    .line 44
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/HandActivity;->onBtnClick()V

    .line 46
    new-instance v1, Lcom/lenovo/safecenter/safemode/HandActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/safecenter/safemode/HandActivity$a;-><init>(Lcom/lenovo/safecenter/safemode/HandActivity;B)V

    iput-object v1, p0, Lcom/lenovo/safecenter/safemode/HandActivity;->f:Lcom/lenovo/safecenter/safemode/HandActivity$a;

    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/HandActivity;->f:Lcom/lenovo/safecenter/safemode/HandActivity$a;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/safecenter/safemode/HandActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onDestroy()V

    .line 73
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/HandActivity;->f:Lcom/lenovo/safecenter/safemode/HandActivity$a;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/HandActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 74
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 61
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 62
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onPause()V

    .line 63
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 67
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 68
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onResume()V

    .line 69
    return-void
.end method
