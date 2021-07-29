.class public Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;
.super Ljava/lang/Object;
.source "MyProcessObserver.java"


# static fields
.field public static NOTIFY_PKGNAME:Ljava/lang/String; = null

.field public static final SAFEPAYMENT_NOTIFY_ID:I = 0x378

.field private static e:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

.field private static k:Landroid/content/BroadcastReceiver;


# instance fields
.field a:Landroid/content/SharedPreferences;

.field b:Landroid/app/NotificationManager;

.field private c:Landroid/content/Context;

.field private d:Landroid/content/pm/PackageManager;

.field private f:Lcom/lenovo/safecenter/adapter/DaoImpl;

.field private g:Lcom/lenovo/safecenter/support/SafePaymentApp;

.field private h:Lcom/lenovo/safecenter/support/SafePaymentApp;

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private l:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, ""

    sput-object v0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->NOTIFY_PKGNAME:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->k:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->j:Ljava/lang/String;

    .line 183
    new-instance v0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$3;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$3;-><init>(Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->l:Landroid/os/Handler;

    .line 62
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->c:Landroid/content/Context;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->d:Landroid/content/pm/PackageManager;

    .line 64
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->b:Landroid/app/NotificationManager;

    .line 65
    new-instance v0, Lcom/lenovo/safecenter/adapter/DaoImpl;

    new-instance v1, Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-direct {v1, p1}, Lcom/lenovo/safecenter/adapter/DbAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/adapter/DaoImpl;-><init>(Lcom/lenovo/safecenter/adapter/DbAdapter;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->f:Lcom/lenovo/safecenter/adapter/DaoImpl;

    .line 66
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->a:Landroid/content/SharedPreferences;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->i:Ljava/util/HashMap;

    .line 68
    new-instance v0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$1;-><init>(Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;)V

    sput-object v0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->k:Landroid/content/BroadcastReceiver;

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;Ljava/lang/String;)V
    .locals 7
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    :try_start_0
    const-string v0, "ydp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insterApp pkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->c:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/lenovo/safecenter/database/AppUtil;->getCretMD5(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/io/File;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->f:Lcom/lenovo/safecenter/adapter/DaoImpl;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    const-string v6, "true"

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/safecenter/adapter/DaoImpl;->insterForUserApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 40
    const-string v0, "ydp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkApp pkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->f:Lcom/lenovo/safecenter/adapter/DaoImpl;

    invoke-virtual {v0, p1}, Lcom/lenovo/safecenter/adapter/DaoImpl;->queryByPackageNameForSafeApp(Ljava/lang/String;)Lcom/lenovo/safecenter/support/SafePaymentApp;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->g:Lcom/lenovo/safecenter/support/SafePaymentApp;

    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->g:Lcom/lenovo/safecenter/support/SafePaymentApp;

    if-eqz v0, :cond_0

    const-string v0, "ydp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkApp --pkgName-- pkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->clearNotify(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "clearPkgName"    # Ljava/lang/String;

    .prologue
    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->f:Lcom/lenovo/safecenter/adapter/DaoImpl;

    invoke-virtual {v1, p1}, Lcom/lenovo/safecenter/adapter/DaoImpl;->queryByPackageNameForUserApp(Ljava/lang/String;)Lcom/lenovo/safecenter/support/SafePaymentApp;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->h:Lcom/lenovo/safecenter/support/SafePaymentApp;

    .line 133
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->h:Lcom/lenovo/safecenter/support/SafePaymentApp;

    if-nez v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->i:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->i:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v1, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$2;-><init>(Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$2;->start()V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->g:Lcom/lenovo/safecenter/support/SafePaymentApp;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->getApp_md5()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->h:Lcom/lenovo/safecenter/support/SafePaymentApp;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/support/SafePaymentApp;->getApp_md5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->h:Lcom/lenovo/safecenter/support/SafePaymentApp;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/SafePaymentApp;->getApp_packagename()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->j:Ljava/lang/String;

    .line 151
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->l:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->l:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    goto :goto_0

    .line 153
    :cond_2
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 155
    .local v0, "m":Landroid/os/Message;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->g:Lcom/lenovo/safecenter/support/SafePaymentApp;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/support/SafePaymentApp;->getApp_name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 156
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 157
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->l:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "PkgName"    # Ljava/lang/String;
    .param p2, "clearPkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 306
    const-string v2, "safepaymen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearNotifyCheckMD5 Pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->f:Lcom/lenovo/safecenter/adapter/DaoImpl;

    invoke-virtual {v2, p2}, Lcom/lenovo/safecenter/adapter/DaoImpl;->queryByPackageNameForUserApp(Ljava/lang/String;)Lcom/lenovo/safecenter/support/SafePaymentApp;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->h:Lcom/lenovo/safecenter/support/SafePaymentApp;

    .line 308
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->h:Lcom/lenovo/safecenter/support/SafePaymentApp;

    if-nez v2, :cond_1

    .line 310
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->i:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 311
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->i:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    new-instance v2, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$4;

    invoke-direct {v2, p0, p2, p1}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$4;-><init>(Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$4;->start()V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->g:Lcom/lenovo/safecenter/support/SafePaymentApp;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/support/SafePaymentApp;->getApp_md5()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->h:Lcom/lenovo/safecenter/support/SafePaymentApp;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/support/SafePaymentApp;->getApp_md5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 324
    const-string v2, "safepaymen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearNotify 3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 326
    .local v1, "m":Landroid/os/Message;
    const-string v2, ""

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 328
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->d:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->h:Lcom/lenovo/safecenter/support/SafePaymentApp;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/support/SafePaymentApp;->getApp_packagename()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->d:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_1
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 335
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->l:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 345
    .end local v1    # "m":Landroid/os/Message;
    :cond_2
    :goto_2
    const-string v2, ""

    iput-object v2, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->j:Ljava/lang/String;

    goto :goto_0

    .line 330
    .restart local v1    # "m":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 337
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "m":Landroid/os/Message;
    :cond_3
    const-string v2, "safepaymen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearNotify 4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const-string v2, "com.android.packageinstaller"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 339
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 340
    .restart local v1    # "m":Landroid/os/Message;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->g:Lcom/lenovo/safecenter/support/SafePaymentApp;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/support/SafePaymentApp;->getApp_name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 341
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 342
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->l:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method

.method static synthetic c(Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    sget-object v0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->e:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->e:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    .line 59
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->e:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    return-object v0
.end method


# virtual methods
.method public clearNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "PkgName"    # Ljava/lang/String;
    .param p2, "clearPkgName"    # Ljava/lang/String;

    .prologue
    .line 283
    const-string v0, "safepaymen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearNotify Pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->f:Lcom/lenovo/safecenter/adapter/DaoImpl;

    invoke-virtual {v0, p2}, Lcom/lenovo/safecenter/adapter/DaoImpl;->queryByPackageNameForSafeApp(Ljava/lang/String;)Lcom/lenovo/safecenter/support/SafePaymentApp;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->g:Lcom/lenovo/safecenter/support/SafePaymentApp;

    .line 285
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->g:Lcom/lenovo/safecenter/support/SafePaymentApp;

    if-eqz v0, :cond_0

    .line 286
    invoke-direct {p0, p1, p2}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_0
    return-void
.end method

.method public register()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 83
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "safepaymen_on"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->c:Landroid/content/Context;

    sget-object v3, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->k:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.lenovo.safecenter.activityswitch2"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ydp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerProcessObserver error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showNotify(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "genuine"    # Z
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    const v6, 0x7f0902a7

    const/4 v5, 0x0

    .line 254
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 256
    .local v0, "notification":Landroid/app/Notification;
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0300fd

    invoke-direct {v1, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 257
    .local v1, "rv":Landroid/widget/RemoteViews;
    if-eqz p1, :cond_0

    .line 258
    const/16 v3, 0xa

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 259
    const v3, 0x7f0202a8

    iput v3, v0, Landroid/app/Notification;->icon:I

    .line 260
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->c:Landroid/content/Context;

    const v4, 0x7f0d051b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 261
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->c:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-static {v3, v5, v4, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 262
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->c:Landroid/content/Context;

    const v4, 0x7f0d051d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 263
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v6, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 279
    :goto_0
    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 280
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->b:Landroid/app/NotificationManager;

    const/16 v4, 0x378

    invoke-virtual {v3, v4, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 281
    return-void

    .line 265
    :cond_0
    const/16 v3, 0x18

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 266
    const v3, 0x7f0202a9

    iput v3, v0, Landroid/app/Notification;->icon:I

    .line 267
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->c:Landroid/content/Context;

    const v4, 0x7f0d051c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 268
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->c:Landroid/content/Context;

    const v4, 0x7f0d051e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 269
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v6, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 273
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->c:Landroid/content/Context;

    const-class v4, Lcom/lenovo/safecenter/broadcast/SafePaymenUninstallService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    .local v2, "uninstallService":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 275
    const-string v3, "pkgName"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    sput-object p3, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->NOTIFY_PKGNAME:Ljava/lang/String;

    .line 277
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->c:Landroid/content/Context;

    invoke-static {v3, v5, v2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_0
.end method

.method public unRegister()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 94
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "safepaymen_on"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 95
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->c:Landroid/content/Context;

    sget-object v3, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    const/4 v1, 0x1

    .line 99
    :goto_0
    return v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ydp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterProcessObserver error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
