.class final Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$3;
.super Ljava/lang/Thread;
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
    .line 182
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$3;->a:Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 185
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$3;->a:Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->g(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;)V

    .line 186
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$3;->a:Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->h(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 187
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$3;->a:Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;->h(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 188
    return-void
.end method
