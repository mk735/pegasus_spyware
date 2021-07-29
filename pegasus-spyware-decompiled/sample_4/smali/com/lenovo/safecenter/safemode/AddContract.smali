.class public Lcom/lenovo/safecenter/safemode/AddContract;
.super Lcom/lenovo/safecenter/platform/BaseTitleActivity;
.source "AddContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/safemode/AddContract$a;
    }
.end annotation


# instance fields
.field a:Landroid/widget/Button;

.field b:Landroid/widget/LinearLayout;

.field private c:Lcom/lenovo/safecenter/database/AppDatabase;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/widget/ListView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/lenovo/safecenter/utils/ContractHelpUtils;

.field private h:I

.field private i:Landroid/widget/BaseAdapter;

.field private j:Z

.field private k:Landroid/app/ProgressDialog;

.field private l:Lcom/lenovo/safecenter/safemode/AddContract$a;

.field private m:I

.field private n:Landroid/os/Handler;

.field private o:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;-><init>()V

    .line 46
    iput-boolean v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->j:Z

    .line 51
    iput v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->m:I

    .line 52
    new-instance v0, Lcom/lenovo/safecenter/safemode/AddContract$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/safemode/AddContract$1;-><init>(Lcom/lenovo/safecenter/safemode/AddContract;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->n:Landroid/os/Handler;

    .line 243
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->o:J

    .line 283
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/AddContract;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/AddContract;
    .param p1, "x1"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/AddContract;->i:Landroid/widget/BaseAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/AddContract;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/AddContract;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/AddContract;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/AddContract;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/AddContract;

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->j:Z

    return v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/safemode/AddContract;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/AddContract;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->k:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/safemode/AddContract;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/AddContract;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/safemode/AddContract;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/AddContract;

    .prologue
    .line 37
    iget v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->h:I

    return v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/safemode/AddContract;)Landroid/widget/BaseAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/AddContract;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->i:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/safemode/AddContract;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/AddContract;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/safemode/AddContract;)Lcom/lenovo/safecenter/database/AppDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/AddContract;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->c:Lcom/lenovo/safecenter/database/AppDatabase;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/safemode/AddContract;)Lcom/lenovo/safecenter/utils/ContractHelpUtils;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/AddContract;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->g:Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/safemode/AddContract;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/AddContract;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->n:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Lcom/lenovo/safecenter/safemode/AddContract;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/AddContract;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->j:Z

    return v0
.end method

