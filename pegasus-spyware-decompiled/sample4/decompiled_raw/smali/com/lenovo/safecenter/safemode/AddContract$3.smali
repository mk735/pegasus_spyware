.class final Lcom/lenovo/safecenter/safemode/AddContract$3;
.super Ljava/lang/Thread;
.source "AddContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/AddContract;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/AddContract;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/AddContract;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/AddContract$3;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 219
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract$3;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract$3;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/AddContract;->g(Lcom/lenovo/safecenter/safemode/AddContract;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/database/AppDatabase;->getAllWhiteContract()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/safemode/AddContract;->a(Lcom/lenovo/safecenter/safemode/AddContract;Ljava/util/List;)Ljava/util/List;

    .line 220
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract$3;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract$3;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/AddContract;->h(Lcom/lenovo/safecenter/safemode/AddContract;)Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/AddContract$3;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/AddContract;->c(Lcom/lenovo/safecenter/safemode/AddContract;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/AddContract$3;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/AddContract$3;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v4}, Lcom/lenovo/safecenter/safemode/AddContract;->d(Lcom/lenovo/safecenter/safemode/AddContract;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->getConNotInWhiteList(Ljava/util/List;Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/safemode/AddContract;->a(Lcom/lenovo/safecenter/safemode/AddContract;Ljava/util/List;)Ljava/util/List;

    .line 221
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract$3;->a:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-static {v0}, Lcom/lenovo/safecenter/safemode/AddContract;->i(Lcom/lenovo/safecenter/safemode/AddContract;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 222
    return-void
.end method
