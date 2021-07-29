.class final Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$1;
.super Landroid/os/Handler;
.source "SystemExamActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$1;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$1;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->a(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$1;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->b(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$1;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->c(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Lcom/lenovo/safecenter/systeminfo/adapter/PhoneInfoListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/systeminfo/adapter/PhoneInfoListAdapter;->notifyDataSetChanged()V

    .line 77
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$1;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->d(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Z

    .line 80
    :cond_0
    return-void
.end method
