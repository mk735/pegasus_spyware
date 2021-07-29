.class final Lcom/lenovo/performancecenter/performance/BootSpeedActivity$1;
.super Landroid/os/Handler;
.source "BootSpeedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/performance/BootSpeedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$1;->a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v6, 0x7f0d083e

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 153
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 155
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$1;->a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->h(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$1;->a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->b(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)Landroid/content/Context;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$1;->a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    invoke-static {v3}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->f(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$1;->a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    invoke-static {v3}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->f(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$1;->a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->g(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$1;->a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->i(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$1;->a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->j(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)Lcom/lenovo/performancecenter/performance/BootSpeedActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$a;->notifyDataSetChanged()V

    goto :goto_0

    .line 161
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$1;->a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->h(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$1;->a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->b(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)Landroid/content/Context;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$1;->a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    invoke-static {v3}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->f(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$1;->a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    invoke-static {v3}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->f(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$1;->a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->g(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
