.class final Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;
.super Landroid/widget/BaseExpandableListAdapter;
.source "AntiSpamMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;,
        Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;

.field c:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;

.field final synthetic d:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

.field private e:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 976
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 977
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->e:Landroid/view/LayoutInflater;

    .line 978
    iput-object p2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->a:Landroid/content/Context;

    .line 980
    return-void
.end method


# virtual methods
.method public final getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 983
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 987
    int-to-long v0, p2

    return-wide v0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0902a4

    const v4, 0x7f0902a3

    const v2, 0x7f0902a2

    const/4 v3, 0x1

    .line 996
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)I

    move-result v0

    if-nez v0, :cond_4

    .line 998
    if-nez p4, :cond_3

    .line 999
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f030065

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 1000
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;

    .line 1001
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;->a:Landroid/widget/TextView;

    .line 1003
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;

    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;->b:Landroid/widget/TextView;

    .line 1005
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;

    invoke-virtual {p4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;->c:Landroid/widget/TextView;

    .line 1007
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;

    const v0, 0x7f0902a0

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;->e:Landroid/widget/LinearLayout;

    .line 1008
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;

    const v0, 0x7f0902a1

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;->d:Landroid/widget/TextView;

    .line 1009
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;

    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1030
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1032
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1033
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;

    iget-object v1, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/SafeLog;

    iget v0, v0, Lcom/lenovo/safecenter/support/SafeLog;->fromtype:I

    invoke-virtual {v2, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->changgeword(I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1036
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/SafeLog;

    iget v0, v0, Lcom/lenovo/safecenter/support/SafeLog;->isUpload:I

    if-ne v0, v3, :cond_6

    .line 1039
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;->c:Landroid/widget/TextView;

    const v1, 0x7f0d0162

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1046
    :goto_1
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)I

    move-result v0

    if-nez v0, :cond_7

    .line 1048
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;->b:Landroid/widget/TextView;

    const v1, 0x7f0d0188

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1055
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$1;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$1;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1064
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$2;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1080
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$3;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$3;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1096
    return-object p4

    .line 1011
    :cond_3
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;

    goto/16 :goto_0

    .line 1013
    :cond_4
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1015
    if-nez p4, :cond_5

    .line 1016
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f030066

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 1017
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;

    .line 1018
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;->a:Landroid/widget/TextView;

    .line 1020
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;

    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;->b:Landroid/widget/TextView;

    .line 1022
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;

    invoke-virtual {p4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;->c:Landroid/widget/TextView;

    .line 1024
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;

    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1026
    :cond_5
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;

    goto/16 :goto_0

    .line 1043
    :cond_6
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;->c:Landroid/widget/TextView;

    const v1, 0x7f0d0252

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 1049
    :cond_7
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 1051
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$a;->b:Landroid/widget/TextView;

    const v1, 0x7f0d01b0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2
.end method

.method public final getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 991
    const/4 v0, 0x1

    return v0
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getGroupCount()I
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 1108
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1114
    if-nez p3, :cond_1

    .line 1115
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->e:Landroid/view/LayoutInflater;

    const v2, 0x7f03001e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 1117
    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;

    .line 1118
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;

    const v1, 0x7f0900fb

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;->a:Landroid/widget/ImageView;

    .line 1120
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;

    const v1, 0x7f0900f7

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;->b:Landroid/widget/TextView;

    .line 1122
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;

    const v1, 0x7f0900f8

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;->c:Landroid/widget/TextView;

    .line 1124
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;

    const v1, 0x7f0900f9

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;->d:Landroid/widget/TextView;

    .line 1126
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;

    const v1, 0x7f0900fa

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;->e:Landroid/widget/TextView;

    .line 1128
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1134
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/SafeLog;

    .line 1135
    .local v0, "log":Lcom/lenovo/safecenter/support/SafeLog;
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;->b:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SafeLog;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1136
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;->c:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/database/AppDatabase;->formatTime(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1138
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)I

    move-result v1

    if-nez v1, :cond_3

    .line 1141
    if-nez p2, :cond_2

    .line 1142
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;->d:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SafeLog;->content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1143
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1144
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1156
    :cond_0
    :goto_1
    iget v1, v0, Lcom/lenovo/safecenter/support/SafeLog;->isUpload:I

    if-ne v1, v6, :cond_4

    .line 1158
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1159
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;->a:Landroid/widget/ImageView;

    const v2, 0x7f020328

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1167
    :goto_2
    return-object p3

    .line 1130
    .end local v0    # "log":Lcom/lenovo/safecenter/support/SafeLog;
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;

    iput-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;

    goto :goto_0

    .line 1146
    .restart local v0    # "log":Lcom/lenovo/safecenter/support/SafeLog;
    :cond_2
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;->e:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SafeLog;->content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1147
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1148
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1151
    :cond_3
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 1154
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    iget v3, v0, Lcom/lenovo/safecenter/support/SafeLog;->fromtype:I

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->changgeword(I)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1162
    :cond_4
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$b;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 1171
    const/4 v0, 0x0

    return v0
.end method

.method public final isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 1175
    const/4 v0, 0x0

    return v0
.end method
