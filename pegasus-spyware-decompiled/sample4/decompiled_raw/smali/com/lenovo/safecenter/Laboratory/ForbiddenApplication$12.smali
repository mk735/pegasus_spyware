.class final Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;
.super Ljava/lang/Object;
.source "ForbiddenApplication.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

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
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 283
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->r(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 284
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->q(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v2}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->q(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    iget-object v4, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->b(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    invoke-static {v4, v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->a(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;Lcom/lenovo/safecenter/support/AppInfo;)Lcom/lenovo/safecenter/support/AppInfo;

    .line 287
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->j(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Lcom/lenovo/safecenter/support/AppInfo;

    move-result-object v1

    iget v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-nez v1, :cond_2

    move v0, v2

    .line 289
    .local v0, "flag":Z
    :goto_1
    if-eqz v0, :cond_5

    .line 290
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->s(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)I

    move-result v1

    iget-object v4, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v4}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->t(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 291
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->e(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 292
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->u(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V

    goto :goto_0

    .end local v0    # "flag":Z
    :cond_2
    move v0, v3

    .line 287
    goto :goto_1

    .line 294
    .restart local v0    # "flag":Z
    :cond_3
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->k(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v1

    iget-object v4, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v4}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->j(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Lcom/lenovo/safecenter/support/AppInfo;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lcom/lenovo/safecenter/database/AppDatabase;->insertApp(Lcom/lenovo/safecenter/support/AppInfo;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 295
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->m(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)I

    .line 296
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->j(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Lcom/lenovo/safecenter/support/AppInfo;

    move-result-object v1

    iput v2, v1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    .line 297
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->c(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0

    .line 301
    :cond_4
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->v(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V

    goto :goto_0

    .line 303
    :cond_5
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->e(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 304
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->w(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V

    .line 305
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->c(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 306
    new-instance v1, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12$1;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12$1;-><init>(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;)V

    invoke-virtual {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12$1;->start()V

    goto/16 :goto_0

    .line 315
    :cond_6
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->k(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v2}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->j(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Lcom/lenovo/safecenter/support/AppInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/safecenter/database/AppDatabase;->deleteApp(Ljava/lang/String;I)V

    .line 316
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->l(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)I

    .line 317
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->j(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Lcom/lenovo/safecenter/support/AppInfo;

    move-result-object v1

    iput v3, v1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    .line 318
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->c(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_0
.end method
