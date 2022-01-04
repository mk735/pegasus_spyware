.class final Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$1;
.super Landroid/os/Handler;
.source "PermissionControlNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$1;->a:Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v3, 0x7f0d0532

    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 42
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 44
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$1;->a:Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->b(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$1;->a:Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    invoke-virtual {v1, v3}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$1;->a:Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->a(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$1;->a:Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->c(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$1;->a:Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->d(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$1;->a:Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->e(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$1;->a:Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->d(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$1;->a:Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->e(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$1;->a:Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->f(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/lenovo/safecenter/adapter/NewLogsAdapter;

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$1;->a:Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$1;->a:Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->c(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/lenovo/safecenter/adapter/NewLogsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 56
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$1;->a:Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->b(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$1;->a:Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    invoke-virtual {v1, v3}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$1;->a:Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->a(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
