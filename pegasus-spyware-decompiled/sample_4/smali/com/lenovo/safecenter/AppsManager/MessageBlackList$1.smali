.class final Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;
.super Landroid/os/Handler;
.source "MessageBlackList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/MessageBlackList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x3

    const v7, 0x7f0d007d

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 66
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->c(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    const v2, 0x7f0d053d

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->a(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-virtual {v3, v7}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->b(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->b(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)I

    move-result v0

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->d(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    const v2, 0x7f0d0712

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/utils/MyUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->b(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->a(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->d(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    const v2, 0x7f0d0713

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/utils/MyUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->e(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->f(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 81
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->c(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    const v2, 0x7f0d053d

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->a(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-virtual {v3, v7}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->b(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->d(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    const v2, 0x7f0d0715

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->b(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-virtual {v3, v7}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/utils/MyUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 87
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->c(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    const v2, 0x7f0d053d

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->a(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-virtual {v3, v7}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->b(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->d(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    const v2, 0x7f0d0714

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/utils/MyUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
