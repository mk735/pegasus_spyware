.class final Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$3;
.super Ljava/lang/Object;
.source "NotificationTabActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$3;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGroupExpand(I)V
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 367
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$3;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->g(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$3;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->h(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setTranscriptMode(I)V

    .line 372
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$3;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->i(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$3;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->i(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 373
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$3;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->h(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$3;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->i(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$3;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-static {v0, p1}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->a(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;I)I

    .line 376
    return-void

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$3;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->h(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setTranscriptMode(I)V

    goto :goto_0
.end method
