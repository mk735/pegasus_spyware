.class public Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;
.super Landroid/app/Activity;
.source "PhoneAccelerateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;,
        Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$b;,
        Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$TaskManagerAdapter;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/ProgressBar;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ScrollView;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ListView;

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;",
            ">;"
        }
    .end annotation
.end field

.field private s:I

.field private t:Landroid/app/ProgressDialog;

.field private u:Z

.field private v:Z

.field private w:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 84
    iput-boolean v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->u:Z

    .line 85
    iput-boolean v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->v:Z

    .line 89
    new-instance v0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$1;-><init>(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->w:Landroid/os/Handler;

    .line 593
    return-void
.end method

.method static synthetic a(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 628
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 629
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->startActivity(Landroid/content/Intent;)V

    .line 630
    invoke-virtual {p0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->finish()V

    .line 631
    return-void
.end method

.method private a(Z)V
    .locals 3
    .param p1, "bool"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 258
    if-eqz p1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->f:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 262
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 267
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->v:Z

    return p1
.end method

.method static synthetic b(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->u:Z

    return p1
.end method

.method static synthetic c(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->v:Z

    return v0
.end method

.method static synthetic d(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->u:Z

    return v0
.end method

.method static synthetic e(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)V
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a(Z)V

    return-void
.end method

.method static synthetic f(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->o:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->p:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getAutoClearTimeGap(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 275
    const-string v4, "policy_settings"

    invoke-virtual {p0, v4, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 277
    .local v0, "pref1":Landroid/content/SharedPreferences;
    const-string v4, "policy_time"

    const-wide/16 v5, 0x14

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 278
    .local v2, "savedVal":J
    const-string v4, "policy_switch"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 279
    .local v1, "saveState":Z
    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0842

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :goto_0
    return-void

    .line 282
    :cond_0
    const v4, 0x7f0d089f

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->w:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->j:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic m(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)V
    .locals 12
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    .prologue
    const/4 v11, 0x0

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->r:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->q:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/performancecenter/framework/DataLayerManager;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v4, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;

    invoke-direct {v4, p0, v3, v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;-><init>(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a:Landroid/content/Context;

    const v2, 0x7f0d0885

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->o:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a:Landroid/content/Context;

    iget v6, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->s:I

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;-><init>(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v11, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->r:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    :cond_1
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->p:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v7, v0

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;

    new-instance v0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;

    iget-object v2, v6, Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;->pkgName:Ljava/lang/String;

    iget-object v3, v6, Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;->appName:Ljava/lang/String;

    iget-object v4, v6, Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;->appIcon:Landroid/graphics/Bitmap;

    iget-object v5, v6, Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;->cacheSize:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;-><init>(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v0, v6, Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;->appCacheSize:J

    add-long/2addr v0, v7

    move-wide v7, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->trimToSize()V

    new-instance v0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0d08a5

    invoke-virtual {p0, v2}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a:Landroid/content/Context;

    invoke-static {v2, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;-><init>(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->r:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    :cond_3
    new-instance v0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$TaskManagerAdapter;

    invoke-direct {v0, p0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$TaskManagerAdapter;-><init>(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)V

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->n:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->i:Landroid/widget/ScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a:Landroid/content/Context;

    const v2, 0x7f0d0882

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a:Landroid/content/Context;

    const v2, 0x7f0d087e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f0d089b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0, v11}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a(Z)V

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->t:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->t:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_4
    return-void
.end method

.method static synthetic o(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic p(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    .prologue
    .line 46
    const-string v0, "HomePage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---> loadProcess start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/performancecenter/coreui/util/Utils;->getLastKillTime(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->o:Ljava/util/ArrayList;

    :goto_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->w:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v0, "HomePage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---> loadProcess end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->getRunningAppListJustInLauncher(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->o:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method static synthetic q(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)V
    .locals 12
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v0, 0x0

    .line 46
    const-string v1, "HomePage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "---> loadCache start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "PERF_RECORD"

    invoke-virtual {p0, v3, v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "CLICKTIME"

    invoke-interface {v3, v4, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sub-long v5, v1, v3

    const-string v7, "HomePage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "lastClickTime == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " currentEnterTime == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "HomePage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "substract == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x4e20

    cmp-long v1, v5, v1

    if-gtz v1, :cond_0

    cmp-long v1, v5, v10

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->w:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->getCacheInfo(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->p:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->w:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v0, "HomePage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---> loadCache end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic r(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    .prologue
    .line 46
    const-string v0, "HomePage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---> loadBoot start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;

    invoke-direct {v0}, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;-><init>()V

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->getBootMap(Landroid/content/Context;)Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->getNeedChangeToForbidJustCount()I

    move-result v0

    const-string v1, "HomePage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "---> loadBoot end"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->w:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->w:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic s(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    .prologue
    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->getRunningAppInfo(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v2, 0x0

    iput v2, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->s:I

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->s:I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v4, 0x1

    aget v0, v0, v4

    add-int/2addr v0, v3

    iput v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->s:I

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    const-string v2, " -fs "

    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/performancecenter/coreui/util/RootPassage;->execRootCmd(Landroid/os/Handler;Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method static synthetic t(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->r:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic u(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->q:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 350
    :goto_0
    return-void

    .line 303
    :sswitch_0
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    const v5, 0x7f0d0881

    invoke-virtual {p0, v5}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 304
    const-string v4, "HomePage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " KillProcessAll"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->d:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->c:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a:Landroid/content/Context;

    const v6, 0x7f0d087d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v8}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a(Z)V

    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->h:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a:Landroid/content/Context;

    const v6, 0x7f0d0884

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->t:Landroid/app/ProgressDialog;

    const v5, 0x7f0d0841

    invoke-virtual {p0, v5}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v4, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v4, v9}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v5, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$2;

    invoke-direct {v5, p0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$2;-><init>(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    new-instance v4, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$4;

    invoke-direct {v4, p0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$4;-><init>(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)V

    invoke-virtual {v4}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$4;->start()V

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "PERF_RECORD"

    invoke-virtual {p0, v6, v9}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "CLICKTIME"

    invoke-interface {v6, v7, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 306
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v4, v5, v6, v8}, Lcom/lenovo/performancecenter/coreui/util/Utils;->recordKillTimeAndPosition(Landroid/content/Context;JI)V

    .line 307
    invoke-static {}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportClickOneKeyEndTask()V

    goto/16 :goto_0

    .line 309
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a()V

    goto/16 :goto_0

    .line 315
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 317
    .local v0, "it":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 321
    .end local v0    # "it":Landroid/content/Intent;
    :sswitch_2
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 322
    .local v2, "it3":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 326
    .end local v2    # "it3":Landroid/content/Intent;
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 327
    .local v1, "it0":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 336
    .end local v1    # "it0":Landroid/content/Intent;
    :sswitch_4
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 337
    .local v3, "it4":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 349
    .end local v3    # "it4":Landroid/content/Intent;
    :sswitch_5
    invoke-direct {p0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a()V

    goto/16 :goto_0

    .line 301
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0904db -> :sswitch_0
        0x7f0904ef -> :sswitch_1
        0x7f0904f1 -> :sswitch_2
        0x7f0904f5 -> :sswitch_3
        0x7f0904f7 -> :sswitch_4
        0x7f0905ad -> :sswitch_5
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 168
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->requestWindowFeature(I)Z

    .line 169
    const v0, 0x7f0300f4

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->setContentView(I)V

    .line 170
    iput-object p0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a:Landroid/content/Context;

    .line 171
    const v0, 0x7f0905ad

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090590

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d0876

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0905ae

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020287

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v0, 0x7f0904ed

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->b:Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;

    const v0, 0x7f0904da

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f0904d9

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0904db

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f0904dd

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->f:Landroid/widget/ProgressBar;

    const v0, 0x7f0904dc

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f0904f0

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->k:Landroid/widget/TextView;

    const v0, 0x7f0904f4

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->l:Landroid/widget/TextView;

    const v0, 0x7f0904f6

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->m:Landroid/widget/TextView;

    const v0, 0x7f0904ee

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f090374

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->i:Landroid/widget/ScrollView;

    const v0, 0x7f0904ef

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->j:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904f1

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904f5

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904f7

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090278

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->n:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->n:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 173
    invoke-static {}, Lcom/lenovo/safecenter/utils/WflUtils;->isRoot()Z

    move-result v0

    sput-boolean v0, Lcom/lenovo/performancecenter/coreui/util/Utils;->isPerfRoot:Z

    .line 174
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 621
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 622
    invoke-direct {p0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a()V

    .line 624
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 288
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 289
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->b:Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;

    invoke-virtual {v0}, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->onPause()V

    .line 290
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 291
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f0d0897

    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 220
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->l:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->i:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a:Landroid/content/Context;

    const v2, 0x7f0d0883

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 227
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a:Landroid/content/Context;

    const v2, 0x7f0d087b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->d:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->a(Z)V

    .line 230
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->b:Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;

    invoke-virtual {v0}, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->onResume()V

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->o:Ljava/util/ArrayList;

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->p:Ljava/util/ArrayList;

    .line 234
    new-instance v0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$3;

    invoke-direct {v0, p0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$3;-><init>(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)V

    invoke-virtual {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$3;->start()V

    .line 235
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 236
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 296
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 297
    return-void
.end method
