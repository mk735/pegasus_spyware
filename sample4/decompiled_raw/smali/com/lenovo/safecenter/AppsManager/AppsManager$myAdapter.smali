.class public Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/AppsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "myAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/AppPerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/AppsManager/AppsManager;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/AppPerInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 530
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/AppPerInfo;>;"
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 531
    iput-object p2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;->b:Landroid/content/Context;

    .line 532
    iput-object p3, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;->c:Ljava/util/List;

    .line 533
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 541
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 545
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 551
    if-nez p2, :cond_0

    .line 552
    iget-object v12, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;->b:Landroid/content/Context;

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    const v13, 0x7f03011a

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 553
    new-instance v6, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter$a;

    const/4 v12, 0x0

    invoke-direct {v6, p0, v12}, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter$a;-><init>(Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;B)V

    .line 554
    .local v6, "holder":Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter$a;
    const v12, 0x7f0905a8

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v6, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter$a;->a:Landroid/widget/TextView;

    .line 555
    const v12, 0x7f0905aa

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v6, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter$a;->b:Landroid/widget/TextView;

    .line 556
    const v12, 0x7f0905a9

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v6, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter$a;->c:Landroid/widget/TextView;

    .line 557
    const v12, 0x7f0905a7

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v6, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter$a;->d:Landroid/widget/ImageView;

    .line 558
    const v12, 0x7f0905ab

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v6, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter$a;->e:Landroid/widget/ImageView;

    .line 559
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 564
    :goto_0
    :try_start_0
    iget-object v12, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;->c:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/safecenter/support/AppPerInfo;

    .line 566
    .local v8, "info":Lcom/lenovo/safecenter/support/AppPerInfo;
    iget-object v12, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v12}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->o(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Landroid/content/pm/PackageManager;

    move-result-object v12

    iget-object v13, v8, Lcom/lenovo/safecenter/support/AppPerInfo;->pkgName:Ljava/lang/String;

    const/16 v14, 0x2000

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 568
    .local v10, "mAppInfo":Landroid/content/pm/ApplicationInfo;
    const-string v12, "info"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v8, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidCount:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "//"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Lcom/lenovo/safecenter/support/AppPerInfo;->totalCount:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "==="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v8, Lcom/lenovo/safecenter/support/AppPerInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "pm=="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v14}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->o(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "===mAppInfo"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "===mAppInfo.loadLabel(pm)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v14}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->o(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "holder:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v6, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter$a;->a:Landroid/widget/TextView;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v12, v6, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter$a;->a:Landroid/widget/TextView;

    iget-object v13, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v13}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->o(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    iget-object v12, v6, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter$a;->d:Landroid/widget/ImageView;

    iget-object v13, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v13}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->o(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 576
    iget-object v12, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v12}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->p(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 578
    const-string v1, ""

    .line 579
    .local v1, "appMes":Ljava/lang/String;
    iget v12, v8, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidCount:I

    if-nez v12, :cond_1

    .line 580
    iget-object v12, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;->b:Landroid/content/Context;

    const v13, 0x7f0d0202

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 595
    :goto_1
    iget-object v12, v6, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    iget-boolean v12, v8, Lcom/lenovo/safecenter/support/AppPerInfo;->isTrust:Z

    if-eqz v12, :cond_4

    .line 598
    iget-object v12, v6, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter$a;->c:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 599
    iget-object v12, v6, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter$a;->b:Landroid/widget/TextView;

    const v13, 0x7f0d0204

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 608
    .end local v1    # "appMes":Ljava/lang/String;
    :goto_2
    iget v12, v8, Lcom/lenovo/safecenter/support/AppPerInfo;->isUpload:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    .line 609
    iget-object v12, v6, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter$a;->e:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    .end local v8    # "info":Lcom/lenovo/safecenter/support/AppPerInfo;
    .end local v10    # "mAppInfo":Landroid/content/pm/ApplicationInfo;
    :goto_3
    return-object p2

    .line 561
    .end local v6    # "holder":Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter$a;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter$a;

    .restart local v6    # "holder":Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter$a;
    goto/16 :goto_0

    .line 581
    .restart local v1    # "appMes":Ljava/lang/String;
    .restart local v8    # "info":Lcom/lenovo/safecenter/support/AppPerInfo;
    .restart local v10    # "mAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :try_start_1
    iget v12, v8, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidCount:I

    iget v13, v8, Lcom/lenovo/safecenter/support/AppPerInfo;->totalCount:I

    if-ne v12, v13, :cond_2

    .line 582
    iget-object v12, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;->b:Landroid/content/Context;

    const v13, 0x7f0d0203

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 584
    :cond_2
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 585
    .local v11, "sb":Ljava/lang/StringBuffer;
    iget-object v12, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;->b:Landroid/content/Context;

    const v13, 0x7f0d0112

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 587
    iget-object v12, v8, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidmes:Ljava/lang/String;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 589
    .local v3, "apptypes":[Ljava/lang/String;
    move-object v4, v3

    .local v4, "arr$":[Ljava/lang/String;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_4
    if-ge v7, v9, :cond_3

    aget-object v2, v4, v7

    .line 590
    .local v2, "apptype":Ljava/lang/String;
    iget-object v12, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;->b:Landroid/content/Context;

    iget-object v13, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v13}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->j(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v13

    iget-object v14, v8, Lcom/lenovo/safecenter/support/AppPerInfo;->pkgName:Ljava/lang/String;

    invoke-static {v12, v13, v14, v2}, Lcom/lenovo/safecenter/database/AppUtil;->getDescriptionByType(Landroid/content/Context;Lcom/lenovo/safecenter/database/AppDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 589
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 593
    .end local v2    # "apptype":Ljava/lang/String;
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x2

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 601
    .end local v3    # "apptypes":[Ljava/lang/String;
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .end local v11    # "sb":Ljava/lang/StringBuffer;
    :cond_4
    iget-object v12, v6, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter$a;->c:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 612
    .end local v1    # "appMes":Ljava/lang/String;
    .end local v8    # "info":Lcom/lenovo/safecenter/support/AppPerInfo;
    .end local v10    # "mAppInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v5

    .line 613
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 604
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v8    # "info":Lcom/lenovo/safecenter/support/AppPerInfo;
    .restart local v10    # "mAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_5
    :try_start_2
    iget-object v12, v6, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter$a;->b:Landroid/widget/TextView;

    iget-object v13, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;->b:Landroid/content/Context;

    const v14, 0x7f0d0202

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v12, v6, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter$a;->c:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 611
    :cond_6
    iget-object v12, v6, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter$a;->e:Landroid/widget/ImageView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3
.end method
