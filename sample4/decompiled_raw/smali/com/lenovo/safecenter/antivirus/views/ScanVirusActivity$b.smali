.class final Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ScanVirusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$a;,
        Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$b;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 586
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 587
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b;->b:Landroid/view/LayoutInflater;

    .line 589
    return-void
.end method


# virtual methods
.method public final getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 592
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->d(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Ljava/util/List;

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
    .line 596
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
    .line 607
    if-nez p4, :cond_1

    .line 608
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b;->b:Landroid/view/LayoutInflater;

    const v7, 0x7f030038

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 611
    new-instance v3, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$a;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$a;-><init>(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b;)V

    .line 612
    .local v3, "holder":Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$a;
    const v6, 0x7f0901b7

    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$a;->a:Landroid/widget/TextView;

    .line 614
    const v6, 0x7f0901bb

    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$a;->b:Landroid/widget/TextView;

    .line 616
    const v6, 0x7f0901b9

    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$a;->c:Landroid/widget/ImageView;

    .line 619
    const v6, 0x7f0901b3

    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$a;->f:Landroid/widget/TextView;

    .line 622
    const v6, 0x7f0901b6

    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$a;->d:Landroid/widget/ImageView;

    .line 624
    const v6, 0x7f090134

    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$a;->e:Landroid/widget/ImageView;

    .line 626
    invoke-virtual {p4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 630
    :goto_0
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-static {v6}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->d(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/antivirus/domain/Virus;

    .line 632
    .local v4, "virus":Lcom/lenovo/safecenter/antivirus/domain/Virus;
    iget-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$a;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    invoke-virtual {v4}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->getType()I

    move-result v6

    if-nez v6, :cond_2

    .line 635
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    const v7, 0x7f0d02d4

    invoke-virtual {v6, v7}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 637
    .local v5, "virusname":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->getVirusName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 638
    iget-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$a;->b:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    :goto_1
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-virtual {v6}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02017b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 649
    :try_start_0
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-virtual {v6}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v4}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2000

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 653
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-virtual {v6}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 661
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_2
    iget-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 663
    invoke-virtual {v4}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->isOperate()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 665
    iget-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$a;->f:Landroid/widget/TextView;

    const v7, 0x7f0d022a

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 666
    iget-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$a;->e:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 667
    iget-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$a;->f:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 668
    iget-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$a;->f:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 687
    :cond_0
    :goto_3
    iget-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$a;->c:Landroid/widget/ImageView;

    new-instance v7, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$1;

    invoke-direct {v7, p0, v4}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$1;-><init>(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b;Lcom/lenovo/safecenter/antivirus/domain/Virus;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    iget-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$a;->f:Landroid/widget/TextView;

    new-instance v7, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$2;

    invoke-direct {v7, p0, v4}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$2;-><init>(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b;Lcom/lenovo/safecenter/antivirus/domain/Virus;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    return-object p4

    .line 628
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "holder":Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$a;
    .end local v4    # "virus":Lcom/lenovo/safecenter/antivirus/domain/Virus;
    .end local v5    # "virusname":Ljava/lang/String;
    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$a;

    .restart local v3    # "holder":Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$a;
    goto/16 :goto_0

    .line 640
    .restart local v4    # "virus":Lcom/lenovo/safecenter/antivirus/domain/Virus;
    :cond_2
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    const v7, 0x7f0d02fe

    invoke-virtual {v6, v7}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 642
    .restart local v5    # "virusname":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->getVirusName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 643
    iget-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$a;->b:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 656
    :catch_0
    move-exception v2

    .line 657
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 658
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-virtual {v6}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02017b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 672
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$a;->e:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 673
    iget-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$a;->f:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 674
    iget-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$a;->f:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 675
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

    .line 676
    invoke-virtual {v4}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->getType()I

    move-result v6

    if-nez v6, :cond_4

    .line 677
    iget-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$a;->f:Landroid/widget/TextView;

    const v7, 0x7f0d022a

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 678
    iget-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$a;->f:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_3

    .line 679
    :cond_4
    invoke-virtual {v4}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 681
    iget-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$a;->f:Landroid/widget/TextView;

    const v7, 0x7f0d022a

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 682
    iget-object v6, v3, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$a;->f:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_3
.end method

.method public final getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 601
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->d(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Ljava/util/List;

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
    .line 707
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->i(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getGroupCount()I
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->i(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 715
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
    .line 721
    if-nez p3, :cond_0

    .line 722
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f030039

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 725
    new-instance v0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$b;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$b;-><init>(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b;)V

    .line 727
    .local v0, "holder":Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$b;
    const v1, 0x7f0901bc

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$b;->a:Landroid/widget/TextView;

    .line 729
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 733
    :goto_0
    iget-object v2, v0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->i(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    return-object p3

    .line 731
    .end local v0    # "holder":Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$b;
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$b;

    .restart local v0    # "holder":Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$b;
    goto :goto_0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 738
    const/4 v0, 0x0

    return v0
.end method

.method public final isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 742
    const/4 v0, 0x1

    return v0
.end method
