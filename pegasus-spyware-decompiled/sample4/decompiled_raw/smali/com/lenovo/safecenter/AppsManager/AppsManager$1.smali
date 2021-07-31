.class final Lcom/lenovo/safecenter/AppsManager/AppsManager$1;
.super Landroid/os/Handler;
.source "AppsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/AppsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/AppsManager;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/AppsManager;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v3, 0x7f0d053c

    const/16 v7, 0x8

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 99
    :goto_0
    :pswitch_0
    return-void

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->c(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-virtual {v1, v3}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->a(Lcom/lenovo/safecenter/AppsManager/AppsManager;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->b(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v4}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->a(Lcom/lenovo/safecenter/AppsManager/AppsManager;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->d(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    new-instance v1, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v4}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->b(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;-><init>(Lcom/lenovo/safecenter/AppsManager/AppsManager;Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->a(Lcom/lenovo/safecenter/AppsManager/AppsManager;Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;)Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;

    .line 83
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->f(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->e(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Lcom/lenovo/safecenter/AppsManager/AppsManager$myAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->b(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->g(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->g(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 95
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->c(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-virtual {v1, v3}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->a(Lcom/lenovo/safecenter/AppsManager/AppsManager;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->b(Lcom/lenovo/safecenter/AppsManager/AppsManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$1;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-static {v4}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->a(Lcom/lenovo/safecenter/AppsManager/AppsManager;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
