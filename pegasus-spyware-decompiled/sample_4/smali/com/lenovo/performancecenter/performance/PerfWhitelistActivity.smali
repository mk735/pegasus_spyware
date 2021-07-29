.class public Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;
.super Landroid/app/Activity;
.source "PerfWhitelistActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$c;,
        Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$b;,
        Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/ListView;

.field private d:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$b;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private j:Landroid/content/pm/PackageManager;

.field private k:Landroid/database/sqlite/SQLiteDatabase;

.field private l:Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/content/Context;

.field private p:Landroid/widget/AdapterView$OnItemClickListener;

.field private q:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 89
    new-instance v0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$1;-><init>(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->p:Landroid/widget/AdapterView$OnItemClickListener;

    .line 143
    new-instance v0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$2;

    invoke-direct {v0, p0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$2;-><init>(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->q:Landroid/os/Handler;

    .line 437
    return-void
.end method

.method private a()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v1, "listProtected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->k:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_1

    .line 187
    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->k:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT * FROM ApplicationsInfo where state = 1 "

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 188
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 189
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 190
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 191
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 192
    const-string v3, "pkgName"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 197
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 200
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    return-object v1
.end method

.method static synthetic a(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->g:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic b(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->h:I

    return v0
.end method

.method static synthetic c(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->i:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$b;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->d:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$b;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)Ljava/util/ArrayList;
    .locals 14
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    .prologue
    .line 38
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->j:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->getInstalledAppInLauncher(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-direct {p0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->a()Ljava/util/ArrayList;

    move-result-object v12

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/performancecenter/framework/DataLayerManager;->getLenovoHighLevelPkg(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-gtz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    const/4 v1, 0x0

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->j:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->j:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/performancecenter/framework/DataLayerManager;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    if-ne v1, v0, :cond_3

    new-instance v0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;-><init>(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;Ljava/lang/String;IILjava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;-><init>(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;Ljava/lang/String;IILjava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    if-ne v1, v0, :cond_5

    new-instance v0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;-><init>(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;Ljava/lang/String;IILjava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    new-instance v0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;-><init>(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;Ljava/lang/String;IILjava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7cfb\u7edf\u5e94\u7528\uff08"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff09"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;-><init>(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;Ljava/lang/Boolean;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v7, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7528\u6237\u5e94\u7528\uff08"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff09"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;-><init>(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;Ljava/lang/Boolean;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v8, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->trimToSize()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->trimToSize()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->h:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    return-object v0
.end method

.method static synthetic j(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->q:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 411
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0905ad

    if-ne v0, v1, :cond_0

    .line 413
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->i:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/lenovo/performancecenter/framework/DataLayerManager;->updateApplicationList(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 414
    invoke-virtual {p0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->finish()V

    .line 416
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->requestWindowFeature(I)Z

    .line 67
    const v0, 0x7f0300f3

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->setContentView(I)V

    .line 68
    const v0, 0x7f0905ad

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->e:Landroid/widget/ImageView;

    const v0, 0x7f090590

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->f:Landroid/widget/TextView;

    const v1, 0x7f0d0851

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f0904ec

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f0904c5

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->c:Landroid/widget/ListView;

    .line 70
    iput-object p0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->o:Landroid/content/Context;

    .line 71
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 73
    invoke-virtual {p0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->j:Landroid/content/pm/PackageManager;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->g:Ljava/util/ArrayList;

    .line 75
    iput v2, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->h:I

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->i:Ljava/util/HashMap;

    .line 77
    invoke-virtual {p0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/performancecenter/framework/DataLayerManager;->getWhiteListNotKill(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->m:Ljava/util/ArrayList;

    .line 78
    invoke-static {}, Lcom/lenovo/performancecenter/framework/DataLayerManager;->getWhiteListSuggestNotKill()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->n:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$b;

    invoke-direct {v0, p0, p0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$b;-><init>(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->d:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$b;

    .line 81
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->d:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->p:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->l:Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->l:Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

    :cond_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->k:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->l:Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

    invoke-virtual {v0}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->k:Landroid/database/sqlite/SQLiteDatabase;

    .line 85
    :cond_1
    new-instance v0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$3;

    invoke-direct {v0, p0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$3;-><init>(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)V

    invoke-virtual {v0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$3;->start()V

    .line 86
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 394
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->k:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->k:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 396
    iput-object v1, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->k:Landroid/database/sqlite/SQLiteDatabase;

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->l:Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->l:Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

    invoke-virtual {v0}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;->close()V

    .line 400
    iput-object v1, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->l:Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 403
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 405
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 406
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 420
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->i:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/lenovo/performancecenter/framework/DataLayerManager;->updateApplicationList(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 423
    invoke-virtual {p0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->finish()V

    .line 425
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 387
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 388
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 389
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 125
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 126
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 119
    return-void
.end method
