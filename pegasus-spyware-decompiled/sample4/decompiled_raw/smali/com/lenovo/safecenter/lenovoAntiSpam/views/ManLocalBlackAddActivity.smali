.class public Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;
.super Lcom/lenovo/safecenter/platform/BaseTitleActivity;
.source "ManLocalBlackAddActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$SmsAdapter;,
        Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$CallAdapter;,
        Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$a;
    }
.end annotation


# instance fields
.field a:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/view/View;

.field private g:I

.field private h:Landroid/widget/BaseAdapter;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/widget/TextView;

.field private k:Z

.field private l:I

.field private m:Landroid/app/ProgressDialog;

.field private n:Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

.field private o:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;-><init>()V

    .line 46
    iput-boolean v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->k:Z

    .line 48
    iput v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->l:I

    .line 52
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$a;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$a;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;B)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->o:Landroid/os/Handler;

    .line 606
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->l:I

    return p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;
    .param p1, "x1"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->h:Landroid/widget/BaseAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->c:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->i:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->d:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->m:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    .prologue
    .line 34
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->g:I

    return v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;)Landroid/widget/BaseAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->h:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic j(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;)Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->n:Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

    return-object v0
.end method

.method static synthetic k(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->o:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    .prologue
    .line 34
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->l:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->l:I

    return v0
.end method

.method static synthetic m(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    .prologue
    .line 34
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->l:I

    return v0
.end method

.method static synthetic n(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->k:Z

    return v0
.end method


# virtual methods
.method public changeBtn(ZI)V
    .locals 1
    .param p1, "bool"    # Z
    .param p2, "resourceId"    # I

    .prologue
    .line 244
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 247
    return-void
.end method

.method public checkCancelAll()Z
    .locals 3

    .prologue
    .line 288
    const/4 v1, 0x1

    .line 290
    .local v1, "isCanAll":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 291
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    const/4 v1, 0x0

    .line 296
    :cond_0
    return v1

    .line 290
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public checkSelAll()Z
    .locals 3

    .prologue
    .line 275
    const/4 v1, 0x1

    .line 277
    .local v1, "isSelAll":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 278
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->isSelect()Z

    move-result v2

    if-nez v2, :cond_1

    .line 279
    const/4 v1, 0x0

    .line 283
    :cond_0
    return v1

    .line 277
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
    .line 465
    .local p1, "selList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->m:Landroid/app/ProgressDialog;

    .line 466
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->m:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 467
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->m:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d025b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 470
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$10;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$10;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$10;->start()V

    .line 487
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
    .line 492
    .local p1, "selList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->m:Landroid/app/ProgressDialog;

    .line 493
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->m:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 494
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->m:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d025b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 497
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$2;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$2;->start()V

    .line 518
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
    .line 443
    .local p1, "selList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->m:Landroid/app/ProgressDialog;

    .line 444
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->m:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 445
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->m:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d025b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 448
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$9;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$9;->start()V

    .line 461
    return-void
.end method

.method public initView()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 202
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->m:Landroid/app/ProgressDialog;

    .line 205
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 206
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->m:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d025c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 209
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 210
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$1;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$1;->start()V

    .line 240
    return-void
.end method

.method public onBtnClick()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$3;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$3;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 322
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->c:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$4;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$4;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->d:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$5;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$5;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->e:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$6;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$6;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904b9

    if-ne v0, v1, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->finish()V

    .line 198
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 169
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->g:I

    .line 171
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->setContentView(I)V

    .line 174
    const v0, 0x7f020286

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0d027a

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 175
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    .line 176
    const v0, 0x7f0900d2

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->b:Landroid/widget/ListView;

    .line 177
    const v0, 0x7f0900d0

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->e:Landroid/widget/Button;

    .line 181
    const v0, 0x7f0900cd

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->f:Landroid/view/View;

    .line 182
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->f:Landroid/view/View;

    const v1, 0x7f09010b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->c:Landroid/widget/Button;

    .line 183
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->f:Landroid/view/View;

    const v1, 0x7f09010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->d:Landroid/widget/Button;

    .line 184
    const v0, 0x7f0900d1

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->j:Landroid/widget/TextView;

    .line 185
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

    invoke-direct {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->n:Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

    .line 189
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->onBtnClick()V

    .line 190
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->initView()V

    .line 191
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 262
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 263
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onPause()V

    .line 264
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 269
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 270
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onResume()V

    .line 271
    return-void
.end method

.method public setAddBtnText()V
    .locals 5

    .prologue
    .line 251
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->l:I

    if-lez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->e:Landroid/widget/Button;

    const v1, 0x7f0d0540

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;->e:Landroid/widget/Button;

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
    .line 414
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

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$8;

    invoke-direct {v2, p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$8;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d02b2

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$7;

    invoke-direct {v2, p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity$7;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->create()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog;->show()V

    .line 437
    return-void
.end method
