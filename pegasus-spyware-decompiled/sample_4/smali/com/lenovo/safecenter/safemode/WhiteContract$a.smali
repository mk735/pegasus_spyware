.class final Lcom/lenovo/safecenter/safemode/WhiteContract$a;
.super Landroid/widget/BaseExpandableListAdapter;
.source "WhiteContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/safemode/WhiteContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/safemode/WhiteContract$a$a;,
        Lcom/lenovo/safecenter/safemode/WhiteContract$a$b;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/lenovo/safecenter/safemode/WhiteContract$a$b;

.field c:Lcom/lenovo/safecenter/safemode/WhiteContract$a$a;

.field final synthetic d:Lcom/lenovo/safecenter/safemode/WhiteContract;

.field private e:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/safemode/WhiteContract;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 618
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 619
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->e:Landroid/view/LayoutInflater;

    .line 620
    iput-object p2, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->a:Landroid/content/Context;

    .line 622
    return-void
.end method


# virtual methods
.method public final getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 625
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 629
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
    .line 638
    if-nez p4, :cond_0

    .line 639
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f030066

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 640
    new-instance v0, Lcom/lenovo/safecenter/safemode/WhiteContract$a$a;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/safemode/WhiteContract$a$a;-><init>(Lcom/lenovo/safecenter/safemode/WhiteContract$a;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->c:Lcom/lenovo/safecenter/safemode/WhiteContract$a$a;

    .line 641
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->c:Lcom/lenovo/safecenter/safemode/WhiteContract$a$a;

    const v0, 0x7f0902a2

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/lenovo/safecenter/safemode/WhiteContract$a$a;->a:Landroid/widget/TextView;

    .line 643
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->c:Lcom/lenovo/safecenter/safemode/WhiteContract$a$a;

    const v0, 0x7f0902a3

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/lenovo/safecenter/safemode/WhiteContract$a$a;->b:Landroid/widget/TextView;

    .line 645
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->c:Lcom/lenovo/safecenter/safemode/WhiteContract$a$a;

    const v0, 0x7f0902a4

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/lenovo/safecenter/safemode/WhiteContract$a$a;->c:Landroid/widget/TextView;

    .line 647
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->c:Lcom/lenovo/safecenter/safemode/WhiteContract$a$a;

    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 651
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->c:Lcom/lenovo/safecenter/safemode/WhiteContract$a$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/safemode/WhiteContract$a$a;->a:Landroid/widget/TextView;

    const v1, 0x7f0d01b0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 653
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->c:Lcom/lenovo/safecenter/safemode/WhiteContract$a$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/safemode/WhiteContract$a$a;->b:Landroid/widget/TextView;

    const v1, 0x7f0d01ab

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 654
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->c:Lcom/lenovo/safecenter/safemode/WhiteContract$a$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/safemode/WhiteContract$a$a;->c:Landroid/widget/TextView;

    const v1, 0x7f0d0105

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 655
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->c:Lcom/lenovo/safecenter/safemode/WhiteContract$a$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/safemode/WhiteContract$a$a;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/safecenter/safemode/WhiteContract$a$1;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/safemode/WhiteContract$a$1;-><init>(Lcom/lenovo/safecenter/safemode/WhiteContract$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->c:Lcom/lenovo/safecenter/safemode/WhiteContract$a$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/safemode/WhiteContract$a$a;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/safecenter/safemode/WhiteContract$a$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/safemode/WhiteContract$a$2;-><init>(Lcom/lenovo/safecenter/safemode/WhiteContract$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 679
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->c:Lcom/lenovo/safecenter/safemode/WhiteContract$a$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/safemode/WhiteContract$a$a;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/safecenter/safemode/WhiteContract$a$3;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/safemode/WhiteContract$a$3;-><init>(Lcom/lenovo/safecenter/safemode/WhiteContract$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    return-object p4

    .line 649
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/safemode/WhiteContract$a$a;

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->c:Lcom/lenovo/safecenter/safemode/WhiteContract$a$a;

    goto :goto_0
.end method

.method public final getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 633
    const/4 v0, 0x1

    return v0
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 692
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v0}, Lcom/lenovo/safecenter/safemode/WhiteContract;->c(Lcom/lenovo/safecenter/safemode/WhiteContract;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getGroupCount()I
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v0}, Lcom/lenovo/safecenter/safemode/WhiteContract;->c(Lcom/lenovo/safecenter/safemode/WhiteContract;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 700
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
    .line 707
    if-nez p3, :cond_0

    .line 708
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030127

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 709
    new-instance v2, Lcom/lenovo/safecenter/safemode/WhiteContract$a$b;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/safemode/WhiteContract$a$b;-><init>(Lcom/lenovo/safecenter/safemode/WhiteContract$a;)V

    iput-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->b:Lcom/lenovo/safecenter/safemode/WhiteContract$a$b;

    .line 710
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->b:Lcom/lenovo/safecenter/safemode/WhiteContract$a$b;

    const v2, 0x7f090609

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/lenovo/safecenter/safemode/WhiteContract$a$b;->b:Landroid/widget/TextView;

    .line 711
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->b:Lcom/lenovo/safecenter/safemode/WhiteContract$a$b;

    const v2, 0x7f090608

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/lenovo/safecenter/safemode/WhiteContract$a$b;->a:Landroid/widget/TextView;

    .line 712
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->b:Lcom/lenovo/safecenter/safemode/WhiteContract$a$b;

    invoke-virtual {p3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 716
    :goto_0
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/WhiteContract;->c(Lcom/lenovo/safecenter/safemode/WhiteContract;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/Contract;

    .line 717
    .local v0, "con":Lcom/lenovo/safecenter/support/Contract;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v1

    .line 718
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 720
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->b:Lcom/lenovo/safecenter/safemode/WhiteContract$a$b;

    iget-object v2, v2, Lcom/lenovo/safecenter/safemode/WhiteContract$a$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 726
    :goto_1
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->b:Lcom/lenovo/safecenter/safemode/WhiteContract$a$b;

    iget-object v2, v2, Lcom/lenovo/safecenter/safemode/WhiteContract$a$b;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 727
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->b:Lcom/lenovo/safecenter/safemode/WhiteContract$a$b;

    iget-object v2, v2, Lcom/lenovo/safecenter/safemode/WhiteContract$a$b;->a:Landroid/widget/TextView;

    new-instance v3, Lcom/lenovo/safecenter/safemode/WhiteContract$a$4;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/safemode/WhiteContract$a$4;-><init>(Lcom/lenovo/safecenter/safemode/WhiteContract$a;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 736
    return-object p3

    .line 714
    .end local v0    # "con":Lcom/lenovo/safecenter/support/Contract;
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/safemode/WhiteContract$a$b;

    iput-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->b:Lcom/lenovo/safecenter/safemode/WhiteContract$a$b;

    goto :goto_0

    .line 723
    .restart local v0    # "con":Lcom/lenovo/safecenter/support/Contract;
    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->b:Lcom/lenovo/safecenter/safemode/WhiteContract$a$b;

    iget-object v2, v2, Lcom/lenovo/safecenter/safemode/WhiteContract$a$b;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 740
    const/4 v0, 0x0

    return v0
.end method

.method public final isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 744
    const/4 v0, 0x0

    return v0
.end method
