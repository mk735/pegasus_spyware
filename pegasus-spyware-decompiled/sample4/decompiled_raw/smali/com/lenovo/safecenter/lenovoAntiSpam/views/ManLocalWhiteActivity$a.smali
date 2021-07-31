.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ManLocalWhiteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$a;,
        Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$b;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$b;

.field c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$a;

.field final synthetic d:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

.field private e:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 520
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 521
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->e:Landroid/view/LayoutInflater;

    .line 522
    iput-object p2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->a:Landroid/content/Context;

    .line 524
    return-void
.end method


# virtual methods
.method public final getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 527
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 531
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
    .line 540
    if-nez p4, :cond_0

    .line 541
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f030066

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 542
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$a;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$a;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$a;

    .line 543
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$a;

    const v0, 0x7f0902a2

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$a;->a:Landroid/widget/TextView;

    .line 545
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$a;

    const v0, 0x7f0902a3

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$a;->b:Landroid/widget/TextView;

    .line 547
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$a;

    const v0, 0x7f0902a4

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$a;->c:Landroid/widget/TextView;

    .line 549
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$a;

    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 553
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$a;->a:Landroid/widget/TextView;

    const v1, 0x7f0d01b4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 554
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$a;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$a;->c:Landroid/widget/TextView;

    const v1, 0x7f0d0105

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 556
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$a;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$1;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$1;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$a;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$2;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    return-object p4

    .line 551
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$a;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$a;

    goto :goto_0
.end method

.method public final getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 535
    const/4 v0, 0x1

    return v0
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 576
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getGroupCount()I
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 584
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

    .line 590
    if-nez p3, :cond_1

    .line 591
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030011

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 592
    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$b;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$b;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$b;

    .line 593
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$b;

    const v1, 0x7f0900ae

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$b;->a:Landroid/widget/ImageView;

    .line 594
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$b;

    const v1, 0x7f0900af

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$b;->d:Landroid/widget/TextView;

    .line 595
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$b;

    const v1, 0x7f0900b0

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$b;->e:Landroid/widget/TextView;

    .line 596
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$b;

    const v1, 0x7f0900b2

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$b;->c:Landroid/widget/ImageView;

    .line 597
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$b;

    const v1, 0x7f0900b1

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$b;->b:Landroid/widget/ImageView;

    .line 598
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$b;

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 602
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;

    .line 603
    .local v0, "info":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 604
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$b;->a:Landroid/widget/ImageView;

    const v2, 0x7f020032

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 605
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$b;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 606
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$b;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 609
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$b;->d:Landroid/widget/TextView;

    const v2, 0x7f0d024a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 614
    :goto_1
    return-object p3

    .line 600
    .end local v0    # "info":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$b;

    iput-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$b;

    goto :goto_0

    .line 612
    .restart local v0    # "info":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;
    :cond_2
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a$b;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 618
    const/4 v0, 0x0

    return v0
.end method

.method public final isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 622
    const/4 v0, 0x0

    return v0
.end method
