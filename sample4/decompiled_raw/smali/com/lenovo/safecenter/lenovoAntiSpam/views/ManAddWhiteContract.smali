.class public Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;
.super Lcom/lenovo/safecenter/platform/BaseTitleActivity;
.source "ManAddWhiteContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$SmsAdapter;,
        Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$CallAdapter;,
        Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$PhoneAdapter;,
        Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;
    }
.end annotation


# instance fields
.field a:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/view/View;

.field private g:Ljava/lang/String;

.field private h:Landroid/widget/BaseAdapter;

.field private i:Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

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

.field private m:I

.field private n:Z

.field private o:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;-><init>()V

    .line 49
    iput-boolean v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->n:Z

    .line 51
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$a;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;B)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->o:Landroid/os/Handler;

    .line 725
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->m:I

    return p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;
    .param p1, "x1"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->h:Landroid/widget/BaseAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->c:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->j:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->d:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->l:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/widget/BaseAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->h:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic j(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->o:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    .prologue
    .line 33
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->m:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->m:I

    return v0
.end method

.method static synthetic l(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    .prologue
    .line 33
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->m:I

    return v0
.end method

.method static synthetic m(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->n:Z

    return v0
.end method

.method static synthetic n(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->i:Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

    return-object v0
.end method


# virtual methods
.method public changeBtn(ZI)V
    .locals 1
    .param p1, "bool"    # Z
    .param p2, "resourceId"    # I

    .prologue
    .line 287
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->e:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 290
    return-void
.end method

.method public checkCancelAll()Z
    .locals 3

    .prologue
    .line 319
    const/4 v1, 0x1

    .line 321
    .local v1, "isCanAll":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 322
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->j:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 323
    const/4 v1, 0x0

    .line 327
    :cond_0
    return v1

    .line 321
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public checkSelAll()Z
    .locals 3

    .prologue
    .line 306
    const/4 v1, 0x1

    .line 308
    .local v1, "isSelAll":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 309
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->j:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->isSelect()Z

    move-result v2

    if-nez v2, :cond_1

    .line 310
    const/4 v1, 0x0

    .line 314
    :cond_0
    return v1

    .line 308
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
    .line 515
    .local p1, "selList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->l:Landroid/app/ProgressDialog;

    .line 516
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->l:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 517
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->l:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d025b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->l:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 520
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$9;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$9;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$9;->start()V

    .line 536
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
    .line 480
    .local p1, "selList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->l:Landroid/app/ProgressDialog;

    .line 481
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->l:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 482
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->l:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d025b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->l:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 485
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$8;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$8;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$8;->start()V

    .line 507
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
    .line 332
    .local p1, "selList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->l:Landroid/app/ProgressDialog;

    .line 333
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->l:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 334
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->l:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d025b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->l:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 337
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$3;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$3;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$3;->start()V

    .line 352
    return-void
.end method

.method public initView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 211
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->l:Landroid/app/ProgressDialog;

    .line 212
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->l:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 213
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->l:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d025c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->l:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 216
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->l:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 218
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$1;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$1;->start()V

    .line 283
    return-void
.end method

.method public onBtn_Click()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$4;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$4;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 388
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->c:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$5;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$5;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->d:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$6;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$6;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->e:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$7;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$7;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904b9

    if-ne v0, v1, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->finish()V

    .line 207
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x8

    .line 165
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 166
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->g:Ljava/lang/String;

    .line 167
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

    invoke-direct {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->i:Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

    .line 168
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->setContentView(I)V

    .line 169
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    .line 171
    const v0, 0x7f0900d2

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->b:Landroid/widget/ListView;

    .line 172
    const v0, 0x7f0900d0

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->e:Landroid/widget/Button;

    .line 176
    const v0, 0x7f0900cd

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->f:Landroid/view/View;

    .line 177
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->f:Landroid/view/View;

    const v1, 0x7f09010b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->c:Landroid/widget/Button;

    .line 178
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->f:Landroid/view/View;

    const v1, 0x7f09010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->d:Landroid/widget/Button;

    .line 179
    const v0, 0x7f0900d1

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->k:Landroid/widget/TextView;

    .line 191
    const v0, 0x7f020286

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0d027c

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 195
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->onBtn_Click()V

    .line 198
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->initView()V

    .line 199
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 300
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 301
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onPause()V

    .line 302
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 293
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onResume()V

    .line 295
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 296
    return-void
.end method

.method public setAddBtnText()V
    .locals 5

    .prologue
    .line 357
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->m:I

    if-lez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->e:Landroid/widget/Button;

    const v1, 0x7f0d0540

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->m:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->e:Landroid/widget/Button;

    const v1, 0x7f0d024f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
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
    .line 541
    .local p1, "selectlist":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d02af

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d01f0

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d02b1

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$2;

    invoke-direct {v2, p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$2;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d02b2

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$10;

    invoke-direct {v2, p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$10;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->create()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog;->show()V

    .line 564
    return-void
.end method
