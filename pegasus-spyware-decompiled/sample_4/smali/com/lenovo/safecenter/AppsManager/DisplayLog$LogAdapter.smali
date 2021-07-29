.class public Lcom/lenovo/safecenter/AppsManager/DisplayLog$LogAdapter;
.super Landroid/widget/BaseAdapter;
.source "DisplayLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/DisplayLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LogAdapter"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/SafeLog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/AppsManager/DisplayLog;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/SafeLog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p2, "mList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/SafeLog;>;"
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$LogAdapter;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 324
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$LogAdapter;->b:Landroid/view/LayoutInflater;

    .line 325
    iput-object p2, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$LogAdapter;->c:Ljava/util/List;

    .line 326
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$LogAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 333
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 337
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 343
    if-nez p2, :cond_0

    .line 344
    iget-object v7, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$LogAdapter;->b:Landroid/view/LayoutInflater;

    const v8, 0x7f0300bd

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 346
    new-instance v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;

    iget-object v7, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$LogAdapter;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-direct {v2, v7}, Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;-><init>(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)V

    .line 347
    .local v2, "holder":Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;
    const v7, 0x7f09027b

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;->a:Landroid/widget/ImageView;

    .line 348
    const v7, 0x7f0903bd

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;->b:Landroid/widget/ImageView;

    .line 349
    const v7, 0x7f090435

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;->c:Landroid/widget/TextView;

    .line 350
    const v7, 0x7f090280

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;->d:Landroid/widget/TextView;

    .line 351
    const v7, 0x7f090281

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;->e:Landroid/widget/TextView;

    .line 352
    const v7, 0x7f09027c

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;->f:Landroid/widget/TextView;

    .line 353
    const v7, 0x7f09027e

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;->g:Landroid/widget/TextView;

    .line 354
    const v7, 0x7f090438

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;->h:Landroid/widget/TextView;

    .line 355
    const v7, 0x7f090439

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;->i:Landroid/widget/TextView;

    .line 356
    const v7, 0x7f090436

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;->j:Landroid/widget/LinearLayout;

    .line 357
    const v7, 0x7f090437

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;->k:Landroid/widget/LinearLayout;

    .line 358
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 364
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$LogAdapter;->c:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/safecenter/support/SafeLog;

    .line 365
    .local v5, "safeLog":Lcom/lenovo/safecenter/support/SafeLog;
    iget-object v4, v5, Lcom/lenovo/safecenter/support/SafeLog;->packageName:Ljava/lang/String;

    .line 367
    .local v4, "pkgname":Ljava/lang/String;
    iget-object v7, v5, Lcom/lenovo/safecenter/support/SafeLog;->logDay:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 368
    iget-object v7, v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;->c:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 369
    iget-object v7, v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;->c:Landroid/widget/TextView;

    iget-object v8, v5, Lcom/lenovo/safecenter/support/SafeLog;->logDay:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v7, v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;->j:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .end local v4    # "pkgname":Ljava/lang/String;
    .end local v5    # "safeLog":Lcom/lenovo/safecenter/support/SafeLog;
    :goto_1
    return-object p2

    .line 360
    .end local v2    # "holder":Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;

    .restart local v2    # "holder":Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;
    goto :goto_0

    .line 372
    .restart local v4    # "pkgname":Ljava/lang/String;
    .restart local v5    # "safeLog":Lcom/lenovo/safecenter/support/SafeLog;
    :cond_1
    :try_start_1
    iget-object v7, v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;->c:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    iget-object v7, v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;->j:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 375
    iget v7, v5, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 376
    iget-object v7, v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;->d:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$LogAdapter;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    const v10, 0x7f0d0487

    invoke-virtual {v9, v10}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$LogAdapter;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    iget-object v10, v5, Lcom/lenovo/safecenter/support/SafeLog;->type:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v9, v10}, Lcom/lenovo/safecenter/database/AppUtil;->getDescriptionByPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    :goto_2
    iget-object v7, v5, Lcom/lenovo/safecenter/support/SafeLog;->number:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 383
    iget-object v7, v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;->h:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 384
    iget-object v7, v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;->h:Landroid/widget/TextView;

    iget-object v8, v5, Lcom/lenovo/safecenter/support/SafeLog;->number:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    :cond_2
    iget-object v7, v5, Lcom/lenovo/safecenter/support/SafeLog;->content:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 387
    iget-object v7, v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;->i:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 388
    iget-object v7, v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;->i:Landroid/widget/TextView;

    iget-object v8, v5, Lcom/lenovo/safecenter/support/SafeLog;->content:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    :cond_3
    iget v7, v5, Lcom/lenovo/safecenter/support/SafeLog;->action:I

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$LogAdapter;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    const v8, 0x7f0d0111

    invoke-virtual {v7, v8}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 392
    .local v6, "str":Ljava/lang/String;
    :goto_3
    iget-object v8, v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;->e:Landroid/widget/TextView;

    iget v7, v5, Lcom/lenovo/safecenter/support/SafeLog;->action:I

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$LogAdapter;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-virtual {v7}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f070018

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    :goto_4
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 395
    iget-object v7, v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;->b:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 397
    iget-object v7, v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;->e:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v7, v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;->g:Landroid/widget/TextView;

    iget-object v8, v5, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    iget-object v9, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$LogAdapter;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-static {v8, v9}, Lcom/lenovo/safecenter/utils/MyUtils;->formatAllTime(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, "appDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_4

    const-string v7, ""

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 402
    :cond_4
    iget-object v7, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$LogAdapter;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-virtual {v7}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02017b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 403
    iget-object v7, v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;->f:Landroid/widget/TextView;

    iget-object v8, v5, Lcom/lenovo/safecenter/support/SafeLog;->appName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    :goto_5
    iget-object v7, v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 443
    .end local v0    # "appDrawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "pkgname":Ljava/lang/String;
    .end local v5    # "safeLog":Lcom/lenovo/safecenter/support/SafeLog;
    .end local v6    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 444
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 379
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "pkgname":Ljava/lang/String;
    .restart local v5    # "safeLog":Lcom/lenovo/safecenter/support/SafeLog;
    :cond_5
    :try_start_2
    iget-object v7, v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;->d:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$LogAdapter;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    iget-object v9, v5, Lcom/lenovo/safecenter/support/SafeLog;->type:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v8, v9}, Lcom/lenovo/safecenter/database/AppUtil;->getDescriptionByPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 391
    :cond_6
    iget-object v7, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$LogAdapter;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    const v8, 0x7f0d0112

    invoke-virtual {v7, v8}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 392
    .restart local v6    # "str":Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$LogAdapter;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-virtual {v7}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f070017

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v7

    goto :goto_4

    .line 406
    .restart local v0    # "appDrawable":Landroid/graphics/drawable/Drawable;
    :cond_8
    :try_start_3
    iget-object v7, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$LogAdapter;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-static {v7}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->j(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 407
    iget-object v7, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$LogAdapter;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-static {v7}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->j(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 408
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v7, v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;->f:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$LogAdapter;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-static {v8}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->j(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 409
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v1

    .line 410
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 411
    iget-object v7, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$LogAdapter;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-virtual {v7}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02017b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 412
    iget-object v7, v2, Lcom/lenovo/safecenter/AppsManager/DisplayLog$a;->f:Landroid/widget/TextView;

    iget-object v8, v5, Lcom/lenovo/safecenter/support/SafeLog;->appName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5
.end method
