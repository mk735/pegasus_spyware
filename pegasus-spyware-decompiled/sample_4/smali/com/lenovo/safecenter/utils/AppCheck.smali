.class public Lcom/lenovo/safecenter/utils/AppCheck;
.super Ljava/lang/Object;
.source "AppCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/utils/AppCheck$a;
    }
.end annotation


# static fields
.field public static final ACTION_ACTIVITY_SWITCH:Ljava/lang/String; = "com.lenovo.safecenter.activityswitch"

.field public static final ACTION_ACTIVITY_SWITCH_2:Ljava/lang/String; = "com.lenovo.safecenter.activityswitch2"

.field private static d:Lcom/lenovo/safecenter/utils/AppCheck;

.field private static i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static isRun:Z


# instance fields
.field private a:Landroid/app/IActivityManager;

.field private b:Landroid/app/ActivityManager;

.field private c:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/safecenter/utils/AppCheck;->isRun:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/safecenter/utils/AppCheck;->e:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/safecenter/utils/AppCheck;->f:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/safecenter/utils/AppCheck;->g:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/safecenter/utils/AppCheck;->h:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/AppCheck;->c:Landroid/content/Context;

    .line 38
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/utils/AppCheck;->a:Landroid/app/IActivityManager;

    .line 39
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/lenovo/safecenter/utils/AppCheck;->b:Landroid/app/ActivityManager;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/utils/AppCheck;)Landroid/app/IActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/AppCheck;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/AppCheck;->a:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/utils/AppCheck;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/AppCheck;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/AppCheck;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/utils/AppCheck;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/AppCheck;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/AppCheck;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/utils/AppCheck;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/AppCheck;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/AppCheck;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/lenovo/safecenter/utils/AppCheck;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/AppCheck;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/AppCheck;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/utils/AppCheck;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/AppCheck;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/AppCheck;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/lenovo/safecenter/utils/AppCheck;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/AppCheck;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/AppCheck;->b:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/utils/AppCheck;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/AppCheck;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/AppCheck;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/lenovo/safecenter/utils/AppCheck;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/AppCheck;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/AppCheck;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/utils/AppCheck;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/AppCheck;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/AppCheck;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/utils/AppCheck;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/AppCheck;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/AppCheck;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static getDefault(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/AppCheck;
    .locals 7
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 43
    sget-object v4, Lcom/lenovo/safecenter/utils/AppCheck;->d:Lcom/lenovo/safecenter/utils/AppCheck;

    if-nez v4, :cond_0

    .line 44
    new-instance v4, Lcom/lenovo/safecenter/utils/AppCheck;

    invoke-direct {v4, p0}, Lcom/lenovo/safecenter/utils/AppCheck;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/lenovo/safecenter/utils/AppCheck;->d:Lcom/lenovo/safecenter/utils/AppCheck;

    .line 46
    :cond_0
    sget-object v4, Lcom/lenovo/safecenter/utils/AppCheck;->i:Ljava/util/List;

    if-nez v4, :cond_1

    .line 47
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/lenovo/safecenter/utils/AppCheck;->i:Ljava/util/List;

    .line 48
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v1, "it":Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 51
    .local v3, "resolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 52
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const-string v4, "ydp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDesktops:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    sget-object v4, Lcom/lenovo/safecenter/utils/AppCheck;->i:Ljava/util/List;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "it":Landroid/content/Intent;
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v3    # "resolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    sget-object v4, Lcom/lenovo/safecenter/utils/AppCheck;->d:Lcom/lenovo/safecenter/utils/AppCheck;

    return-object v4
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/safecenter/utils/AppCheck;->isRun:Z

    .line 66
    return-void
.end method

.method public execute()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/safecenter/utils/AppCheck;->isRun:Z

    .line 61
    new-instance v0, Lcom/lenovo/safecenter/utils/AppCheck$a;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/utils/AppCheck$a;-><init>(Lcom/lenovo/safecenter/utils/AppCheck;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/AppCheck$a;->start()V

    .line 62
    return-void
.end method
