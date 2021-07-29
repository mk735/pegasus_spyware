.class final Lcom/lenovo/safecenter/safemode/ErrorAddContract$4;
.super Ljava/lang/Object;
.source "ErrorAddContract.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/ErrorAddContract;->onBtnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$4;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 273
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$4;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->i(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$4;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    const v3, 0x7f0d01be

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 297
    :goto_0
    return-void

    .line 278
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v1, "select_list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$4;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->c(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 281
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$4;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->c(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/support/Contract;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 283
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$4;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->c(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 287
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 289
    sget-object v2, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 290
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$4;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->finish()V

    goto :goto_0

    .line 295
    :cond_3
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$4;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    const v3, 0x7f0d014f

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
