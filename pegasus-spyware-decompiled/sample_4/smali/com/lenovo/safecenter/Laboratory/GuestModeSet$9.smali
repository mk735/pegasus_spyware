.class final Lcom/lenovo/safecenter/Laboratory/GuestModeSet$9;
.super Ljava/lang/Object;
.source "GuestModeSet.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/Laboratory/GuestModeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$9;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 298
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$9;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->s(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 299
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$9;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->o(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$9;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v2}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->o(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v4, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$9;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$9;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->b(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    invoke-static {v4, v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->a(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;Lcom/lenovo/safecenter/support/AppInfo;)Lcom/lenovo/safecenter/support/AppInfo;

    .line 302
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$9;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->h(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Lcom/lenovo/safecenter/support/AppInfo;

    move-result-object v1

    iget v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-nez v1, :cond_2

    move v0, v2

    .line 303
    .local v0, "flag":Z
    :goto_1
    if-eqz v0, :cond_5

    .line 304
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$9;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->t(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)I

    move-result v1

    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$9;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v3}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->u(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 305
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$9;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->e(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 306
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$9;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->v(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)V

    goto :goto_0

    .end local v0    # "flag":Z
    :cond_2
    move v0, v3

    .line 302
    goto :goto_1

    .line 308
    .restart local v0    # "flag":Z
    :cond_3
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$9;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->i(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v1

    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$9;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v3}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->h(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Lcom/lenovo/safecenter/support/AppInfo;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/lenovo/safecenter/database/AppDatabase;->insertApp(Lcom/lenovo/safecenter/support/AppInfo;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 309
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$9;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->k(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)I

    .line 310
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$9;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->h(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Lcom/lenovo/safecenter/support/AppInfo;

    move-result-object v1

    iput v2, v1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    .line 311
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$9;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->c(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0

    .line 315
    :cond_4
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$9;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->w(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)V

    goto :goto_0

    .line 318
    :cond_5
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$9;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->e(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 319
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$9;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->p(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)V

    .line 320
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$9;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->c(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 321
    new-instance v1, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$9$1;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$9$1;-><init>(Lcom/lenovo/safecenter/Laboratory/GuestModeSet$9;)V

    invoke-virtual {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$9$1;->start()V

    goto/16 :goto_0

    .line 330
    :cond_6
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$9;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->i(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v1

    iget-object v4, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$9;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v4}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->h(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Lcom/lenovo/safecenter/support/AppInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Lcom/lenovo/safecenter/database/AppDatabase;->deleteApp(Ljava/lang/String;I)V

    .line 331
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$9;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->j(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)I

    .line 332
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$9;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->h(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Lcom/lenovo/safecenter/support/AppInfo;

    move-result-object v1

    iput v3, v1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    .line 333
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$9;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->c(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_0
.end method
