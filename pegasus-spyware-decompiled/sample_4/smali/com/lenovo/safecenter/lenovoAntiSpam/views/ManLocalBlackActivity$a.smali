.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ManLocalBlackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$a;,
        Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$b;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$b;

.field c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$a;

.field final synthetic d:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

.field private e:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 434
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->e:Landroid/view/LayoutInflater;

    .line 435
    iput-object p2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->a:Landroid/content/Context;

    .line 437
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 583
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d03fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 595
    :goto_0
    return-object v0

    .line 587
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 589
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d03fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 590
    :cond_1
    if-nez p1, :cond_2

    .line 592
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d03fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 595
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d03ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 440
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 444
    int-to-long v0, p2

    return-wide v0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 453
    if-nez p4, :cond_0

    .line 454
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f030066

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 455
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$a;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$a;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$a;

    .line 456
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$a;

    const v0, 0x7f0902a2

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$a;->a:Landroid/widget/TextView;

    .line 458
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$a;

    const v0, 0x7f0902a3

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$a;->b:Landroid/widget/TextView;

    .line 460
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$a;

    const v0, 0x7f0902a4

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$a;->c:Landroid/widget/TextView;

    .line 462
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$a;

    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 466
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$a;->a:Landroid/widget/TextView;

    const v1, 0x7f0d00ff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 474
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$a;->b:Landroid/widget/TextView;

    const v1, 0x7f0d01b4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 475
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$a;->c:Landroid/widget/TextView;

    const v1, 0x7f0d0105

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 476
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$a;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$1;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$1;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$a;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$2;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$a;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$3;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$3;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    return-object p4

    .line 464
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$a;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$a;

    goto :goto_0
.end method

.method public final getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 448
    const/4 v0, 0x1

    return v0
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 510
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getGroupCount()I
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 518
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v4, 0x8

    .line 525
    if-nez p3, :cond_2

    .line 526
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030011

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 527
    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$b;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$b;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$b;

    .line 528
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$b;

    const v1, 0x7f0900ae

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$b;->a:Landroid/widget/ImageView;

    .line 529
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$b;

    const v1, 0x7f0900af

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$b;->d:Landroid/widget/TextView;

    .line 530
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$b;

    const v1, 0x7f0900b0

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$b;->e:Landroid/widget/TextView;

    .line 531
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$b;

    const v1, 0x7f0900b2

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$b;->c:Landroid/widget/ImageView;

    .line 532
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$b;

    const v1, 0x7f0900b1

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$b;->b:Landroid/widget/ImageView;

    .line 533
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$b;

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 537
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;

    .line 538
    .local v0, "info":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 539
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getIsUpload()I

    move-result v1

    if-nez v1, :cond_3

    .line 541
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$b;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 547
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$b;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 550
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$b;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    :goto_2
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$b;->a:Landroid/widget/ImageView;

    const v2, 0x7f020016

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 560
    return-object p3

    .line 535
    .end local v0    # "info":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;
    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$b;

    iput-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$b;

    goto :goto_0

    .line 542
    .restart local v0    # "info":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;
    :cond_3
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getIsUpload()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 544
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$b;->c:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 553
    :cond_4
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$b;->d:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getType()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 564
    const/4 v0, 0x0

    return v0
.end method

.method public final isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 568
    const/4 v0, 0x0

    return v0
.end method
