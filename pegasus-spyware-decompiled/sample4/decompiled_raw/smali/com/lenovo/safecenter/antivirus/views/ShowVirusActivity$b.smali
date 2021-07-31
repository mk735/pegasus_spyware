.class final Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ShowVirusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$a;,
        Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$b;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;->a:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 349
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;->c:Landroid/view/LayoutInflater;

    .line 350
    iput-object p2, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;->b:Landroid/content/Context;

    .line 351
    return-void
.end method


# virtual methods
.method public final getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 353
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;->a:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->a(Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 357
    int-to-long v0, p2

    return-wide v0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 368
    if-nez p4, :cond_1

    .line 369
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;->c:Landroid/view/LayoutInflater;

    const v7, 0x7f030038

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 372
    new-instance v3, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$a;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$a;-><init>(Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;)V

    .line 373
    .local v3, "holder":Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$a;
    const v6, 0x7f0901b7

    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$a;->a:Landroid/widget/TextView;

    .line 375
    const v6, 0x7f0901bb

    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$a;->b:Landroid/widget/TextView;

    .line 377
    const v6, 0x7f0901b9

    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$a;->d:Landroid/widget/ImageView;

    .line 379
    const v6, 0x7f0901ba

    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$a;->e:Landroid/widget/ImageView;

    .line 381
    const v6, 0x7f0901b3

    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$a;->g:Landroid/widget/TextView;

    .line 383
    const v6, 0x7f0901b8

    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$a;->c:Landroid/widget/TextView;

    .line 385
    const v6, 0x7f0901b6

    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$a;->f:Landroid/widget/ImageView;

    .line 387
    invoke-virtual {p4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 391
    :goto_0
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;->a:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;

    invoke-static {v6}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->a(Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/antivirus/domain/Virus;

    .line 393
    .local v4, "virus":Lcom/lenovo/safecenter/antivirus/domain/Virus;
    iget-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$a;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    invoke-virtual {v4}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->getType()I

    move-result v6

    if-nez v6, :cond_2

    .line 396
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;->a:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;

    const v7, 0x7f0d02d4

    invoke-virtual {v6, v7}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 398
    .local v5, "virusname":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->getVirusName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 399
    iget-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$a;->b:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    :goto_1
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;->a:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;

    invoke-virtual {v6}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02017b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 410
    :try_start_0
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;->a:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;

    invoke-virtual {v6}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v4}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2000

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 414
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;->a:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;

    invoke-virtual {v6}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 422
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_2
    iget-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 424
    invoke-virtual {v4}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->isOperate()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 426
    iget-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$a;->g:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070008

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 428
    iget-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$a;->g:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 429
    iget-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$a;->g:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 446
    :cond_0
    :goto_3
    iget-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$a;->d:Landroid/widget/ImageView;

    new-instance v7, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$1;

    invoke-direct {v7, p0, v4}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$1;-><init>(Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;Lcom/lenovo/safecenter/antivirus/domain/Virus;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    iget-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$a;->g:Landroid/widget/TextView;

    new-instance v7, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$2;

    invoke-direct {v7, p0, v4}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$2;-><init>(Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;Lcom/lenovo/safecenter/antivirus/domain/Virus;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    return-object p4

    .line 389
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "holder":Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$a;
    .end local v4    # "virus":Lcom/lenovo/safecenter/antivirus/domain/Virus;
    .end local v5    # "virusname":Ljava/lang/String;
    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$a;

    .restart local v3    # "holder":Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$a;
    goto/16 :goto_0

    .line 401
    .restart local v4    # "virus":Lcom/lenovo/safecenter/antivirus/domain/Virus;
    :cond_2
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;->a:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;

    const v7, 0x7f0d02fe

    invoke-virtual {v6, v7}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 403
    .restart local v5    # "virusname":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->getVirusName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 404
    iget-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$a;->b:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 417
    :catch_0
    move-exception v2

    .line 418
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 419
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;->a:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;

    invoke-virtual {v6}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02017b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 434
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v6, "type"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "type=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-virtual {v4}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->getType()I

    move-result v6

    if-nez v6, :cond_4

    .line 436
    iget-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$a;->g:Landroid/widget/TextView;

    const v7, 0x7f0d022a

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 437
    iget-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$a;->g:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_3

    .line 438
    :cond_4
    invoke-virtual {v4}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 440
    iget-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$a;->g:Landroid/widget/TextView;

    const v7, 0x7f0d022a

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 441
    iget-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$a;->g:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_3
.end method

.method public final getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 362
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;->a:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->a(Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 466
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;->a:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->d(Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getGroupCount()I
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;->a:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->d(Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 475
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 480
    if-nez p3, :cond_0

    .line 481
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f030039

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 483
    new-instance v0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$b;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$b;-><init>(Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;)V

    .line 485
    .local v0, "holder":Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$b;
    const v1, 0x7f0901bc

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$b;->a:Landroid/widget/TextView;

    .line 486
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 490
    :goto_0
    iget-object v2, v0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;->a:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->d(Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    return-object p3

    .line 488
    .end local v0    # "holder":Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$b;
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$b;

    .restart local v0    # "holder":Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$b;
    goto :goto_0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 495
    const/4 v0, 0x0

    return v0
.end method

.method public final isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 499
    const/4 v0, 0x1

    return v0
.end method
