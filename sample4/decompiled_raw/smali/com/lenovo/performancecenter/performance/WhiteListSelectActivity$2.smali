.class final Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$2;
.super Landroid/os/Handler;
.source "WhiteListSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$2;->a:Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 149
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$2;->a:Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->d(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$2;->a:Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->e(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;)Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$b;->notifyDataSetChanged()V

    .line 153
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$2;->a:Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->b(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$2;->a:Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->f(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
