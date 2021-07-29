.class public Lcom/lenovo/safecenter/AppsManager/MessageBlackList;
.super Landroid/app/Activity;
.source "MessageBlackList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/pm/PackageManager;

.field private b:Lcom/lenovo/safecenter/database/AppDatabase;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ProgressBar;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ExpandableListView;

.field private o:Landroid/widget/ListView;

.field private p:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;

.field private q:Ljava/lang/String;

.field private r:I

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Landroid/content/Context;

.field private w:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->b:Lcom/lenovo/safecenter/database/AppDatabase;

    .line 62
    new-instance v0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$1;-><init>(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->w:Landroid/os/Handler;

    .line 351
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    .prologue
    .line 41
    iget v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->r:I

    return v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/MessageBlackList;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->s:I

    return p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;Lcom/lenovo/safecenter/support/AppInfo;I)V
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/MessageBlackList;
    .param p1, "x1"    # Lcom/lenovo/safecenter/support/AppInfo;
    .param p2, "x2"    # I

    .prologue
    .line 41
    iput p2, p1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->b:Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->q:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/database/AppDatabase;->updateApp(Lcom/lenovo/safecenter/support/AppInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/MessageBlackList;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->u:Z

    return p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    .prologue
    .line 41
    iget v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->s:I

    return v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->v:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->u:Z

    return v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    .prologue
    .line 41
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00f2

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setIcon(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d03e0

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setColorPositiveButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setColorNegativeButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$2;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$2;-><init>(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    new-instance v2, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$12;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$12;-><init>(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-void
.end method

.method static synthetic i(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->w:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic k(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Lcom/lenovo/safecenter/database/AppDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->b:Lcom/lenovo/safecenter/database/AppDatabase;

    return-object v0
.end method

.method static synthetic l(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->p:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;

    return-object v0
.end method

.method static synthetic m(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/ExpandableListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->n:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic n(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    .prologue
    .line 41
    iget v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->s:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->s:I

    return v0
.end method

.method static synthetic o(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->i:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic p(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic q(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)V
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->t:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;

    invoke-direct {v0, p0, p0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;-><init>(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->p:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->n:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->p:Lcom/lenovo/safecenter/AppsManager/MessageBlackList$a;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/lenovo/safecenter/adapter/PermAdapter;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->c:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/safecenter/adapter/PermAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->o:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method static synthetic r(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->t:Z

    return v0
.end method

.method static synthetic s(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic t(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic u(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic v(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic w(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    .prologue
    .line 41
    const-string v0, "sendmessage"

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->b:Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->q:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->t:Z

    invoke-virtual {v0, p0, v1, v2}, Lcom/lenovo/safecenter/database/AppDatabase;->loadApps(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->r:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->r:I

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/AppInfo;

    iget v0, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->s:I

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic x(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    .prologue
    .line 41
    iget v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->s:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->s:I

    return v0
.end method

.method static synthetic y(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->a:Landroid/content/pm/PackageManager;

    return-object v0
.end method


# virtual methods
.method public initApps()V
    .locals 3

    .prologue
    .line 242
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->i:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 243
    new-instance v0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$10;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$10;-><init>(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)V

    .line 266
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$11;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$11;-><init>(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;Landroid/os/Handler;)V

    invoke-virtual {v1}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$11;->start()V

    .line 274
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v0, 0x7f030102

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->setContentView(I)V

    .line 100
    iput-object p0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->v:Landroid/content/Context;

    .line 101
    invoke-static {}, Lcom/lenovo/safecenter/utils/WflUtils;->isRoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->t:Z

    .line 102
    const v0, 0x7f090590

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->d:Landroid/widget/TextView;

    const v1, 0x7f0d007c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0905ad

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$5;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$5;-><init>(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090528

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->f:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->t:Z

    if-eqz v0, :cond_0

    const v0, 0x7f09052a

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f09052b

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->n:Landroid/widget/ExpandableListView;

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->n:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->setOnclick()V

    const v0, 0x7f090275

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->e:Landroid/widget/TextView;

    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->i:Landroid/widget/ProgressBar;

    const v0, 0x7f090525

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->j:Landroid/widget/TextView;

    const v0, 0x7f090527

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->k:Landroid/widget/TextView;

    const v0, 0x7f090526

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->l:Landroid/widget/TextView;

    const v0, 0x7f090524

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->m:Landroid/widget/TextView;

    const v0, 0x7f090052

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->g:Landroid/widget/TextView;

    const v0, 0x7f090053

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->j:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$6;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$6;-><init>(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->k:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$7;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$7;-><init>(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->l:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$8;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$8;-><init>(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->m:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$9;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$9;-><init>(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->a:Landroid/content/pm/PackageManager;

    .line 104
    new-instance v0, Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->b:Lcom/lenovo/safecenter/database/AppDatabase;

    .line 105
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->initApps()V

    .line 106
    return-void

    .line 102
    :cond_0
    const v0, 0x7f090529

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f090278

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->o:Landroid/widget/ListView;

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 223
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 224
    iget-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->t:Z

    if-eqz v0, :cond_0

    .line 225
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 228
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lenovo.safecenter.refreshAppsManager"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->sendBroadcast(Landroid/content/Intent;)V

    .line 229
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 230
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 218
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 220
    return-void
.end method

.method public setOnclick()V
    .locals 2

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->t:Z

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->o:Landroid/widget/ListView;

    new-instance v1, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$3;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$3;-><init>(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 349
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->n:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$4;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$4;-><init>(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    goto :goto_0
.end method
