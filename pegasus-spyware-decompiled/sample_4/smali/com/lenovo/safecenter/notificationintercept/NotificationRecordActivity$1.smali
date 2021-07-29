.class final Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$1;
.super Ljava/lang/Object;
.source "NotificationRecordActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$1;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGroupExpand(I)V
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$1;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->a(Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$1;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->a(Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$1;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->b(Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$1;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->a(Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$1;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;

    invoke-static {v0, p1}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->a(Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;I)I

    .line 146
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$1;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->c(Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$1;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->b(Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setTranscriptMode(I)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$1;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->b(Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setTranscriptMode(I)V

    goto :goto_0
.end method
