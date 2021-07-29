.class public Lcom/lenovo/feedback2/agent/ApplicationInfoCollector;
.super Ljava/lang/Object;
.source "ApplicationInfoCollector.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "feedback"

    sput-object v0, Lcom/lenovo/feedback2/agent/ApplicationInfoCollector;->a:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectAppInfo(Landroid/content/Context;)Lcom/lenovo/feedback2/agent/ApplicationInfo;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    const/4 v1, 0x0

    .line 14
    .local v1, "info":Lcom/lenovo/feedback2/agent/ApplicationInfo;
    :try_start_0
    new-instance v2, Lcom/lenovo/feedback2/agent/ApplicationInfo;

    invoke-direct {v2}, Lcom/lenovo/feedback2/agent/ApplicationInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .end local v1    # "info":Lcom/lenovo/feedback2/agent/ApplicationInfo;
    .local v2, "info":Lcom/lenovo/feedback2/agent/ApplicationInfo;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/lenovo/feedback2/agent/ApplicationInfo;->setPackageName(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 17
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 18
    .local v3, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget v5, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v5}, Lcom/lenovo/feedback2/agent/ApplicationInfo;->setVersionCode(I)V

    .line 19
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/lenovo/feedback2/agent/ApplicationInfo;->setVersionName(Ljava/lang/String;)V

    .line 20
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lenovo/feedback2/agent/ApplicationInfo;->setAppName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 24
    .end local v2    # "info":Lcom/lenovo/feedback2/agent/ApplicationInfo;
    .end local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v1    # "info":Lcom/lenovo/feedback2/agent/ApplicationInfo;
    :goto_0
    return-object v1

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    sget-object v5, Lcom/lenovo/feedback2/agent/ApplicationInfoCollector;->a:Ljava/lang/String;

    const-string v6, "ApplicationInfoCollector  collect fail. "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 21
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "info":Lcom/lenovo/feedback2/agent/ApplicationInfo;
    .restart local v2    # "info":Lcom/lenovo/feedback2/agent/ApplicationInfo;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "info":Lcom/lenovo/feedback2/agent/ApplicationInfo;
    .restart local v1    # "info":Lcom/lenovo/feedback2/agent/ApplicationInfo;
    goto :goto_1
.end method
