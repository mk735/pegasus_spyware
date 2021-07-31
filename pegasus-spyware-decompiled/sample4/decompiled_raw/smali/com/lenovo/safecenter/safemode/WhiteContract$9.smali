.class final Lcom/lenovo/safecenter/safemode/WhiteContract$9;
.super Ljava/lang/Object;
.source "WhiteContract.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/safemode/WhiteContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/lenovo/safecenter/safemode/WhiteContract;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/WhiteContract;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$9;->c:Lcom/lenovo/safecenter/safemode/WhiteContract;

    iput p2, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$9;->a:I

    iput-object p3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$9;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 123
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$9;->c:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/WhiteContract;->a(Lcom/lenovo/safecenter/safemode/WhiteContract;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$9;->a:I

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/database/AppDatabase;->deleteWhite(I)V

    .line 124
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$9;->c:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/WhiteContract;->c(Lcom/lenovo/safecenter/safemode/WhiteContract;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$9;->c:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/WhiteContract;->b(Lcom/lenovo/safecenter/safemode/WhiteContract;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 125
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$9;->c:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/WhiteContract;->d(Lcom/lenovo/safecenter/safemode/WhiteContract;)Lcom/lenovo/safecenter/safemode/WhiteContract$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->notifyDataSetChanged()V

    .line 126
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$9;->c:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/WhiteContract;->e(Lcom/lenovo/safecenter/safemode/WhiteContract;)Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->invalidateViews()V

    .line 127
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$9;->c:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/WhiteContract;->b(Lcom/lenovo/safecenter/safemode/WhiteContract;)I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$9;->c:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/WhiteContract;->c(Lcom/lenovo/safecenter/safemode/WhiteContract;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 129
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$9;->c:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/WhiteContract;->e(Lcom/lenovo/safecenter/safemode/WhiteContract;)Landroid/widget/ExpandableListView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$9;->c:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/WhiteContract;->b(Lcom/lenovo/safecenter/safemode/WhiteContract;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$9;->c:Lcom/lenovo/safecenter/safemode/WhiteContract;

    const-string v2, "com.lenovo.securityperson.change"

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->sendBraodcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 134
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 135
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "number"

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$9;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$9;->c:Lcom/lenovo/safecenter/safemode/WhiteContract;

    iget-object v1, v1, Lcom/lenovo/safecenter/safemode/WhiteContract;->hand:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 138
    return-void
.end method
