.class public Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;
.super Lcom/lenovo/safecenter/platform/BaseTitleActivity;
.source "ManLocalBlackAddContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$CallAdapter;,
        Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/Thread;

.field b:Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/view/View;

.field private h:I

.field private i:Landroid/widget/BaseAdapter;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/widget/TextView;

.field private l:Landroid/app/ProgressDialog;

.field private m:Z

.field private n:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

.field private o:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->a:Ljava/lang/Thread;

    .line 49
    iput-boolean v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->m:Z

    .line 52
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$a;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$a;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;B)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->o:Landroid/os/Handler;

    .line 494
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;
    .param p1, "x1"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->i:Landroid/widget/BaseAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->d:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->j:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->e:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->l:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    .prologue
    .line 34
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->h:I

    return v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)Landroid/widget/BaseAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->i:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic j(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->o:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->n:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    return-object v0
.end method

.method static synthetic l(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->m:Z

    return v0
.end method


# virtual methods
.method public changeBtn(ZI)V
    .locals 1
    .param p1, "bool"    # Z
    .param p2, "resourceId"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->f:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 232
    return-void
.end method

.method public checkCancelAll()Z
    .locals 3

    .prologue
    .line 272
    const/4 v1, 0x1

    .line 274
    .local v1, "isCanAll":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 275
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->j:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 276
    const/4 v1, 0x0

    .line 280
    :cond_0
    return v1

    .line 274
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public checkSelAll()Z
    .locals 3

    .prologue
    .line 259
    const/4 v1, 0x1

    .line 261
    .local v1, "isSelAll":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 262
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->j:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->isSelect()Z

    move-result v2

    if-nez v2, :cond_1

    .line 263
    const/4 v1, 0x0

    .line 267
    :cond_0
    return v1

    .line 261
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public initApp_deleteWhite(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 436
    .local p1, "selList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->l:Landroid/app/ProgressDialog;

    .line 437
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->l:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 438
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->l:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d025b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->l:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 441
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$10;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$10;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$10;->start()V

    .line 458
    return-void
.end method

.method public initApp_expectWhite(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 463
    .local p1, "selList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->l:Landroid/app/ProgressDialog;

    .line 464
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->l:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 465
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->l:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d025b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->l:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 468
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$2;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$2;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$2;->start()V

    .line 490
    return-void
.end method

.method public initApps(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, "selList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->l:Landroid/app/ProgressDialog;

    .line 286
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->l:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 287
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->l:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d025b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->l:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 290
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$3;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$3;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$3;->start()V

    .line 309
    return-void
.end method

.method public initView()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 176
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->l:Landroid/app/ProgressDialog;

    .line 179
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->l:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 180
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->l:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d025c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->l:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 183
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$1;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->a:Ljava/lang/Thread;

    .line 222
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 223
    const-string v0, "thread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadDataThread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->a:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void
.end method

.method public onBtnClick()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$4;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$4;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 326
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->d:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$5;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$5;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->e:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$6;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$6;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->f:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$7;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$7;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->h:I

    .line 143
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->setContentView(I)V

    .line 155
    const v0, 0x7f020286

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0d027a

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 156
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->n:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    .line 157
    const v0, 0x7f0900d2

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->c:Landroid/widget/ListView;

    .line 158
    const v0, 0x7f0900d0

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->f:Landroid/widget/Button;

    .line 162
    const v0, 0x7f0900cd

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->g:Landroid/view/View;

    .line 163
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->g:Landroid/view/View;

    const v1, 0x7f09010b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->d:Landroid/widget/Button;

    .line 164
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->g:Landroid/view/View;

    const v1, 0x7f09010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->e:Landroid/widget/Button;

    .line 165
    const v0, 0x7f0900d1

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->k:Landroid/widget/TextView;

    .line 167
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

    invoke-direct {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

    .line 170
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->onBtnClick()V

    .line 171
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;->initView()V

    .line 172
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onDestroy()V

    .line 240
    const-string v0, "onkey"

    const-string v1, "onKeyDown"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 246
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 247
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onPause()V

    .line 248
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 253
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 254
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onResume()V

    .line 255
    return-void
.end method

.method public showDialog(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p1, "selectlist":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d02af

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d02b0

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d02b1

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$9;

    invoke-direct {v2, p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$9;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d02b2

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$8;

    invoke-direct {v2, p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract$8;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddContract;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->create()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog;->show()V

    .line 432
    return-void
.end method
