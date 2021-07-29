.class final Lcom/lenovo/safecenter/safemode/ManWhiteSms$4;
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
    .line 200
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$4;->a:Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 203
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$4;->a:Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    invoke-static {v4}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->g(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v3, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$4;->a:Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    invoke-static {v4}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->e(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/Contract;

    .line 210
    .local v1, "con":Lcom/lenovo/safecenter/support/Contract;
    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/Contract;->isSelect()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 212
    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 215
    .end local v1    # "con":Lcom/lenovo/safecenter/support/Contract;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 217
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$4;->a:Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    invoke-static {v4}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->h(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)I

    move-result v4

    if-nez v4, :cond_5

    .line 219
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$4;->a:Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    invoke-static {v4}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->i(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/lenovo/safecenter/database/AppDatabase;->deleteSmsByNo(Ljava/util/List;)V

    .line 220
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$4;->a:Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->finish()V

    .line 227
    :cond_4
    :goto_2
    const-string v4, "SofeModeMain"

    invoke-static {v4}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getActivityByName(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/safemode/SofeModeMain;

    .line 228
    .local v0, "activity":Lcom/lenovo/safecenter/safemode/SofeModeMain;
    iget-object v4, v0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->hand:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 221
    .end local v0    # "activity":Lcom/lenovo/safecenter/safemode/SofeModeMain;
    :cond_5
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$4;->a:Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    invoke-static {v4}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->h(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)I

    move-result v4

    if-ne v4, v5, :cond_4

    .line 223
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$4;->a:Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    invoke-virtual {v4, v3}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->init_recovery(Ljava/util/List;)V

    goto :goto_2
.end method
