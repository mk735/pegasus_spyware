.class public Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;
.super Lcom/lenovo/safecenter/platform/BaseTitlePreferenceActivity;
.source "WhiteListSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;,
        Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$c;,
        Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/content/pm/PackageManager;

.field private h:Landroid/database/sqlite/SQLiteDatabase;

.field private i:Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$SelectedItem;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/widget/LinearLayout;

.field private l:Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$b;

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

.field private n:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BaseTitlePreferenceActivity;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->j:Ljava/util/HashMap;

    .line 145
    new-instance v0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$2;

    invoke-direct {v0, p0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$2;-><init>(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;)V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->n:Landroid/os/Handler;

    .line 523
    return-void
.end method

.method static synthetic a(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->k:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;)Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$b;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->l:Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$b;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;)V
    .locals 12
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->e:Ljava/util/ArrayList;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->h:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->h:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT DISTINCT * FROM ApplicationsInfo where state = 0 "

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "flag"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v0, "pkgName"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "appName"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f020022

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->g:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->g:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->g:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-static {v4}, Lcom/lenovo/performancecenter/framework/DataLayerManager;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :goto_1
    new-instance v0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;

    const-string v4, "procName"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    const-string v1, "state"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;-><init>(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;II)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->getInstalledAppInLauncher(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;->b(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;->c(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v0, :cond_4

    new-instance v2, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;

    const v3, 0x7f0d086b

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v10

    invoke-virtual {p0, v3, v4}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;-><init>(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v10, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_4
    if-eqz v1, :cond_5

    new-instance v0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;

    const v2, 0x7f0d086c

    new-array v3, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v10

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;-><init>(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v10, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->f:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->e:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    return-void
.end method

.method static synthetic h(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->n:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 356
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904ce

    if-ne v0, v1, :cond_1

    .line 358
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->m:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/lenovo/performancecenter/framework/DataLayerManager;->updateApplicationList(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 359
    invoke-virtual {p0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->finish()V

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904b9

    if-ne v0, v1, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitlePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v0, 0x7f020286

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0d086a

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 69
    invoke-virtual {p0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->g:Landroid/content/pm/PackageManager;

    .line 70
    const v0, 0x7f0300f3

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->setContentView(I)V

    .line 71
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->k:Landroid/widget/LinearLayout;

    .line 72
    const v0, 0x7f0904c5

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->b:Landroid/widget/ListView;

    .line 73
    const v0, 0x7f0904ec

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->c:Landroid/widget/LinearLayout;

    .line 75
    const v0, 0x7f0904ce

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->a:Landroid/widget/Button;

    .line 76
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 477
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitlePreferenceActivity;->onDestroy()V

    .line 479
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->j:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 486
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 138
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 139
    const-string v0, "IgnoreFragment"

    const-string v1, "onKeyDown()..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->finish()V

    .line 142
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/lenovo/safecenter/platform/BaseTitlePreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 341
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitlePreferenceActivity;->onPause()V

    .line 342
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->h:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 344
    iput-object v1, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->h:Landroid/database/sqlite/SQLiteDatabase;

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->i:Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->i:Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

    invoke-virtual {v0}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;->close()V

    .line 349
    iput-object v1, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->i:Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

    .line 351
    :cond_1
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 352
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitlePreferenceActivity;->onResume()V

    .line 96
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->m:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->d:Ljava/util/List;

    .line 99
    new-instance v0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$b;

    invoke-direct {v0, p0, p0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$b;-><init>(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->l:Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$b;

    .line 100
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->l:Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$1;

    invoke-direct {v1, p0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$1;-><init>(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->i:Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->i:Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

    :cond_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->h:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->i:Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

    invoke-virtual {v0}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->h:Landroid/database/sqlite/SQLiteDatabase;

    .line 131
    :cond_1
    new-instance v0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$3;

    invoke-direct {v0, p0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$3;-><init>(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;)V

    invoke-virtual {v0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$3;->start()V

    .line 133
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 134
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 375
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitlePreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 376
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitlePreferenceActivity;->onStart()V

    .line 91
    return-void
.end method
