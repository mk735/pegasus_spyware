.class public Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;
.super Lcom/lenovo/safecenter/platform/BaseTitleActivity;
.source "CheckDisplayLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$a;,
        Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$CheckLogAdapter;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/support/SafeLog;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/support/SafeLog;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/ListView;

.field private e:Landroid/content/pm/PackageManager;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Lcom/lenovo/safecenter/database/AppDatabase;

.field private i:Landroid/widget/BaseAdapter;

.field private j:Landroid/app/ProgressDialog;

.field private k:I

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/Button;

.field private p:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->c:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$1;-><init>(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->p:Landroid/os/Handler;

    .line 660
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->j:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private static a(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 1
    .param p0, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 498
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->b:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;I)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;
    .param p1, "x1"    # I

    .prologue
    .line 44
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00f2

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$2;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$2;-><init>(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    new-instance v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$13;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$13;-><init>(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;IZ)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 44
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00f2

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$12;

    invoke-direct {v2, p0, p2}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$12;-><init>(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    new-instance v2, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$11;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$11;-><init>(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-void
.end method

.method static synthetic b(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    .prologue
    .line 44
    iget v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->k:I

    return v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Lcom/lenovo/safecenter/database/AppDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->h:Lcom/lenovo/safecenter/database/AppDatabase;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Landroid/widget/BaseAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->i:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->d:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic j(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Z
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    .prologue
    const/4 v2, 0x0

    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/SafeLog;

    iget v0, v0, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    if-eqz v0, :cond_0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method static synthetic k(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Z
    .locals 4
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/SafeLog;

    iget v0, v0, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    if-eq v0, v3, :cond_0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method static synthetic l(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    .prologue
    .line 44
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->j:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->j:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->j:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0160

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    new-instance v0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$3;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$3;-><init>(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$3;->start()V

    return-void
.end method

.method static synthetic m(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    .prologue
    .line 44
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->j:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->j:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->j:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0160

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    new-instance v0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$4;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$4;-><init>(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$4;->start()V

    return-void
.end method

.method static synthetic n(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    .prologue
    .line 44
    iget v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->g:I

    return v0
.end method

.method static synthetic o(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->p:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic p(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->e:Landroid/content/pm/PackageManager;

    return-object v0
.end method


# virtual methods
.method public noSafeLogRepeatList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/support/SafeLog;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/support/SafeLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    .local p1, "repeatelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/support/SafeLog;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v4, "listnew":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/support/SafeLog;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/SafeLog;

    .line 389
    .local v0, "con":Lcom/lenovo/safecenter/support/SafeLog;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 390
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 392
    :cond_1
    const/4 v3, 0x0

    .line 393
    .local v3, "isExist":Z
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/safecenter/support/SafeLog;

    .line 394
    .local v5, "log":Lcom/lenovo/safecenter/support/SafeLog;
    iget-object v6, v0, Lcom/lenovo/safecenter/support/SafeLog;->packageName:Ljava/lang/String;

    iget-object v7, v5, Lcom/lenovo/safecenter/support/SafeLog;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/lenovo/safecenter/support/SafeLog;->permName:Ljava/lang/String;

    iget-object v7, v5, Lcom/lenovo/safecenter/support/SafeLog;->permName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 395
    const/4 v3, 0x1

    .line 399
    .end local v5    # "log":Lcom/lenovo/safecenter/support/SafeLog;
    :cond_3
    if-nez v3, :cond_0

    .line 400
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 404
    .end local v0    # "con":Lcom/lenovo/safecenter/support/SafeLog;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "isExist":Z
    :cond_4
    return-object v4
.end method

.method public onBtnClick()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->d:Landroid/widget/ListView;

    new-instance v1, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$6;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$6;-><init>(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->l:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$7;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$7;-><init>(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->m:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$8;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$8;-><init>(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->n:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$9;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$9;-><init>(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->o:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$10;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$10;-><init>(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904b9

    if-ne v0, v1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->finish()V

    .line 166
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    const v0, 0x7f0300a7

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->setContentView(I)V

    .line 122
    const v0, 0x7f0903bc

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->o:Landroid/widget/Button;

    .line 123
    const v0, 0x7f020286

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0d0330

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 124
    const v0, 0x7f090275

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f0902c4

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->d:Landroid/widget/ListView;

    .line 126
    const v0, 0x7f0903b8

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->l:Landroid/widget/Button;

    .line 127
    const v0, 0x7f0903b9

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->m:Landroid/widget/Button;

    .line 128
    const v0, 0x7f0903bb

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->n:Landroid/widget/Button;

    .line 129
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->e:Landroid/content/pm/PackageManager;

    .line 130
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->g:I

    .line 131
    iget v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->g:I

    if-nez v0, :cond_0

    .line 132
    const-string v0, "safe_log_tariff"

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->f:Ljava/lang/String;

    .line 134
    :cond_0
    iget v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 135
    const-string v0, "safe_log_privacy"

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->f:Ljava/lang/String;

    .line 137
    :cond_1
    iget v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 138
    const-string v0, "safe_log_harass"

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->f:Ljava/lang/String;

    .line 140
    :cond_2
    iget v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 141
    const-string v0, "safe_log_harass"

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->f:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->o:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 144
    :cond_3
    new-instance v0, Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->h:Lcom/lenovo/safecenter/database/AppDatabase;

    .line 145
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->onBtnClick()V

    .line 146
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 539
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 543
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 559
    :cond_0
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 545
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 546
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/SafeLog;

    const/4 v2, 0x1

    iput v2, v1, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    .line 547
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->d:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 545
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 552
    .end local v0    # "i":I
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 553
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/SafeLog;

    const/4 v2, 0x0

    iput v2, v1, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    .line 554
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->d:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 552
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 543
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 156
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 157
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onPause()V

    .line 158
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onResume()V

    .line 150
    new-instance v0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$5;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$5;-><init>(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$5;->start()V

    .line 151
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 152
    return-void
.end method

.method public reportHarssLog(Ljava/util/ArrayList;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/support/SafeLog;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 478
    .local p1, "logList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/support/SafeLog;>;"
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .local v5, "type":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .local v3, "numberlist":Ljava/lang/StringBuffer;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 479
    .local v0, "Content":Ljava/lang/StringBuffer;
    iget v6, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->g:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 481
    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 483
    :cond_0
    iget v6, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->g:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 485
    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 488
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/support/SafeLog;

    .line 490
    .local v2, "log":Lcom/lenovo/safecenter/support/SafeLog;
    iget-object v6, v2, Lcom/lenovo/safecenter/support/SafeLog;->number:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 491
    iget-object v6, v2, Lcom/lenovo/safecenter/support/SafeLog;->content:Ljava/lang/String;

    invoke-static {v6}, Lcom/lenovo/safecenter/utils/MyUtils;->replaceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 494
    .end local v2    # "log":Lcom/lenovo/safecenter/support/SafeLog;
    :cond_2
    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v6, v7, v8}, Lcom/lenovo/safecenter/support/HttpUtils;->reportHarssLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 495
    .local v4, "state":I
    return v4
.end method

.method public reportPermissionLog(Ljava/util/ArrayList;)I
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/support/SafeLog;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 409
    .local p1, "logList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/support/SafeLog;>;"
    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    .local v24, "type":Ljava/lang/StringBuffer;
    new-instance v23, Ljava/lang/StringBuffer;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    .local v23, "stealTime":Ljava/lang/StringBuffer;
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 410
    .local v13, "appName":Ljava/lang/StringBuffer;
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .local v14, "appinstallpath":Ljava/lang/StringBuffer;
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 411
    .local v15, "appversion":Ljava/lang/StringBuffer;
    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    .local v21, "sha1":Ljava/lang/StringBuffer;
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .local v20, "pkgName":Ljava/lang/StringBuffer;
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 414
    .local v16, "certmd5":Ljava/lang/StringBuffer;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/lenovo/safecenter/support/SafeLog;

    .line 415
    .local v18, "log":Lcom/lenovo/safecenter/support/SafeLog;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/lenovo/safecenter/support/SafeLog;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 416
    .local v19, "packageName":Ljava/lang/String;
    if-nez v19, :cond_0

    .line 417
    const-string v2, "N/A"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    const-string v2, "N/A"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    const-string v2, "N/A"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    const-string v2, "N/A"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    const-string v2, "N/A"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    :goto_1
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SafeLog;->type:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lcom/lenovo/safecenter/utils/MyUtils;->formatAllTime(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SafeLog;->appName:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 423
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->h:Lcom/lenovo/safecenter/database/AppDatabase;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/lenovo/safecenter/database/AppDatabase;->getAppUploadinfo(Ljava/lang/String;)Lcom/lenovo/safecenter/support/AppUploadInfo;

    move-result-object v12

    .line 424
    .local v12, "app":Lcom/lenovo/safecenter/support/AppUploadInfo;
    invoke-virtual {v12}, Lcom/lenovo/safecenter/support/AppUploadInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    invoke-virtual {v12}, Lcom/lenovo/safecenter/support/AppUploadInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 426
    invoke-virtual {v12}, Lcom/lenovo/safecenter/support/AppUploadInfo;->getPackagesha1()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 427
    invoke-virtual {v12}, Lcom/lenovo/safecenter/support/AppUploadInfo;->getCertmd5()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 428
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 436
    .end local v12    # "app":Lcom/lenovo/safecenter/support/AppUploadInfo;
    .end local v18    # "log":Lcom/lenovo/safecenter/support/SafeLog;
    .end local v19    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-static/range {v24 .. v24}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v23 .. v23}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v13}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v14}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v15}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v20 .. v20}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v16 .. v16}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "0"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v11}, Lcom/lenovo/safecenter/support/HttpUtils;->reportaccessunder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    .line 438
    .local v22, "state":I
    return v22
.end method

.method public reportTariffLog(Ljava/util/ArrayList;)I
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/support/SafeLog;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 442
    .local p1, "logList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/support/SafeLog;>;"
    new-instance v28, Ljava/lang/StringBuffer;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuffer;-><init>()V

    .local v28, "type":Ljava/lang/StringBuffer;
    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    .local v26, "stealTime":Ljava/lang/StringBuffer;
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    .line 443
    .local v19, "destination":Ljava/lang/StringBuffer;
    new-instance v27, Ljava/lang/StringBuffer;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuffer;-><init>()V

    .local v27, "stealcontent":Ljava/lang/StringBuffer;
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .local v15, "appName":Ljava/lang/StringBuffer;
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 444
    .local v16, "appinstallpath":Ljava/lang/StringBuffer;
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .local v17, "appversion":Ljava/lang/StringBuffer;
    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    .local v24, "sha1":Ljava/lang/StringBuffer;
    new-instance v23, Ljava/lang/StringBuffer;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    .local v23, "pkgName":Ljava/lang/StringBuffer;
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    .line 447
    .local v18, "certmd5":Ljava/lang/StringBuffer;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/lenovo/safecenter/support/SafeLog;

    .line 448
    .local v21, "log":Lcom/lenovo/safecenter/support/SafeLog;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/lenovo/safecenter/support/SafeLog;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 449
    .local v22, "packageName":Ljava/lang/String;
    if-nez v22, :cond_0

    .line 450
    const-string v2, "N/A"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    const-string v2, "N/A"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 452
    const-string v2, "N/A"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    const-string v2, "N/A"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 454
    const-string v2, "N/A"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 463
    :goto_1
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SafeLog;->type:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 464
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lcom/lenovo/safecenter/utils/MyUtils;->formatAllTime(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 465
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SafeLog;->number:Ljava/lang/String;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/MyUtils;->replaceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 466
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SafeLog;->content:Ljava/lang/String;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/MyUtils;->replaceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 467
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/lenovo/safecenter/support/SafeLog;->appName:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 456
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->h:Lcom/lenovo/safecenter/database/AppDatabase;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/lenovo/safecenter/database/AppDatabase;->getAppUploadinfo(Ljava/lang/String;)Lcom/lenovo/safecenter/support/AppUploadInfo;

    move-result-object v14

    .line 457
    .local v14, "app":Lcom/lenovo/safecenter/support/AppUploadInfo;
    invoke-virtual {v14}, Lcom/lenovo/safecenter/support/AppUploadInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    invoke-virtual {v14}, Lcom/lenovo/safecenter/support/AppUploadInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 459
    invoke-virtual {v14}, Lcom/lenovo/safecenter/support/AppUploadInfo;->getPackagesha1()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    invoke-virtual {v14}, Lcom/lenovo/safecenter/support/AppUploadInfo;->getCertmd5()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 461
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 471
    .end local v14    # "app":Lcom/lenovo/safecenter/support/AppUploadInfo;
    .end local v21    # "log":Lcom/lenovo/safecenter/support/SafeLog;
    .end local v22    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-static/range {v28 .. v28}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v26 .. v26}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v27 .. v27}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v15}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v16 .. v16}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v17 .. v17}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v19 .. v19}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v24 .. v24}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v23 .. v23}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v18 .. v18}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "0"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v13}, Lcom/lenovo/safecenter/support/HttpUtils;->reportstealfeesoft(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    .line 474
    .local v25, "state":I
    return v25
.end method

.method protected setAdapter()V
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 506
    :goto_0
    new-instance v0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$CheckLogAdapter;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$CheckLogAdapter;-><init>(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->i:Landroid/widget/BaseAdapter;

    .line 507
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->i:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 508
    return-void

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
