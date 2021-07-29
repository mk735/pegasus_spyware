.class final Lcom/lenovo/performancecenter/performance/TaskManagerActivity$3;
.super Landroid/os/Handler;
.source "TaskManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/performance/TaskManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$3;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v9, 0x8

    const/4 v6, 0x0

    .line 294
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 308
    :goto_0
    return-void

    .line 296
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$3;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->j(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 297
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 298
    .local v0, "runningAppCount":I
    if-nez v0, :cond_0

    .line 299
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$3;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->g(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$3;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->h(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$3;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->g(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$3;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->g(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$3;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    const v3, 0x7f0d0898

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$3;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v6}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->f(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$3;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v7}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->e(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)I

    move-result v7

    int-to-long v7, v7

    invoke-static {v6, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$3;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->h(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 306
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$3;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->d(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Lcom/lenovo/performancecenter/performance/TaskManagerActivity$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$a;->notifyDataSetChanged()V

    goto :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
