.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$6;
.super Ljava/lang/Object;
.source "ManAddWhiteContract.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->onBtn_Click()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$6;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 410
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$6;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;I)I

    .line 411
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$6;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 412
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 414
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$6;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    .line 415
    .local v0, "conCall":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    invoke-virtual {v0, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->setSelect(Z)V

    .line 412
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    .end local v0    # "conCall":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    :cond_0
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$6;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->setAddBtnText()V

    .line 418
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$6;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->h(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/widget/BaseAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 419
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$6;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->i(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidateViews()V

    .line 420
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$6;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->j(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 421
    return-void
.end method
