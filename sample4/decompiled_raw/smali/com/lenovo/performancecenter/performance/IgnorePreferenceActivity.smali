.class public Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;
.super Lcom/lenovo/safecenter/platform/BaseTitlePreferenceActivity;
.source "IgnorePreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$b;,
        Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/ListView;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/performancecenter/performance/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/performancecenter/performance/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/performancecenter/performance/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/content/pm/PackageManager;

.field private g:Landroid/database/sqlite/SQLiteDatabase;

.field private h:Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

.field private i:Landroid/widget/LinearLayout;

.field private j:Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$a;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BaseTitlePreferenceActivity;-><init>()V

    .line 178
    new-instance v0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$3;

    invoke-direct {v0, p0}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$3;-><init>(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;)V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->l:Landroid/os/Handler;

    .line 497
    return-void
.end method

.method static synthetic a(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 370
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 371
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 372
    invoke-virtual {p0}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->finish()V

    .line 373
    return-void
.end method

.method static synthetic b(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;)Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->j:Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$a;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;)V
    .locals 13
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;

    .prologue
    const/4 v5, 0x1

    const/4 v11, 0x0

    .line 43
    invoke-static {p0}, Lcom/lenovo/performancecenter/framework/DataLayerManager;->getWhiteListNotKill(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->k:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->g:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->g:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT DISTINCT * FROM ApplicationsInfo where state = 1 "

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "flag"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v0, "pkgName"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "appName"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f020022

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->f:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->f:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->f:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-static {v4}, Lcom/lenovo/performancecenter/framework/DataLayerManager;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    move-object v2, v3

    :goto_1
    new-instance v0, Lcom/lenovo/performancecenter/performance/AppInfo;

    const-string v3, "procName"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/performancecenter/performance/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;II)V

    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v11, v0, Lcom/lenovo/performancecenter/performance/AppInfo;->canRemove:Z

    iget v1, v0, Lcom/lenovo/performancecenter/performance/AppInfo;->flag:I

    if-nez v1, :cond_0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v12, v0

    move-object v0, v3

    move-object v3, v12

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v4, v2

    move-object v2, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iput-boolean v5, v0, Lcom/lenovo/performancecenter/performance/AppInfo;->canRemove:Z

    iget v1, v0, Lcom/lenovo/performancecenter/performance/AppInfo;->flag:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    new-instance v0, Lcom/lenovo/performancecenter/performance/AppInfo;

    const v1, 0x7f0d086b

    invoke-virtual {p0, v1}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v5, v1}, Lcom/lenovo/performancecenter/performance/AppInfo;-><init>(ZZLjava/lang/String;)V

    new-instance v1, Lcom/lenovo/performancecenter/performance/AppInfo;

    const v2, 0x7f0d086c

    invoke-virtual {p0, v2}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v5, v11, v2}, Lcom/lenovo/performancecenter/performance/AppInfo;-><init>(ZZLjava/lang/String;)V

    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v11, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->e:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v11, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->d:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    return-void
.end method

.method static synthetic g(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->i:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 360
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0904ce

    if-ne v1, v2, :cond_1

    .line 361
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 362
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 367
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0904b9

    if-ne v1, v2, :cond_0

    .line 365
    invoke-direct {p0}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->a()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitlePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f020286

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0d0869

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 72
    invoke-virtual {p0}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->f:Landroid/content/pm/PackageManager;

    .line 73
    const v0, 0x7f0300e9

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->setContentView(I)V

    .line 74
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->i:Landroid/widget/LinearLayout;

    .line 75
    const v0, 0x7f0904c5

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->b:Landroid/widget/ListView;

    .line 77
    const v0, 0x7f0904ce

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->a:Landroid/widget/Button;

    .line 78
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 486
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitlePreferenceActivity;->onDestroy()V

    .line 488
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 495
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 172
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->a()V

    .line 175
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/lenovo/safecenter/platform/BaseTitlePreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 345
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitlePreferenceActivity;->onPause()V

    .line 346
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->g:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 348
    iput-object v1, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->g:Landroid/database/sqlite/SQLiteDatabase;

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->h:Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->h:Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

    invoke-virtual {v0}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;->close()V

    .line 353
    iput-object v1, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->h:Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

    .line 355
    :cond_1
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 356
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitlePreferenceActivity;->onResume()V

    .line 101
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 103
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->i:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->c:Ljava/util/List;

    .line 105
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->h:Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->h:Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

    :cond_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->g:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->h:Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;

    invoke-virtual {v0}, Lcom/lenovo/performancecenter/framework/PerformanceDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->g:Landroid/database/sqlite/SQLiteDatabase;

    .line 106
    :cond_1
    new-instance v0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$2;

    invoke-direct {v0, p0}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$2;-><init>(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;)V

    invoke-virtual {v0}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$2;->start()V

    .line 108
    new-instance v0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$a;

    invoke-direct {v0, p0, p0}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$a;-><init>(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->j:Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$a;

    .line 109
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->j:Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$1;

    invoke-direct {v1, p0}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$1;-><init>(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 154
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 377
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitlePreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 378
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitlePreferenceActivity;->onStart()V

    .line 85
    return-void
.end method
