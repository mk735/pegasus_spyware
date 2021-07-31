.class final Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$2;
.super Landroid/os/Handler;
.source "PerfWhitelistActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$2;->a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 154
    :goto_0
    return-void

    .line 148
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$2;->a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->f(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$2;->a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->a(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$2;->a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->g(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$2;->a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->h(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$b;->notifyDataSetChanged()V

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
