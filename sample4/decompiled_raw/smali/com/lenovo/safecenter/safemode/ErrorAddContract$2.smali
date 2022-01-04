.class final Lcom/lenovo/safecenter/safemode/ErrorAddContract$2;
.super Ljava/lang/Thread;
.source "ErrorAddContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/ErrorAddContract;->initData()V
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
    .line 197
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$2;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$2;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->a(Lcom/lenovo/safecenter/safemode/ErrorAddContract;Ljava/util/List;)Ljava/util/List;

    .line 200
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$2;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$2;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->g(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$2;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->c(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$2;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$2;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-static {v4}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->d(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->getConNotInWhiteList(Ljava/util/List;Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->a(Lcom/lenovo/safecenter/safemode/ErrorAddContract;Ljava/util/List;)Ljava/util/List;

    .line 201
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorAddContract$2;->a:Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-static {v0}, Lcom/lenovo/safecenter/safemode/ErrorAddContract;->h(Lcom/lenovo/safecenter/safemode/ErrorAddContract;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 202
    return-void
.end method
