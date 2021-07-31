.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$5;
.super Ljava/lang/Object;
.source "ManLocalBlackAddActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->onBtnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$5;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 344
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$5;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;I)I

    .line 345
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$5;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 346
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 348
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$5;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    .line 349
    .local v0, "conCall":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    invoke-virtual {v0, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->setSelect(Z)V

    .line 346
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 351
    .end local v0    # "conCall":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    :cond_0
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$5;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->setAddBtnText()V

    .line 352
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$5;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->h(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;)Landroid/widget/BaseAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 353
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$5;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->i(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidateViews()V

    .line 354
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$5;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->k(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 355
    return-void
.end method
