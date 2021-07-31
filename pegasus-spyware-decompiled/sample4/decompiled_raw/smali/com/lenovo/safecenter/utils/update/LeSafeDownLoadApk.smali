.class public Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;
.super Landroid/app/Service;
.source "LeSafeDownLoadApk.java"


# instance fields
.field private a:Landroid/content/pm/PackageManager;

.field private b:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

.field private c:Landroid/content/SharedPreferences;

.field private d:I

.field private e:Z

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    iput v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->d:I

    .line 27
    iput-boolean v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->e:Z

    .line 110
    new-instance v0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$2;-><init>(Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->d:I

    return p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->a:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;
    .param p1, "x1"    # Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->b:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    return-object p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    .prologue
    .line 21
    iget v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->d:I

    return v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    .prologue
    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->e:Z

    return v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;)Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->b:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->e:Z

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 40
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 45
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->a:Landroid/content/pm/PackageManager;

    .line 46
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->c:Landroid/content/SharedPreferences;

    .line 47
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/WflUtils;->isWifiNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "ydp"

    const-string v1, "wifi Connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v0, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$1;-><init>(Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk$1;->start()V

    .line 55
    :goto_0
    return-void

    .line 51
    :cond_0
    const-string v0, "ydp"

    const-string v1, "wifi unconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {}, Lcom/lenovo/lps/sus/SUS;->finish()V

    .line 53
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/update/LeSafeDownLoadApk;->stopSelf()V

    goto :goto_0
.end method
