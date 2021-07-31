.class public Lcom/lenovo/safecenter/Laboratory/GuestModeSet;
.super Landroid/app/Activity;
.source "GuestModeSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/Laboratory/GuestModeSet$b;,
        Lcom/lenovo/safecenter/Laboratory/GuestModeSet$a;
    }
.end annotation


# static fields
.field public static final CHANGE_BACKGROUND:I = 0x7

.field public static final CLEAN_HISTORY:I = 0x3

.field public static final DISABLE_OPERATE_SUCCESS:I = 0x5

.field public static final ENABLE_OPERATE_SUCCESS:I = 0x4

.field public static final INIT_DATA:I = 0x0

.field public static final ITEM_OPERATE_FAILED:I = 0x6

.field public static final OPERATE_FAILED:I = 0x2

.field public static final OPERATE_SUCCESS:I = 0x1


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/lenovo/safecenter/database/AppDatabase;

.field private d:Landroid/content/SharedPreferences;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/lenovo/safecenter/support/AppInfo;

.field private j:Landroid/widget/ListView;

.field private k:Landroid/widget/ProgressBar;

.field private l:Landroid/app/ProgressDialog;

.field private m:Landroid/widget/CheckBox;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/content/ContentResolver;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Landroid/os/Handler;

.field private w:Landroid/view/View$OnClickListener;

.field private x:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    const/16 v0, 0xa

    iput v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->a:I

    .line 82
    new-instance v0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$1;-><init>(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->v:Landroid/os/Handler;

    .line 243
    new-instance v0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$8;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$8;-><init>(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->w:Landroid/view/View$OnClickListener;

    .line 296
    new-instance v0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$9;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$9;-><init>(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->x:Landroid/widget/AdapterView$OnItemClickListener;

    .line 461
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->k:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;Lcom/lenovo/safecenter/support/AppInfo;)Lcom/lenovo/safecenter/support/AppInfo;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/GuestModeSet;
    .param p1, "x1"    # Lcom/lenovo/safecenter/support/AppInfo;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->i:Lcom/lenovo/safecenter/support/AppInfo;

    return-object p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 549
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->l:Landroid/app/ProgressDialog;

    .line 550
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->l:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$5;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$5;-><init>(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 555
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->l:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 556
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->l:Landroid/app/ProgressDialog;

    const v1, 0x7f0d0160

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 557
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->l:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 558
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/GuestModeSet;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->t:Z

    return p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->j:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->l:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->t:Z

    return v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->n:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->m:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Lcom/lenovo/safecenter/support/AppInfo;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->i:Lcom/lenovo/safecenter/support/AppInfo;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Lcom/lenovo/safecenter/database/AppDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->c:Lcom/lenovo/safecenter/database/AppDatabase;

    return-object v0
.end method

.method static synthetic j(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    .prologue
    .line 51
    iget v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->b:I

    return v0
.end method

.method static synthetic k(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    .prologue
    .line 51
    iget v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->b:I

    return v0
.end method

.method static synthetic l(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic m(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    .prologue
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->g:Ljava/util/ArrayList;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->h:Ljava/util/List;

    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->c:Lcom/lenovo/safecenter/database/AppDatabase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/database/AppDatabase;->queryAllHideApps(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->e:Ljava/util/List;

    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->b:I

    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->e:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/lenovo/safecenter/test/SafeCenter;->getLauncherApp(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->f:Ljava/util/List;

    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic o(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->v:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic p(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->a()V

    return-void
.end method

.method static synthetic q(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->r:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic r(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->s:Z

    return v0
.end method

.method static synthetic s(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->u:Z

    return v0
.end method

.method static synthetic t(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    .prologue
    .line 51
    iget v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->b:I

    return v0
.end method

.method static synthetic u(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    .prologue
    .line 51
    iget v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->a:I

    return v0
.end method

.method static synthetic v(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)V
    .locals 6
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 51
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->i:Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v5, v5, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->i:Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v4, v4, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00f2

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->i:Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v2, v2, Lcom/lenovo/safecenter/support/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0d018b

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0048

    new-instance v2, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$12;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$12;-><init>(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0049

    new-instance v2, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$11;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$11;-><init>(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->c:Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->i:Lcom/lenovo/safecenter/support/AppInfo;

    invoke-virtual {v0, v3, v1}, Lcom/lenovo/safecenter/database/AppDatabase;->insertApp(Lcom/lenovo/safecenter/support/AppInfo;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->a()V

    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    new-instance v0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$10;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$10;-><init>(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$10;->start()V

    goto :goto_1
.end method

.method static synthetic w(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    .prologue
    .line 51
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00f2

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d01fa

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$13;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$13;-><init>(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-void
.end method

.method static synthetic x(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->l:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 168
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 169
    const v0, 0x7f03007c

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->setContentView(I)V

    .line 171
    invoke-static {}, Lcom/lenovo/safecenter/utils/WflUtils;->isRoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->u:Z

    .line 172
    new-instance v0, Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->c:Lcom/lenovo/safecenter/database/AppDatabase;

    .line 173
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->d:Landroid/content/SharedPreferences;

    const v0, 0x7f090590

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0d0025

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0905ae

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0905ad

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v3, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$7;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$7;-><init>(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090052

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->p:Landroid/widget/TextView;

    const v0, 0x7f090053

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->q:Landroid/widget/TextView;

    const v0, 0x7f0902e7

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->o:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->u:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const v0, 0x7f0902e8

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->k:Landroid/widget/ProgressBar;

    const v0, 0x7f0902e9

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->j:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->j:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->x:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->r:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->r:Landroid/content/ContentResolver;

    const-string v3, "child_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->s:Z

    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->r:Landroid/content/ContentResolver;

    const-string v3, "guest_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->t:Z

    const v0, 0x7f0902e5

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->n:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->t:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->n:Landroid/widget/Button;

    const v3, 0x7f0200df

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_3
    iget-boolean v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->u:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lenovo/safecenter/utils/Const;->mDefaultPreference:Landroid/content/SharedPreferences;

    const-string v3, "inject_switch"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->n:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->w:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 175
    new-instance v0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$6;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$6;-><init>(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$6;->start()V

    .line 183
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->n:Landroid/widget/Button;

    const v3, 0x7f0200de

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_3
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 187
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 188
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 189
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 194
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 195
    return-void
.end method

.method public showRebootDialog()V
    .locals 6

    .prologue
    const v5, 0x7f0d01fd

    const v2, 0x7f0d003a

    const v4, 0x7f0d01fc

    const v3, 0x7f0d0025

    .line 487
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 488
    .local v0, "builder":Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    const v1, 0x7f0d00f2

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 489
    iget-boolean v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->t:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0d003b

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0d01fe

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 500
    :goto_0
    const v1, 0x7f0d0048

    new-instance v2, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;-><init>(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 535
    const v1, 0x7f0d0049

    new-instance v2, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$3;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$3;-><init>(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 540
    new-instance v1, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$4;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$4;-><init>(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 545
    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 546
    return-void

    .line 492
    :cond_0
    iget-boolean v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->s:Z

    if-eqz v1, :cond_1

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0d01ff

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    goto :goto_0

    .line 496
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    goto/16 :goto_0
.end method
