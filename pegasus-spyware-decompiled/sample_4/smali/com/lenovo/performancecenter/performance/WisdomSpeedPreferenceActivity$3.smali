.class final Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$3;
.super Landroid/os/Handler;
.source "WisdomSpeedPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$3;->a:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 224
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 227
    :goto_0
    return-void

    .line 226
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$3;->a:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->c(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;)Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$a;->notifyDataSetChanged()V

    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
