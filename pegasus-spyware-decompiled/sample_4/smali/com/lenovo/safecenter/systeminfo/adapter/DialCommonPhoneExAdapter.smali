.class public Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "DialCommonPhoneExAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$DialCommonPhoneGroupModeHolder;,
        Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;,
        Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$DialCommonPhoneChildModeHolder;
    }
.end annotation


# static fields
.field private static a:[I


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/16 v0, 0xb

    new-array v0, v0, [I

    sput-object v0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->a:[I

    .line 31
    sget-object v0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->a:[I

    const/4 v1, 0x0

    const v2, 0x7f020100

    aput v2, v0, v1

    .line 32
    sget-object v0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->a:[I

    const/4 v1, 0x1

    const v2, 0x7f0200f9

    aput v2, v0, v1

    .line 33
    sget-object v0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->a:[I

    const/4 v1, 0x2

    const v2, 0x7f020102

    aput v2, v0, v1

    .line 34
    sget-object v0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->a:[I

    const/4 v1, 0x3

    const v2, 0x7f0200ff

    aput v2, v0, v1

    .line 35
    sget-object v0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->a:[I

    const/4 v1, 0x4

    const v2, 0x7f020101

    aput v2, v0, v1

    .line 36
    sget-object v0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->a:[I

    const/4 v1, 0x5

    const v2, 0x7f020103

    aput v2, v0, v1

    .line 37
    sget-object v0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->a:[I

    const/4 v1, 0x6

    const v2, 0x7f0200fb

    aput v2, v0, v1

    .line 38
    sget-object v0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->a:[I

    const/4 v1, 0x7

    const v2, 0x7f0200fc

    aput v2, v0, v1

    .line 39
    sget-object v0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->a:[I

    const/16 v1, 0x8

    const v2, 0x7f0200fd

    aput v2, v0, v1

    .line 40
    sget-object v0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->a:[I

    const/16 v1, 0x9

    const v2, 0x7f0200fe

    aput v2, v0, v1

    .line 41
    sget-object v0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->a:[I

    const/16 v1, 0xa

    const v2, 0x7f0200fa

    aput v2, v0, v1

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "paramContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p2, "paramHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->b:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->d:Ljava/lang/StringBuffer;

    .line 52
    iput-object p1, p0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->c:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->b:Ljava/util/HashMap;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "paramView"    # Landroid/view/View;
    .param p5, "paramViewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 65
    if-nez p4, :cond_0

    .line 68
    iget-object v6, p0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->c:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    const v7, 0x7f0300a1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 69
    .local v2, "localView":Landroid/view/View;
    new-instance v1, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;

    invoke-direct {v1}, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;-><init>()V

    .local v1, "localObject":Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;
    move-object v6, v1

    .line 72
    check-cast v6, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;

    const v7, 0x7f0903a8

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;->c:Landroid/widget/TextView;

    move-object v6, v1

    .line 74
    check-cast v6, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;

    const v7, 0x7f09031f

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;->a:Landroid/widget/TextView;

    move-object v6, v1

    .line 75
    check-cast v6, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;

    const v7, 0x7f0903a7

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;->b:Landroid/widget/TextView;

    move-object v6, v1

    .line 76
    check-cast v6, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;

    move-object v7, v2

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, v6, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;->mLayoutchild:Landroid/widget/LinearLayout;

    .line 78
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    :goto_0
    iget-object v6, p0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->b:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v6

    aget-object v5, v6, p1

    check-cast v5, Ljava/lang/String;

    .line 90
    .local v5, "str":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->b:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;

    .local v0, "commonNumber":Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;
    move-object v6, v1

    .line 91
    check-cast v6, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;

    iget-object v6, v6, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v6, v1

    .line 92
    check-cast v6, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;

    iget-object v6, v6, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const/4 v6, 0x2

    new-array v4, v6, [I

    .line 96
    .local v4, "position":[I
    const/4 v6, 0x0

    aput p1, v4, v6

    .line 97
    const/4 v6, 0x1

    aput p2, v4, v6

    move-object v6, v1

    .line 98
    check-cast v6, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;

    iget-object v6, v6, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 100
    check-cast v1, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;

    .end local v1    # "localObject":Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;
    iget-object v6, v1, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;->c:Landroid/widget/TextView;

    new-instance v7, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$1;

    invoke-direct {v7, p0}, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$1;-><init>(Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-object v2

    .line 80
    .end local v0    # "commonNumber":Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;
    .end local v2    # "localView":Landroid/view/View;
    .end local v4    # "position":[I
    .end local v5    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;

    .line 81
    .local v3, "localViewBodyHolder":Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;
    move-object v2, p4

    .line 82
    .restart local v2    # "localView":Landroid/view/View;
    move-object v1, v3

    .restart local v1    # "localObject":Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$ViewBodyHolder;
    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 2
    .param p1, "paramInt"    # I

    .prologue
    .line 117
    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    aget-object v0, v1, p1

    check-cast v0, Ljava/lang/String;

    .line 118
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "paramInt"    # I

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "paramInt"    # I

    .prologue
    .line 130
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "paramView"    # Landroid/view/View;
    .param p4, "paramViewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 134
    const/4 v3, 0x0

    .line 136
    .local v3, "i":I
    if-nez p3, :cond_1

    .line 138
    iget-object v5, p0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->c:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const v6, 0x7f0300a2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 141
    .local v4, "localView":Landroid/view/View;
    new-instance v2, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$DialCommonPhoneGroupModeHolder;

    invoke-direct {v2}, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$DialCommonPhoneGroupModeHolder;-><init>()V

    .local v2, "groupViewHolder":Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$DialCommonPhoneGroupModeHolder;
    move-object v5, v4

    .line 143
    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v2, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$DialCommonPhoneGroupModeHolder;->e:Landroid/widget/LinearLayout;

    .line 144
    const v5, 0x7f0903aa

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$DialCommonPhoneGroupModeHolder;->d:Landroid/widget/TextView;

    .line 145
    const v5, 0x7f0903ab

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$DialCommonPhoneGroupModeHolder;->c:Landroid/widget/TextView;

    .line 146
    const v5, 0x7f0903ac

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$DialCommonPhoneGroupModeHolder;->b:Landroid/widget/ImageView;

    .line 148
    const v5, 0x7f0903a9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$DialCommonPhoneGroupModeHolder;->a:Landroid/widget/ImageView;

    .line 150
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 151
    move-object p3, v4

    .line 158
    .end local v4    # "localView":Landroid/view/View;
    :goto_0
    iget-object v5, p0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->b:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v5

    aget-object v0, v5, p1

    check-cast v0, Ljava/lang/String;

    .line 160
    .local v0, "group":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 161
    .local v1, "groupItemSize":I
    iget-object v5, v2, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$DialCommonPhoneGroupModeHolder;->d:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v5, p0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->d:Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 164
    :goto_1
    if-ge v3, v1, :cond_2

    const/4 v5, 0x3

    if-ge v3, v5, :cond_2

    .line 165
    iget-object v6, p0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->d:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    const/4 v5, 0x2

    if-ge v3, v5, :cond_0

    .line 168
    iget-object v5, p0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->d:Ljava/lang/StringBuffer;

    const-string v6, "\u3001"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 154
    .end local v0    # "group":Ljava/lang/String;
    .end local v1    # "groupItemSize":I
    .end local v2    # "groupViewHolder":Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$DialCommonPhoneGroupModeHolder;
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$DialCommonPhoneGroupModeHolder;

    .restart local v2    # "groupViewHolder":Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$DialCommonPhoneGroupModeHolder;
    goto :goto_0

    .line 178
    .restart local v0    # "group":Ljava/lang/String;
    .restart local v1    # "groupItemSize":I
    :cond_2
    if-eqz p2, :cond_3

    .line 180
    iget-object v5, v2, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$DialCommonPhoneGroupModeHolder;->b:Landroid/widget/ImageView;

    const v6, 0x7f020059

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 181
    iget-object v5, v2, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$DialCommonPhoneGroupModeHolder;->e:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->c:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070030

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 190
    :goto_2
    iget-object v5, v2, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$DialCommonPhoneGroupModeHolder;->c:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v5, v2, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$DialCommonPhoneGroupModeHolder;->a:Landroid/widget/ImageView;

    sget-object v6, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->a:[I

    aget v6, v6, p1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    return-object p3

    .line 185
    :cond_3
    iget-object v5, v2, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$DialCommonPhoneGroupModeHolder;->b:Landroid/widget/ImageView;

    const v6, 0x7f020058

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 186
    iget-object v5, v2, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$DialCommonPhoneGroupModeHolder;->e:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->c:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07002f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "paramInt1"    # I
    .param p2, "paramInt2"    # I

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method
