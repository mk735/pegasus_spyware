.class final Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity$1;
.super Ljava/lang/Object;
.source "CommonNumberActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity$1;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 3
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "id"    # J

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseExpandableListAdapter;

    .line 80
    .local v0, "adapter":Landroid/widget/BaseExpandableListAdapter;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->getGroupCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 82
    if-ne v1, p3, :cond_0

    .line 80
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity$1;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;->a(Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;)Landroid/widget/ExpandableListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    goto :goto_1

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity$1;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;->a(Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;)Landroid/widget/ExpandableListView;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity$1;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;->a(Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;)Landroid/widget/ExpandableListView;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 96
    :goto_2
    const/4 v2, 0x1

    return v2

    .line 92
    :cond_2
    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity$1;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;->a(Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;)Landroid/widget/ExpandableListView;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 93
    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity$1;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;->a(Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;)Landroid/widget/ExpandableListView;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ExpandableListView;->setSelectedGroup(I)V

    goto :goto_2
.end method
