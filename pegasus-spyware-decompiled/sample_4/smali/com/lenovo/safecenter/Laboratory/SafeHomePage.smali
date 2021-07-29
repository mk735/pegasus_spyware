.class public Lcom/lenovo/safecenter/Laboratory/SafeHomePage;
.super Ljava/lang/Object;
.source "SafeHomePage.java"


# static fields
.field public static final SAFE_HOME_PAGE:Ljava/lang/String; = "http://hao.lenovo.com/?c=360"

.field public static final SAFE_HOME_PAGE_KEY:Ljava/lang/String; = "safehomepage_on"

.field private static a:Lcom/lenovo/safecenter/Laboratory/SafeHomePage;

.field private static c:Landroid/content/BroadcastReceiver;

.field private static d:Ljava/lang/String;

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/List;

.field private static h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static open:Z


# instance fields
.field private b:Landroid/content/Context;

.field private e:Landroid/app/ActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->c:Landroid/content/BroadcastReceiver;

    .line 40
    const-string v0, "SafeHomePage"

    sput-object v0, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->d:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->open:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->b:Landroid/content/Context;

    .line 120
    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Lcom/lenovo/safecenter/Laboratory/SafeHomePage;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    sget-object v0, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->a:Lcom/lenovo/safecenter/Laboratory/SafeHomePage;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->a:Lcom/lenovo/safecenter/Laboratory/SafeHomePage;

    .line 56
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->a:Lcom/lenovo/safecenter/Laboratory/SafeHomePage;

    return-object v0
.end method


# virtual methods
.method public checkAppRunState(Ljava/lang/String;)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 192
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->e:Landroid/app/ActivityManager;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 193
    .local v3, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 194
    .local v2, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 204
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :goto_0
    return-void

    .line 198
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_1
    const/4 v4, 0x0

    sput-boolean v4, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->open:Z

    .line 199
    sget-object v4, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->d:Ljava/lang/String;

    const-string v5, "checkAppRunState false---------------"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v4, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->d:Ljava/lang/String;

    const-string v5, "checkAppRunState SecurityException---------------"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getBrowsers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    sget-object v0, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->f:Ljava/util/Map;

    return-object v0
.end method

.method public getOpenedBrowsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    sget-object v0, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->h:Ljava/util/List;

    return-object v0
.end method

.method public getmDesktops()Ljava/util/List;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->g:Ljava/util/List;

    return-object v0
.end method

.method public reLoad(Ljava/lang/String;)V
    .locals 14
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 59
    sget-object v7, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->g:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 60
    iget-object v7, p0, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 61
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v2, "it":Landroid/content/Intent;
    const-string v7, "android.intent.category.HOME"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const/4 v7, 0x0

    invoke-virtual {v3, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 64
    .local v6, "resolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 65
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    sget-object v7, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->g:Ljava/util/List;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    sget-object v7, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->d:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDesktops size:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->g:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "i":Landroid/content/Intent;
    const-string v7, "http://m.idea123.cn"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 70
    const/high16 v7, 0x14000000

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 72
    iget-object v7, p0, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const v8, 0x10040

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 75
    .local v4, "r":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 76
    .restart local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 77
    sget-object v7, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->f:Ljava/util/Map;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v13, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "false"

    aput-object v11, v9, v10

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v7, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->d:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add new browser:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 81
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    return-void
.end method

.method public register()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 125
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->b:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/support/CMDHelper;->editHomePage(Landroid/content/Context;Z)V

    .line 126
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->b:Landroid/content/Context;

    const-string v3, "com.android.browser"

    invoke-static {v2, v3}, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->clearSeperateCache(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return v1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showIndex(Ljava/lang/String;)V
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const v8, 0x7f0d0745

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 158
    sget-object v3, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->d:Ljava/lang/String;

    const-string v4, "showIndex---------------"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sput-boolean v7, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->open:Z

    .line 161
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v2, "i":Landroid/content/Intent;
    const/high16 v3, 0x14010000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 168
    sget-object v3, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->f:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v3, "http://hao.lenovo.com/?c=360"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 171
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 172
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->b:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 173
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->b:Landroid/content/Context;

    const v4, 0x7f0d0745

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 174
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 186
    .end local v2    # "i":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "am start -a android.intent.action.VIEW -d http://hao.lenovo.com/?c=360 -n "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v3, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->f:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -f 0x14000000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "cmd":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->b:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/lenovo/safecenter/support/CMDHelper;->exeCmd(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 180
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->b:Landroid/content/Context;

    invoke-static {v3, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 181
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto :goto_0

    .line 183
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public unRegister()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 138
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/support/CMDHelper;->editHomePage(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    const/4 v1, 0x1

    .line 142
    :goto_0
    return v1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregister error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
