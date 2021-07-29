.class public Lcom/lenovo/safecenter/AppsManager/AppsManager;
.super Landroid/app/Activity;
.source "AppsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;,
        Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter;,
        Lcom/lenovo/safecenter/AppsManager/AppsManager$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/AppPerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/ProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/pm/PackageManager;

.field private e:Lcom/lenovo/safecenter/database/AppDatabase;

.field private f:Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;

.field private g:Landroid/widget/ProgressBar;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/GridView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/app/ActivityManager;

.field private p:Landroid/util/DisplayMetrics;

.field private q:I

.field private r:Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter;

.field private s:I

.field private t:Lcom/lenovo/safecenter/AppsManager/AppsManager$a;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Z

.field private x:I

.field private y:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->s:I

    .line 67
    const-string v0, "privacy"

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->u:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/lenovo/safecenter/AppsManager/AppsManager$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/AppsManager/AppsManager$1;-><init>(Lcom/lenovo/safecenter/AppsManager/AppsManager;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->y:Landroid/os/Handler;

    .line 526
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/AppsManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppsManager;

    .prologue
    .line 44
    iget v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->x:I

    return v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/AppsManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppsManager;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->x:I

    return p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/AppsManager;Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;)Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppsManager;
    .param p1, "x1"    # Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->f:Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/AppsManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppsManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->b:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/AppsManager/AppsManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppsManager;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->s:I

    return p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppsManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppsManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppsManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->g:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppsManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->f:Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppsManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppsManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppsManager;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->v:Z

    return v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppsManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Lcom/lenovo/safecenter/database/AppDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppsManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->e:Lcom/lenovo/safecenter/database/AppDatabase;

    return-object v0
.end method

