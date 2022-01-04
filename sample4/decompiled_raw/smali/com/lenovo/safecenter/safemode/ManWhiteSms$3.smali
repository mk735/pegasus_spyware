.class final Lcom/lenovo/safecenter/safemode/ManWhiteSms$3;
.super Ljava/lang/Object;
.source "ManWhiteSms.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/ManWhiteSms;->onBtnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/ManWhiteSms;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$3;->a:Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 173
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$3;->a:Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->d(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$3;->a:Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    invoke-static {v2, v6}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->a(Lcom/lenovo/safecenter/safemode/ManWhiteSms;Z)Z

    .line 181
    :goto_0
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$3;->a:Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->e(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/Contract;

    .line 183
    .local v0, "con":Lcom/lenovo/safecenter/support/Contract;
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$3;->a:Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->d(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    invoke-virtual {v0, v6}, Lcom/lenovo/safecenter/support/Contract;->setSelect(Z)V

    .line 186
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$3;->a:Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->f(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f0d01a8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 187
    const-string v2, "txt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$3;->a:Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    invoke-static {v4}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->f(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!isAllSelect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 178
    .end local v0    # "con":Lcom/lenovo/safecenter/support/Contract;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$3;->a:Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    invoke-static {v2, v5}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->a(Lcom/lenovo/safecenter/safemode/ManWhiteSms;Z)Z

    goto :goto_0

    .line 190
    .restart local v0    # "con":Lcom/lenovo/safecenter/support/Contract;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v0, v5}, Lcom/lenovo/safecenter/support/Contract;->setSelect(Z)V

    .line 191
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$3;->a:Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->f(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f0d01a7

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 192
    const-string v2, "txt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$3;->a:Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    invoke-static {v4}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->f(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "isAllSelect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 196
    .end local v0    # "con":Lcom/lenovo/safecenter/support/Contract;
    :cond_2
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$3;->a:Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->c(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 197
    return-void
.end method
