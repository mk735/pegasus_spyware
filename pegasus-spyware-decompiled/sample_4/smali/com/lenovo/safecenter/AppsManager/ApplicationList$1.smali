.class final Lcom/lenovo/safecenter/AppsManager/ApplicationList$1;
.super Landroid/os/Handler;
.source "ApplicationList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/ApplicationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$1;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v6, 0x7f0d0715

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 65
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$1;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->a(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)V

    .line 69
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$1;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->b(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)I

    move-result v1

    if-nez v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$1;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->c(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$1;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    const v3, 0x7f0d0712

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/utils/MyUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$1;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->b(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$1;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->d(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 72
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$1;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->c(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$1;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    const v3, 0x7f0d0713

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/utils/MyUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$1;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->e(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$1;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->f(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 82
    :pswitch_2
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$1;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->a(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)V

    .line 84
    const-string v0, ""

    .line 85
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$1;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->g(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "privacy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$1;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-virtual {v1, v6}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$1;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->b(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$1;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    const v4, 0x7f0d03ea

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$1;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->c(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lenovo/safecenter/utils/MyUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 87
    :cond_3
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$1;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->g(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 88
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$1;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-virtual {v1, v6}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$1;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->b(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$1;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    const v4, 0x7f0d03eb

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 89
    :cond_4
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$1;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->g(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 90
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$1;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-virtual {v1, v6}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$1;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->b(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$1;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    const v4, 0x7f0d03ec

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 91
    :cond_5
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$1;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->g(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "call_phone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$1;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-virtual {v1, v6}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$1;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->b(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$1;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    const v4, 0x7f0d00d2

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