.method static synthetic k(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppsManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->y:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppsManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic m(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppsManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->o:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic n(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppsManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->r:Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter;

    return-object v0
.end method

.method static synthetic o(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppsManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->d:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic p(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppsManager;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->w:Z

    return v0
.end method


# virtual methods
.method public getFilteredApps()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/ProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 401
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v10, "processList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/ProcessInfo;>;"
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/16 v14, 0x2000

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v7

    .line 405
    .local v7, "pAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v13, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->o:Landroid/app/ActivityManager;

    invoke-virtual {v13}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v9

    .line 407
    .local v9, "procList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_2

    .line 408
    :cond_0
    const/4 v10, 0x0

    .line 467
    .end local v10    # "processList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/ProcessInfo;>;"
    :cond_1
    return-object v10

    .line 411
    .restart local v10    # "processList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/ProcessInfo;>;"
    :cond_2
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 414
    .local v11, "runningMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 415
    .local v1, "appProcInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v1, :cond_3

    iget-object v13, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v13, :cond_3

    .line 416
    iget-object v13, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v12, v13

    .line 417
    .local v12, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v12, :cond_3

    .line 418
    iget-object v13, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v13, v13, v4

    invoke-virtual {v11, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 423
    .end local v1    # "appProcInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "i":I
    .end local v12    # "size":I
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 424
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/lenovo/safecenter/database/AppUtil;->isThirdpartApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 425
    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 426
    new-instance v6, Lcom/lenovo/safecenter/support/ProcessInfo;

    invoke-direct {v6}, Lcom/lenovo/safecenter/support/ProcessInfo;-><init>()V

    .line 427
    .local v6, "info":Lcom/lenovo/safecenter/support/ProcessInfo;
    invoke-virtual {v6, v0}, Lcom/lenovo/safecenter/support/ProcessInfo;->setAppInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 428
    const-string v2, ""

    .line 430
    .local v2, "appSize":Ljava/lang/String;
    const/4 v13, 0x1

    :try_start_0
    new-array v8, v13, [I

    .line 431
    .local v8, "pids":[I
    const/4 v14, 0x0

    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v13, v13, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    aput v13, v8, v14

    .line 432
    invoke-virtual {v6, v2}, Lcom/lenovo/safecenter/support/ProcessInfo;->setSize(Ljava/lang/String;)V

    .line 445
    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v13, v13, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v6, v13}, Lcom/lenovo/safecenter/support/ProcessInfo;->setState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .end local v8    # "pids":[I
    :goto_2
    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v14, "com.lenovo.safecenter"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 458
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 454
    :catch_0
    move-exception v3

    .line 455
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public initData()V
    .locals 1

    .prologue
    .line 209
    new-instance v0, Lcom/lenovo/safecenter/AppsManager/AppsManager$3;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/AppsManager/AppsManager$3;-><init>(Lcom/lenovo/safecenter/AppsManager/AppsManager;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/AppsManager/AppsManager$3;->start()V

    .line 225
    return-void
.end method

.method public notifyUpdate()V
    .locals 6

    .prologue
    const/4 v4, 0x6

    .line 228
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 231
    .local v1, "num":I
    :goto_0
    if-gt v1, v4, :cond_1

    .line 232
    iget v3, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->q:I

    mul-int/lit8 v2, v3, 0x6

    .line 233
    .local v2, "width":I
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 235
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 236
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->l:Landroid/widget/GridView;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 238
    const-string v3, "ww"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "itemWidth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->q:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "processList.size()=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dm.widthPixels"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->p:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "num=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_1
    return-void

    .line 228
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "num":I
    .end local v2    # "width":I
    :cond_0
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    .line 243
    .restart local v1    # "num":I
    :cond_1
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->l:Landroid/widget/GridView;

    invoke-virtual {v3, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 244
    iget v3, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->q:I

    mul-int v2, v3, v1

    .line 245
    .restart local v2    # "width":I
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 247
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 248
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    const-string v3, "ww"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "itemWidth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->q:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "processList.size()=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dm.widthPixels"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->p:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "num=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 338
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 339
    iget v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->s:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 344
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 345
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->e:Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->b:Ljava/util/List;

    iget v3, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->s:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppPerInfo;

    iget-object v1, v1, Lcom/lenovo/safecenter/support/AppPerInfo;->pkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->u:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/lenovo/safecenter/database/AppDatabase;->getAppPerInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/safecenter/support/AppPerInfo;

    move-result-object v0

    .line 346
    .local v0, "newInfo":Lcom/lenovo/safecenter/support/AppPerInfo;
    if-eqz v0, :cond_0

    .line 347
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->b:Ljava/util/List;

    iget v2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->s:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppPerInfo;

    iget v2, v0, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidCount:I

    iput v2, v1, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidCount:I

    .line 348
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->b:Ljava/util/List;

    iget v2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->s:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppPerInfo;

    iget-object v2, v0, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidmes:Ljava/lang/String;

    iput-object v2, v1, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidmes:Ljava/lang/String;

    .line 349
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->b:Ljava/util/List;

    iget v2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->s:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppPerInfo;

    iget-boolean v2, v0, Lcom/lenovo/safecenter/support/AppPerInfo;->hasNotice:Z

    iput-boolean v2, v1, Lcom/lenovo/safecenter/support/AppPerInfo;->hasNotice:Z

    .line 350
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->b:Ljava/util/List;

    iget v2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->s:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppPerInfo;

    iget-boolean v2, v0, Lcom/lenovo/safecenter/support/AppPerInfo;->isTrust:Z

    iput-boolean v2, v1, Lcom/lenovo/safecenter/support/AppPerInfo;->isTrust:Z

    .line 351
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->b:Ljava/util/List;

    iget v2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->s:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppPerInfo;

    iget v2, v0, Lcom/lenovo/safecenter/support/AppPerInfo;->totalCount:I

    iput v2, v1, Lcom/lenovo/safecenter/support/AppPerInfo;->totalCount:I

    .line 352
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->b:Ljava/util/List;

    iget v2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->s:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppPerInfo;

    iget-object v2, v0, Lcom/lenovo/safecenter/support/AppPerInfo;->totaldmes:Ljava/lang/String;

    iput-object v2, v1, Lcom/lenovo/safecenter/support/AppPerInfo;->totaldmes:Ljava/lang/String;

    .line 353
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->b:Ljava/util/List;

    iget v2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->s:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppPerInfo;

    iget v2, v0, Lcom/lenovo/safecenter/support/AppPerInfo;->isUpload:I

    iput v2, v1, Lcom/lenovo/safecenter/support/AppPerInfo;->isUpload:I

    .line 354
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->a:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 375
    .end local v0    # "newInfo":Lcom/lenovo/safecenter/support/AppPerInfo;
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 357
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->v:Z

    .line 358
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->e:Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/database/AppDatabase;->getTrustedApps(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->x:I

    .line 359
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->y:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->y:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 361
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->e:Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->b:Ljava/util/List;

    iget v3, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->s:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppPerInfo;

    iget-object v1, v1, Lcom/lenovo/safecenter/support/AppPerInfo;->pkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->u:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/lenovo/safecenter/database/AppDatabase;->getAppPerInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/safecenter/support/AppPerInfo;

    move-result-object v0

    .line 362
    .restart local v0    # "newInfo":Lcom/lenovo/safecenter/support/AppPerInfo;
    if-eqz v0, :cond_0

    .line 363
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->b:Ljava/util/List;

    iget v2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->s:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppPerInfo;

    iget v2, v0, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidCount:I

    iput v2, v1, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidCount:I

    .line 364
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->b:Ljava/util/List;

    iget v2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->s:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppPerInfo;

    iget-object v2, v0, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidmes:Ljava/lang/String;

    iput-object v2, v1, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidmes:Ljava/lang/String;

    .line 365
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->b:Ljava/util/List;

    iget v2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->s:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppPerInfo;

    iget-boolean v2, v0, Lcom/lenovo/safecenter/support/AppPerInfo;->hasNotice:Z

    iput-boolean v2, v1, Lcom/lenovo/safecenter/support/AppPerInfo;->hasNotice:Z

    .line 366
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->b:Ljava/util/List;

    iget v2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->s:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppPerInfo;

    iget-boolean v2, v0, Lcom/lenovo/safecenter/support/AppPerInfo;->isTrust:Z

    iput-boolean v2, v1, Lcom/lenovo/safecenter/support/AppPerInfo;->isTrust:Z

    .line 367
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->b:Ljava/util/List;

    iget v2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->s:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppPerInfo;

    iget v2, v0, Lcom/lenovo/safecenter/support/AppPerInfo;->totalCount:I

    iput v2, v1, Lcom/lenovo/safecenter/support/AppPerInfo;->totalCount:I

    .line 368
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->b:Ljava/util/List;

    iget v2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->s:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppPerInfo;

    iget-object v2, v0, Lcom/lenovo/safecenter/support/AppPerInfo;->totaldmes:Ljava/lang/String;

    iput-object v2, v1, Lcom/lenovo/safecenter/support/AppPerInfo;->totaldmes:Ljava/lang/String;

    .line 369
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->b:Ljava/util/List;

    iget v2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->s:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppPerInfo;

    iget v2, v0, Lcom/lenovo/safecenter/support/AppPerInfo;->isUpload:I

    iput v2, v1, Lcom/lenovo/safecenter/support/AppPerInfo;->isUpload:I

    .line 370
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->a:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_0
.end method

.method public onClick()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/lenovo/safecenter/AppsManager/AppsManager$4;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/AppsManager/AppsManager$4;-><init>(Lcom/lenovo/safecenter/AppsManager/AppsManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 298
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->l:Landroid/widget/GridView;

    new-instance v1, Lcom/lenovo/safecenter/AppsManager/AppsManager$5;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/AppsManager/AppsManager$5;-><init>(Lcom/lenovo/safecenter/AppsManager/AppsManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 315
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->j:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/safecenter/AppsManager/AppsManager$6;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/AppsManager/AppsManager$6;-><init>(Lcom/lenovo/safecenter/AppsManager/AppsManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "permType"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->u:Ljava/lang/String;

    .line 108
    :cond_0
    const v1, 0x7f030119

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->setContentView(I)V

    .line 109
    invoke-static {}, Lcom/lenovo/safecenter/utils/WflUtils;->isRoot()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->w:Z

    .line 111
    const v1, 0x7f090590

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d0011

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0905ad

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lcom/lenovo/safecenter/AppsManager/AppsManager$2;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/AppsManager/AppsManager$2;-><init>(Lcom/lenovo/safecenter/AppsManager/AppsManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v1, 0x7f090599

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->m:Landroid/widget/TextView;

    .line 113
    const v1, 0x7f09059a

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->n:Landroid/widget/TextView;

    .line 114
    iget-boolean v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->w:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    :goto_0
    const v1, 0x7f0905a5

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->a:Landroid/widget/ListView;

    .line 124
    const v1, 0x7f09059d

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->h:Landroid/widget/TextView;

    .line 125
    const v1, 0x7f0905a6

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->i:Landroid/widget/TextView;

    .line 126
    const v1, 0x7f0905a3

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->j:Landroid/widget/TextView;

    .line 127
    const v1, 0x7f0905a0

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->l:Landroid/widget/GridView;

    .line 128
    const v1, 0x7f0905a4

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->g:Landroid/widget/ProgressBar;

    .line 129
    const v1, 0x7f09059f

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->k:Landroid/widget/LinearLayout;

    .line 130
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->d:Landroid/content/pm/PackageManager;

    .line 131
    new-instance v1, Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->e:Lcom/lenovo/safecenter/database/AppDatabase;

    .line 133
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->o:Landroid/app/ActivityManager;

    .line 134
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->p:Landroid/util/DisplayMetrics;

    .line 135
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->p:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 137
    const/16 v1, 0x32

    iput v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->q:I

    .line 138
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->l:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 141
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->onClick()V

    .line 142
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->initData()V

    .line 144
    new-instance v1, Lcom/lenovo/safecenter/AppsManager/AppsManager$a;

    invoke-direct {v1, p0, v3}, Lcom/lenovo/safecenter/AppsManager/AppsManager$a;-><init>(Lcom/lenovo/safecenter/AppsManager/AppsManager;B)V

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->t:Lcom/lenovo/safecenter/AppsManager/AppsManager$a;

    .line 145
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lenovo.safecenter.refreshAppsManager"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->t:Lcom/lenovo/safecenter/AppsManager/AppsManager$a;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    return-void

    .line 116
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->m:Landroid/widget/TextView;

    const v2, 0x7f0d0668

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->t:Lcom/lenovo/safecenter/AppsManager/AppsManager$a;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->t:Lcom/lenovo/safecenter/AppsManager/AppsManager$a;

    .line 194
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 195
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 163
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 164
    iget-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager;->v:Z

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->setResult(I)V

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->finish()V

    .line 169
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 186
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 187
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 188
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 181
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 182
    return-void
.end method
