.class final Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;
.super Landroid/widget/BaseExpandableListAdapter;
.source "MessageBlackList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/MessageBlackList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$a;,
        Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;

.field private e:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$a;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 358
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->c:Landroid/view/LayoutInflater;

    .line 359
    iput-object p2, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->b:Landroid/content/Context;

    .line 360
    return-void
.end method


# virtual methods
.method public final getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 362
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 366
    int-to-long v0, p2

    return-wide v0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 375
    if-nez p4, :cond_0

    .line 376
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f03005c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 377
    new-instance v1, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$a;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$a;-><init>(Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->e:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$a;

    .line 378
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->e:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$a;

    const v1, 0x7f090265

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$a;->a:Landroid/widget/LinearLayout;

    .line 379
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->e:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$a;

    const v1, 0x7f090267

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$a;->b:Landroid/widget/LinearLayout;

    .line 380
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->e:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$a;

    const v1, 0x7f090269

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$a;->c:Landroid/widget/LinearLayout;

    .line 382
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->e:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$a;

    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 387
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->j(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/AppInfo;

    .line 388
    .local v0, "aInfo":Lcom/lenovo/safecenter/support/AppInfo;
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->e:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$a;

    iget-object v1, v1, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$a;->a:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$1;-><init>(Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;Lcom/lenovo/safecenter/support/AppInfo;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->e:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$a;

    iget-object v1, v1, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$a;->b:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$2;-><init>(Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;Lcom/lenovo/safecenter/support/AppInfo;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->e:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$a;

    iget-object v1, v1, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$a;->c:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$3;-><init>(Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;Lcom/lenovo/safecenter/support/AppInfo;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    return-object p4

    .line 384
    .end local v0    # "aInfo":Lcom/lenovo/safecenter/support/AppInfo;
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$a;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->e:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$a;

    goto :goto_0
.end method

.method public final getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 370
    const/4 v0, 0x1

    return v0
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 430
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->j(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getGroupCount()I
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->j(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 439
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 443
    if-nez p3, :cond_2

    .line 444
    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->c:Landroid/view/LayoutInflater;

    const v5, 0x7f030101

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 445
    new-instance v4, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;

    invoke-direct {v4, p0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;-><init>(Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;)V

    iput-object v4, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->d:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;

    .line 446
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->d:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;

    const v4, 0x7f09035f

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v5, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;->a:Landroid/widget/ImageView;

    .line 447
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->d:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;

    const v4, 0x7f090360

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;->b:Landroid/widget/TextView;

    .line 448
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->d:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;

    const v4, 0x7f0904bc

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;->c:Landroid/widget/TextView;

    .line 449
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->d:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;

    const v4, 0x7f0904bd

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v5, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;->d:Landroid/widget/ImageView;

    .line 450
    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->d:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;

    invoke-virtual {p3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 454
    :goto_0
    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v4}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->j(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/AppInfo;

    .line 455
    .local v0, "appInfo":Lcom/lenovo/safecenter/support/AppInfo;
    invoke-virtual {p3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 457
    :try_start_0
    iget-object v4, v0, Lcom/lenovo/safecenter/support/AppInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->y(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 458
    .local v1, "cmd":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->d:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;

    iget-object v4, v4, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->d:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;

    iget-object v4, v4, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;->a:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/lenovo/safecenter/support/AppInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v6}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->y(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    .end local v1    # "cmd":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->d:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;

    iget-object v3, v4, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;->d:Landroid/widget/ImageView;

    .line 467
    .local v3, "tButton":Landroid/widget/ImageView;
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 469
    iget v4, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-nez v4, :cond_3

    const v4, 0x7f02022f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 473
    :cond_0
    :goto_2
    iget v4, v0, Lcom/lenovo/safecenter/support/AppInfo;->suggest:I

    if-nez v4, :cond_5

    .line 474
    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->d:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;

    iget-object v4, v4, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 475
    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->d:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;

    iget-object v4, v4, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;->c:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 477
    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->d:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;

    iget-object v4, v4, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;->c:Landroid/widget/TextView;

    const v5, 0x7f0d05dd

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 489
    :cond_1
    :goto_3
    return-object p3

    .line 452
    .end local v0    # "appInfo":Lcom/lenovo/safecenter/support/AppInfo;
    .end local v3    # "tButton":Landroid/widget/ImageView;
    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;

    iput-object v4, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->d:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;

    goto :goto_0

    .line 460
    .restart local v0    # "appInfo":Lcom/lenovo/safecenter/support/AppInfo;
    :catch_0
    move-exception v2

    .line 461
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 462
    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->d:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;

    iget-object v4, v4, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;->b:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/lenovo/safecenter/support/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->d:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;

    iget-object v4, v4, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;->a:Landroid/widget/ImageView;

    const v5, 0x7f02017b

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 470
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "tButton":Landroid/widget/ImageView;
    :cond_3
    iget v4, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-ne v4, v9, :cond_4

    const v4, 0x7f020233

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 471
    :cond_4
    iget v4, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-ne v4, v8, :cond_0

    const v4, 0x7f02022d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 479
    :cond_5
    iget v4, v0, Lcom/lenovo/safecenter/support/AppInfo;->suggest:I

    if-ne v4, v8, :cond_6

    .line 480
    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->d:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;

    iget-object v4, v4, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 481
    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->d:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;

    iget-object v4, v4, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;->c:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070017

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 483
    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->d:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;

    iget-object v4, v4, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;->c:Landroid/widget/TextView;

    const v5, 0x7f0d05de

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 485
    :cond_6
    iget v4, v0, Lcom/lenovo/safecenter/support/AppInfo;->suggest:I

    if-eq v4, v9, :cond_7

    iget v4, v0, Lcom/lenovo/safecenter/support/AppInfo;->suggest:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 486
    :cond_7
    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;->d:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;

    iget-object v4, v4, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a$b;->c:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x0

    return v0
.end method

.method public final isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 497
    const/4 v0, 0x0

    return v0
.end method
