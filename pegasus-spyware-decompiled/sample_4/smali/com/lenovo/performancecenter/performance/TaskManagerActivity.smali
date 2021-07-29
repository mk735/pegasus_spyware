.class public Lcom/lenovo/performancecenter/performance/TaskManagerActivity;
.super Landroid/app/Activity;
.source "TaskManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/performancecenter/performance/TaskManagerActivity$b;,
        Lcom/lenovo/performancecenter/performance/TaskManagerActivity$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TaskManagerActivity"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/ListView;

.field private g:Lcom/lenovo/performancecenter/performance/TaskManagerActivity$a;

.field private h:Landroid/widget/Button;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/performancecenter/performance/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/performancecenter/performance/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/performancecenter/performance/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:Landroid/content/Context;

.field private o:Landroid/widget/AdapterView$OnItemClickListener;

.field private p:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 113
    new-instance v0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$1;-><init>(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->o:Landroid/widget/AdapterView$OnItemClickListener;

    .line 291
    new-instance v0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$3;

    invoke-direct {v0, p0}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$3;-><init>(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->p:Landroid/os/Handler;

    .line 456
    return-void
.end method

.method private a(Landroid/content/pm/PackageManager;)I
    .locals 22
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->n:Landroid/content/Context;

    invoke-static {v7}, Lcom/lenovo/performancecenter/coreui/util/Utils;->getLastKillTime(Landroid/content/Context;)J

    move-result-wide v20

    sub-long v14, v5, v20

    .line 233
    .local v14, "interval":J
    const/16 v18, 0x0

    .line 236
    .local v18, "totalDisplayAppCount":I
    const-wide/16 v5, 0x3a98

    cmp-long v5, v14, v5

    if-gtz v5, :cond_1

    const-wide/16 v5, 0x0

    cmp-long v5, v14, v5

    if-lez v5, :cond_1

    .line 237
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 245
    .local v16, "runningAppMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[I>;"
    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 246
    .local v12, "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[I>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 247
    .local v3, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    const/4 v6, 0x2

    aget v5, v5, v6

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 251
    const/4 v5, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 252
    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v10, Ljava/lang/ref/SoftReference;

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/performancecenter/framework/DataLayerManager;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v10, v5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 254
    .local v10, "bitMap":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 255
    .local v4, "appName":Ljava/lang/String;
    iget v5, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-gtz v5, :cond_2

    const/4 v5, 0x1

    :goto_2
    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    const/4 v8, 0x0

    .line 257
    .local v8, "flag":I
    :goto_3
    new-instance v2, Lcom/lenovo/performancecenter/performance/AppInfo;

    const/4 v5, 0x0

    invoke-virtual {v10}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/lenovo/performancecenter/performance/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;II)V

    .line 258
    .local v2, "info":Lcom/lenovo/performancecenter/performance/AppInfo;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    const/4 v6, 0x1

    aget v5, v5, v6

    iput v5, v2, Lcom/lenovo/performancecenter/performance/AppInfo;->memory:I

    .line 259
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->m:I

    iget v6, v2, Lcom/lenovo/performancecenter/performance/AppInfo;->memory:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->m:I

    .line 260
    add-int/lit8 v18, v18, 0x1

    .line 261
    iget v5, v2, Lcom/lenovo/performancecenter/performance/AppInfo;->flag:I

    if-nez v5, :cond_4

    .line 262
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 266
    .end local v2    # "info":Lcom/lenovo/performancecenter/performance/AppInfo;
    .end local v4    # "appName":Ljava/lang/String;
    .end local v8    # "flag":I
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "bitMap":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :catch_0
    move-exception v11

    .line 267
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v11}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 239
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v12    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[I>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "runningAppMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[I>;"
    :cond_1
    const-string v5, "TaskManagerActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "readRunningAppCountIncludingHidden start"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->n:Landroid/content/Context;

    invoke-static {v5}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->getRunningAppInfoJustInLauncher(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v16

    .line 242
    .restart local v16    # "runningAppMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[I>;"
    const-string v5, "TaskManagerActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "readRunningAppCountIncludingHidden end"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 255
    .restart local v3    # "pkgName":Ljava/lang/String;
    .restart local v4    # "appName":Ljava/lang/String;
    .restart local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "bitMap":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .restart local v12    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[I>;"
    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_3
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 264
    .restart local v2    # "info":Lcom/lenovo/performancecenter/performance/AppInfo;
    .restart local v8    # "flag":I
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 272
    .end local v2    # "info":Lcom/lenovo/performancecenter/performance/AppInfo;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "appName":Ljava/lang/String;
    .end local v8    # "flag":I
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "bitMap":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v12    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[I>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 273
    new-instance v19, Lcom/lenovo/performancecenter/performance/AppInfo;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const v7, 0x7f0d086b

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-direct {v0, v5, v6, v7}, Lcom/lenovo/performancecenter/performance/AppInfo;-><init>(ZZLjava/lang/String;)V

    .line 274
    .local v19, "userTitle":Lcom/lenovo/performancecenter/performance/AppInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->j:Ljava/util/ArrayList;

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v5, v6, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 277
    .end local v19    # "userTitle":Lcom/lenovo/performancecenter/performance/AppInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 278
    new-instance v17, Lcom/lenovo/performancecenter/performance/AppInfo;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const v7, 0x7f0d086c

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-direct {v0, v5, v6, v7}, Lcom/lenovo/performancecenter/performance/AppInfo;-><init>(ZZLjava/lang/String;)V

    .line 279
    .local v17, "systemTitle":Lcom/lenovo/performancecenter/performance/AppInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->k:Ljava/util/ArrayList;

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v5, v6, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 282
    .end local v17    # "systemTitle":Lcom/lenovo/performancecenter/performance/AppInfo;
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->trimToSize()V

    .line 283
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->trimToSize()V

    .line 284
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->i:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->j:Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 285
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->i:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->k:Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 286
    return v18
.end method

.method static synthetic a(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/TaskManagerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->m:I

    return p1
.end method

.method static synthetic a(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;Landroid/content/pm/PackageManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/TaskManagerActivity;
    .param p1, "x1"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->a(Landroid/content/pm/PackageManager;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Lcom/lenovo/performancecenter/performance/TaskManagerActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->g:Lcom/lenovo/performancecenter/performance/TaskManagerActivity$a;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->m:I

    return v0
.end method

.method static synthetic f(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->n:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->p:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 326
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 346
    :goto_0
    return-void

    .line 328
    :sswitch_0
    invoke-virtual {p0}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->finish()V

    goto :goto_0

    .line 331
    :sswitch_1
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 344
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->l:Ljava/util/ArrayList;

    const-string v2, " -fs "

    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->n:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/performancecenter/coreui/util/RootPassage;->execRootCmd(Landroid/os/Handler;Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Context;)V

    .line 345
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->n:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/performancecenter/coreui/util/Utils;->recordKillTimeAndPosition(Landroid/content/Context;JI)V

    goto :goto_0

    .line 326
    :sswitch_data_0
    .sparse-switch
        0x7f0904c7 -> :sswitch_1
        0x7f0905ad -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->requestWindowFeature(I)Z

    .line 71
    const v0, 0x7f0300eb

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->setContentView(I)V

    .line 72
    const v0, 0x7f0905ad

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->a:Landroid/widget/ImageView;

    const v0, 0x7f090590

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->b:Landroid/widget/TextView;

    const v1, 0x7f0d0860

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v0, 0x7f0904d3

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f0904d4

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f0904c5

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->f:Landroid/widget/ListView;

    const v0, 0x7f0904c7

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iput-object p0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->n:Landroid/content/Context;

    .line 75
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 452
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 453
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 319
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 320
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 321
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 98
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->i:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->j:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->k:Ljava/util/ArrayList;

    .line 102
    iput v1, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->m:I

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->l:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$2;

    invoke-direct {v0, p0}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$2;-><init>(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)V

    invoke-virtual {v0}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$2;->start()V

    .line 105
    new-instance v0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$a;

    invoke-direct {v0, p0, p0}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$a;-><init>(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->g:Lcom/lenovo/performancecenter/performance/TaskManagerActivity$a;

    .line 106
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->g:Lcom/lenovo/performancecenter/performance/TaskManagerActivity$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->o:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 109
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 355
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 356
    return-void
.end method
