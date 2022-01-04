.class public Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodChangeBroadcast.java"


# instance fields
.field private a:Lcom/lenovo/safecenter/adapter/DaoImpl;

.field private b:Ljava/util/HashMap;
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

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;Ljava/lang/String;)V
    .locals 7
    .param p0, "x0"    # Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
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

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;->c:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/lenovo/safecenter/database/AppUtil;->getCretMD5(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/io/File;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;->a:Lcom/lenovo/safecenter/adapter/DaoImpl;

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

.method static synthetic a(Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "md5"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;->a:Lcom/lenovo/safecenter/adapter/DaoImpl;

    invoke-virtual {v1, p1}, Lcom/lenovo/safecenter/adapter/DaoImpl;->queryByPackageNameForUserApp(Ljava/lang/String;)Lcom/lenovo/safecenter/support/SafePaymentApp;

    move-result-object v0

    .line 78
    .local v0, "userApp":Lcom/lenovo/safecenter/support/SafePaymentApp;
    if-nez v0, :cond_1

    .line 80
    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;->b:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v1, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast$2;-><init>(Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast$2;->start()V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/SafePaymentApp;->getApp_md5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "safe_input_method"

    invoke-static {v1, v2, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 95
    const-string v1, "ydp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InputMethodChangeBroadcast:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "safe_input_method"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public isThirdpartApp(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 117
    const/4 v2, 0x0

    .line 120
    .local v2, "flag":Z
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 121
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    .line 122
    const/4 v2, 0x1

    .line 131
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v2

    .line 123
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 124
    const/4 v2, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.safecenter.boot.safeinput"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    const-string v1, "ydp"

    const-string v2, "InputMethodChangeBroadcast ---boot"

    invoke-static {v1, v2}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;->c:Landroid/content/Context;

    .line 36
    invoke-static {}, Lcom/lenovo/safecenter/support/SecurityService;->mSIL()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 37
    new-instance v1, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast$1;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast$1;-><init>(Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast$1;->start()V

    .line 56
    :cond_1
    new-instance v1, Lcom/lenovo/safecenter/adapter/DaoImpl;

    new-instance v2, Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-direct {v2, p1}, Lcom/lenovo/safecenter/adapter/DbAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/lenovo/safecenter/adapter/DaoImpl;-><init>(Lcom/lenovo/safecenter/adapter/DbAdapter;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;->a:Lcom/lenovo/safecenter/adapter/DaoImpl;

    .line 57
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;->b:Ljava/util/HashMap;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 61
    :try_start_0
    const-string v1, "com.android.inputmethod.latin/.LatinIME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.android.inputmethod.pinyin/.PinyinIME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.google.android.inputmethod.pinyin/.PinyinIME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;->isThirdpartApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 62
    :cond_2
    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "safe_input_method"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 75
    :cond_3
    :goto_0
    return-void

    .line 63
    :cond_4
    invoke-static {}, Lcom/lenovo/safecenter/support/SecurityService;->mSIL()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 64
    invoke-static {}, Lcom/lenovo/safecenter/support/SecurityService;->mSIL()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {}, Lcom/lenovo/safecenter/support/SecurityService;->mSIL()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-direct {p0, v2, v1, v0}, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
