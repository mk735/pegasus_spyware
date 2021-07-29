.class public Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;
.super Landroid/app/Activity;
.source "AntiTappingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$b;,
        Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/pm/PackageManager;

.field private b:[Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:[I

.field private e:Landroid/widget/ListView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/content/Intent;

.field private h:Landroid/os/Handler;

.field private i:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    new-instance v0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$1;-><init>(Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->h:Landroid/os/Handler;

    .line 97
    new-instance v0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$3;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$3;-><init>(Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->i:Landroid/widget/AdapterView$OnItemClickListener;

    .line 205
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->b:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->g:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->a:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->c:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;)[I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->d:[I

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f0300c1

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->setContentView(I)V

    .line 53
    sget v0, Lcom/lenovo/safecenter/utils/Const;->SDK_VERSION:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 54
    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->setFinishOnTouchOutside(Z)V

    .line 57
    :cond_0
    const v0, 0x7f090278

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->e:Landroid/widget/ListView;

    .line 58
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->i:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 60
    const v0, 0x7f090446

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->f:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$2;-><init>(Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-static {}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportInterceptRecord()V

    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "pkgnames"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->b:[Ljava/lang/String;

    const-string v1, "pernames"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->c:[Ljava/lang/String;

    const-string v1, "actions"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->d:[I

    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->h:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->g:Landroid/content/Intent;

    .line 69
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 117
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 118
    const/4 p1, -0x1

    .line 121
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 74
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 80
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 81
    return-void
.end method
