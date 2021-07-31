.class final Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$3;
.super Landroid/os/Handler;
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
    .line 178
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$3;->a:Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 182
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 209
    :goto_0
    return-void

    .line 184
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$3;->a:Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->h(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$3;->a:Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->e(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;)Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$a;->notifyDataSetChanged()V

    goto :goto_0

    .line 204
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$3;->a:Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->e(Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;)Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$a;->notifyDataSetChanged()V

    goto :goto_0

    .line 208
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity$3;->a:Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;

    invoke-virtual {v0}, Lcom/lenovo/performancecenter/performance/IgnorePreferenceActivity;->onResume()V

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
