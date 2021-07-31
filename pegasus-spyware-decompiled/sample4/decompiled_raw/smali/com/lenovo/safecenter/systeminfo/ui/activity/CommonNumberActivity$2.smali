.class final Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity$2;
.super Ljava/lang/Object;
.source "CommonNumberActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


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
    .line 101
    iput-object p1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 5
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v2

    invoke-interface {v2, p3, p4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "phoneNumber":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 110
    .local v0, "localIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 111
    sget-object v2, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 113
    const/4 v2, 0x1

    return v2
.end method
