.class final Lcom/lenovo/performancecenter/performance/ClearCacheActivity$3;
.super Landroid/os/Handler;
.source "ClearCacheActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/performance/ClearCacheActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$3;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v8, 0x7f0d0870

    const/4 v3, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 170
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 209
    :goto_0
    return-void

    .line 172
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$3;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->f(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$3;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->g(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$3;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->h(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 178
    :pswitch_1
    const-string v0, "ClearCacheActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppHasCacheSize == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$3;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-static {v2}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->c(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$3;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->f(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$3;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->c(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$3;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->g(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$3;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->h(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$3;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$3;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$3;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->c(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->a(Ljava/util/List;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->a(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;J)J

    .line 186
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$3;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->g(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$3;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->g(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$3;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$3;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-virtual {v3}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$3;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->e(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v8, v2}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$3;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->h(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$3;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->d(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Lcom/lenovo/performancecenter/performance/ClearCacheActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$a;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 194
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$3;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->a(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;J)J

    .line 195
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$3;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->g(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$3;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->h(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 200
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$3;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->c(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$3;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->g(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$3;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->h(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$3;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->g(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$3;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->g(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$3;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$3;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-virtual {v3}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$3;->a:Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    invoke-static {v4}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->e(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v8, v2}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
