.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$6;
.super Ljava/lang/Object;
.source "ManLocalBlackAddContract.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->onBtnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$6;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 347
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$6;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->e(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 348
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 350
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$6;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->e(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    .line 351
    .local v0, "conCall":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->setSelect(Z)V

    .line 348
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    .end local v0    # "conCall":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    :cond_0
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$6;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->h(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)Landroid/widget/BaseAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 355
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$6;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->i(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidateViews()V

    .line 356
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$6;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->j(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 357
    return-void
.end method
