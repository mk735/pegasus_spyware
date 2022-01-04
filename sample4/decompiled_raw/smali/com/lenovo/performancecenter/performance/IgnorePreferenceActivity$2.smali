.class final Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$2;
.super Ljava/lang/Thread;
.source "IgnorePreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$2;->a:Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 161
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$2;->a:Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->f(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;)V

    .line 162
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$2;->a:Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->g(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 163
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 164
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$2;->a:Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->g(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 165
    return-void
.end method