.method static synthetic k(Lcom/lenovo/safecenter/safemode/AddContract;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/AddContract;

    .prologue
    .line 37
    iget v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->m:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/lenovo/safecenter/safemode/AddContract;->m:I

    return v0
.end method

.method static synthetic l(Lcom/lenovo/safecenter/safemode/AddContract;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/AddContract;

    .prologue
    .line 37
    iget v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lenovo/safecenter/safemode/AddContract;->m:I

    return v0
.end method


# virtual methods
.method public initApp_deleteBlack(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 417
    .local p1, "selList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->k:Landroid/app/ProgressDialog;

    .line 418
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->k:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/AddContract;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->k:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->j:Z

    .line 421
    new-instance v0, Lcom/lenovo/safecenter/safemode/AddContract$9;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/safecenter/safemode/AddContract$9;-><init>(Lcom/lenovo/safecenter/safemode/AddContract;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/safemode/AddContract$9;->start()V

    .line 439
    return-void
.end method

.method public initApp_expectBlack(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 444
    .local p1, "selList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->k:Landroid/app/ProgressDialog;

    .line 445
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->k:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/AddContract;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->k:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->j:Z

    .line 448
    new-instance v0, Lcom/lenovo/safecenter/safemode/AddContract$10;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/safecenter/safemode/AddContract$10;-><init>(Lcom/lenovo/safecenter/safemode/AddContract;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/safemode/AddContract$10;->start()V

    .line 463
    return-void
.end method

.method public initCopyDel(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 569
    .local p1, "selectlist":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->k:Landroid/app/ProgressDialog;

    .line 570
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->k:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/AddContract;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->k:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 572
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->j:Z

    .line 573
    new-instance v0, Lcom/lenovo/safecenter/safemode/AddContract$2;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/safecenter/safemode/AddContract$2;-><init>(Lcom/lenovo/safecenter/safemode/AddContract;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/safemode/AddContract$2;->start()V

    .line 601
    return-void
.end method

.method public initCopyDel1(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, "selectlist":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/Contract;

    .line 266
    .local v1, "con":Lcom/lenovo/safecenter/support/Contract;
    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, "optNumber":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/safecenter/safemode/AddContract;->g:Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    invoke-virtual {v5, v3}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->isMobileNO(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 269
    iget-object v5, p0, Lcom/lenovo/safecenter/safemode/AddContract;->g:Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    invoke-virtual {v5, v3}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->optNUmber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 271
    :cond_1
    iget-object v5, p0, Lcom/lenovo/safecenter/safemode/AddContract;->g:Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p0, v3, v6}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->getCallContractByNUmber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 272
    .local v0, "call":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    iget-object v5, p0, Lcom/lenovo/safecenter/safemode/AddContract;->g:Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, p0, v3, v6, v7}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->getSmsByNUmber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 273
    .local v4, "sms":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    iget-object v5, p0, Lcom/lenovo/safecenter/safemode/AddContract;->c:Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-virtual {v5, v0}, Lcom/lenovo/safecenter/database/AppDatabase;->insertCall(Ljava/util/List;)V

    .line 274
    iget-object v5, p0, Lcom/lenovo/safecenter/safemode/AddContract;->c:Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-virtual {v5, v4}, Lcom/lenovo/safecenter/database/AppDatabase;->insertSms(Ljava/util/List;)V

    .line 275
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 277
    :cond_2
    iget-object v6, p0, Lcom/lenovo/safecenter/safemode/AddContract;->g:Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v6, v3, p0, v5}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->operateNumber(Ljava/lang/String;Landroid/content/Context;Z)V

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 281
    .end local v0    # "call":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    .end local v1    # "con":Lcom/lenovo/safecenter/support/Contract;
    .end local v3    # "optNumber":Ljava/lang/String;
    .end local v4    # "sms":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    :cond_4
    return-void
.end method

.method public initData()V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->k:Landroid/app/ProgressDialog;

    .line 213
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->k:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/AddContract;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->k:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 215
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->k:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->j:Z

    .line 217
    new-instance v0, Lcom/lenovo/safecenter/safemode/AddContract$3;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/safemode/AddContract$3;-><init>(Lcom/lenovo/safecenter/safemode/AddContract;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/safemode/AddContract$3;->start()V

    .line 227
    return-void
.end method

.method public initInsert(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 393
    .local p1, "selectlist":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->k:Landroid/app/ProgressDialog;

    .line 394
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->k:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/AddContract;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->k:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->j:Z

    .line 397
    new-instance v0, Lcom/lenovo/safecenter/safemode/AddContract$8;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/safecenter/safemode/AddContract$8;-><init>(Lcom/lenovo/safecenter/safemode/AddContract;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/safemode/AddContract$8;->start()V

    .line 412
    return-void
.end method

.method public onBtnClick()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/lenovo/safecenter/safemode/AddContract$4;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/safemode/AddContract$4;-><init>(Lcom/lenovo/safecenter/safemode/AddContract;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 322
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->a:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/safemode/AddContract$5;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/safemode/AddContract$5;-><init>(Lcom/lenovo/safecenter/safemode/AddContract;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
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
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/AddContract;->finish()V

    .line 207
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 155
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 157
    const v1, 0x7f03000b

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/safemode/AddContract;->setContentView(I)V

    .line 158
    const v1, 0x7f020286

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d0022

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/lenovo/safecenter/safemode/AddContract;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 160
    const v1, 0x7f090076

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/safemode/AddContract;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract;->b:Landroid/widget/LinearLayout;

    .line 161
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    const v1, 0x7f090078

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/safemode/AddContract;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract;->a:Landroid/widget/Button;

    .line 163
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getScreenHeight()I

    move-result v1

    const/16 v2, 0x1e0

    if-gt v1, v2, :cond_2

    .line 165
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract;->a:Landroid/widget/Button;

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setWidth(I)V

    .line 166
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract;->a:Landroid/widget/Button;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setHeight(I)V

    .line 173
    :goto_0
    const v1, 0x7f09007b

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/safemode/AddContract;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract;->e:Landroid/widget/ListView;

    .line 174
    const v1, 0x7f09007c

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/safemode/AddContract;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract;->f:Landroid/widget/TextView;

    .line 175
    new-instance v1, Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract;->c:Lcom/lenovo/safecenter/database/AppDatabase;

    .line 176
    new-instance v1, Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    invoke-direct {v1}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;-><init>()V

    iput-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract;->g:Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    .line 177
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/AddContract;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromtype"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/safecenter/safemode/AddContract;->h:I

    .line 178
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/AddContract;->onBtnClick()V

    .line 180
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract;->f:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 182
    iget v1, p0, Lcom/lenovo/safecenter/safemode/AddContract;->h:I

    if-nez v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract;->f:Landroid/widget/TextView;

    const v2, 0x7f0d076d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract;->e:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/AddContract;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 188
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/AddContract;->initData()V

    .line 190
    new-instance v1, Lcom/lenovo/safecenter/safemode/AddContract$a;

    invoke-direct {v1, p0, v4}, Lcom/lenovo/safecenter/safemode/AddContract$a;-><init>(Lcom/lenovo/safecenter/safemode/AddContract;B)V

    iput-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract;->l:Lcom/lenovo/safecenter/safemode/AddContract$a;

    .line 191
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract;->l:Lcom/lenovo/safecenter/safemode/AddContract$a;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/safecenter/safemode/AddContract;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 194
    return-void

    .line 169
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_2
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract;->a:Landroid/widget/Button;

    const/16 v2, 0xcc

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setWidth(I)V

    .line 170
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract;->a:Landroid/widget/Button;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setHeight(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 256
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onDestroy()V

    .line 257
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->l:Lcom/lenovo/safecenter/safemode/AddContract$a;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/AddContract;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 258
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->o:J

    .line 259
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/safecenter/support/HttpUtils;->private_isOpenSec:Z

    .line 260
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 251
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 252
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onPause()V

    .line 253
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 231
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onResume()V

    .line 232
    iget-wide v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/safecenter/safemode/AddContract;->o:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1bd50

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 234
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/safecenter/support/HttpUtils;->private_isOpenSec:Z

    .line 235
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/AddContract;->finish()V

    .line 241
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 245
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onStop()V

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->o:J

    .line 247
    return-void
.end method

.method public setAddBtnText()V
    .locals 5

    .prologue
    .line 144
    iget v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->m:I

    if-lez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->a:Landroid/widget/Button;

    const v1, 0x7f0d0540

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/safemode/AddContract;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/lenovo/safecenter/safemode/AddContract;->m:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract;->a:Landroid/widget/Button;

    const v1, 0x7f0d024f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public showDialogAdd(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 366
    .local p1, "selectlist":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d01ef

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d01f0

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d01f1

    new-instance v2, Lcom/lenovo/safecenter/safemode/AddContract$7;

    invoke-direct {v2, p0, p1}, Lcom/lenovo/safecenter/safemode/AddContract$7;-><init>(Lcom/lenovo/safecenter/safemode/AddContract;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d01f2

    new-instance v2, Lcom/lenovo/safecenter/safemode/AddContract$6;

    invoke-direct {v2, p0, p1}, Lcom/lenovo/safecenter/safemode/AddContract$6;-><init>(Lcom/lenovo/safecenter/safemode/AddContract;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->create()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog;->show()V

    .line 388
    return-void
.end method
