.class public Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;
.super Landroid/app/Activity;
.source "ForbiddenApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$b;,
        Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$a;
    }
.end annotation


# static fields
.field public static final CHANGE_BACKGROUND:I = 0x7

.field public static final CHANGE_PLAN_MODE:I = 0x3

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

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/ListView;

.field private p:Landroid/widget/CheckBox;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/ProgressBar;

.field private s:Landroid/app/ProgressDialog;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Landroid/os/Handler;

.field private y:Landroid/widget/AdapterView$OnItemClickListener;

.field private z:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    const/16 v0, 0xa

    iput v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->a:I

    .line 80
    new-instance v0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$1;-><init>(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->x:Landroid/os/Handler;

    .line 281
    new-instance v0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;-><init>(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->y:Landroid/widget/AdapterView$OnItemClickListener;

    .line 418
    new-instance v0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$17;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$17;-><init>(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->z:Landroid/view/View$OnClickListener;

    .line 570
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->r:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;Lcom/lenovo/safecenter/support/AppInfo;)Lcom/lenovo/safecenter/support/AppInfo;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;
    .param p1, "x1"    # Lcom/lenovo/safecenter/support/AppInfo;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->i:Lcom/lenovo/safecenter/support/AppInfo;

    return-object p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 435
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->s:Landroid/app/ProgressDialog;

    .line 436
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->s:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$2;-><init>(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 441
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->s:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 442
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->s:Landroid/app/ProgressDialog;

    const v1, 0x7f0d0160

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->s:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 444
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->t:Z

    return p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->u:Z

    return p1
.end method

.method static synthetic c(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->o:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;Z)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->u:Z

    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "plan_mode_preference"

    iget-boolean v2, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->u:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-boolean v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->p:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    invoke-static {p0, p1}, Lcom/lenovo/safecenter/test/SafeCenter;->setFlyModeEnable(Landroid/content/Context;Z)V

    new-instance v0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$16;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$16;-><init>(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$16;->start()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->s:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->t:Z

    return v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->q:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->p:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->u:Z

    return v0
.end method

.method static synthetic j(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Lcom/lenovo/safecenter/support/AppInfo;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->i:Lcom/lenovo/safecenter/support/AppInfo;

    return-object v0
.end method

.method static synthetic k(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Lcom/lenovo/safecenter/database/AppDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->c:Lcom/lenovo/safecenter/database/AppDatabase;

    return-object v0
.end method

.method static synthetic l(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    .prologue
    .line 50
    iget v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->b:I

    return v0
.end method

.method static synthetic m(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    .prologue
    .line 50
    iget v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->b:I

    return v0
.end method

.method static synthetic n(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic o(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic p(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    .prologue
    .line 50
    new-instance v0, Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->c:Lcom/lenovo/safecenter/database/AppDatabase;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->g:Ljava/util/ArrayList;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->h:Ljava/util/List;

    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->c:Lcom/lenovo/safecenter/database/AppDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/database/AppDatabase;->queryAllHideApps(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->e:Ljava/util/List;

    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->b:I

    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->e:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/lenovo/safecenter/test/SafeCenter;->getLauncherApp(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->f:Ljava/util/List;

    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic q(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->x:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic r(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->w:Z

    return v0
.end method

.method static synthetic s(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    .prologue
    .line 50
    iget v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->b:I

    return v0
.end method

.method static synthetic t(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    .prologue
    .line 50
    iget v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->a:I

    return v0
.end method

.method static synthetic u(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V
    .locals 6
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->h:Ljava/util/List;

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

    iget-object v5, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->i:Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v5, v5, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->i:Lcom/lenovo/safecenter/support/AppInfo;

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

    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->i:Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v2, v2, Lcom/lenovo/safecenter/support/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0d018b

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0048

    new-instance v2, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$5;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$5;-><init>(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0049

    new-instance v2, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$4;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$4;-><init>(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V

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
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->c:Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->i:Lcom/lenovo/safecenter/support/AppInfo;

    invoke-virtual {v0, v3, v2}, Lcom/lenovo/safecenter/database/AppDatabase;->insertApp(Lcom/lenovo/safecenter/support/AppInfo;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->a()V

    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->o:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    new-instance v0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$3;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$3;-><init>(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$3;->start()V

    goto :goto_1
.end method

.method static synthetic v(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    .prologue
    .line 50
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00f2

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d01fa

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$6;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$6;-><init>(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-void
.end method

.method static synthetic w(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->a()V

    return-void
.end method

.method static synthetic x(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->t:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->a()V

    new-instance v0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$13;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$13;-><init>(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$13;->start()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->a()V

    iget-boolean v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->v:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$14;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$14;-><init>(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$14;->start()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$15;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$15;-><init>(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$15;->start()V

    goto :goto_0
.end method

.method static synthetic y(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->s:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f0d0023

    const/4 v2, 0x0

    .line 180
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 181
    const v0, 0x7f030060

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->setContentView(I)V

    .line 183
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->d:Landroid/content/SharedPreferences;

    .line 184
    invoke-static {}, Lcom/lenovo/safecenter/utils/WflUtils;->isRoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->w:Z

    .line 185
    const v0, 0x7f090590

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0905ae

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0905ad

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$11;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$11;-><init>(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090052

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->m:Landroid/widget/TextView;

    const v0, 0x7f090053

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->n:Landroid/widget/TextView;

    const v0, 0x7f090288

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->l:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->w:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const v0, 0x7f090289

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->r:Landroid/widget/ProgressBar;

    const v0, 0x7f09028a

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->o:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->o:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->y:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f090286

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->p:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->p:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->z:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->w:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->p:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_0
    const v0, 0x7f0900ff

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f090100

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->k:Landroid/widget/TextView;

    const v0, 0x7f0900fd

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->q:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->w:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->q:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->z:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->r:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 188
    new-instance v0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$10;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$10;-><init>(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$10;->start()V

    .line 194
    return-void

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 220
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 221
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 222
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 198
    invoke-virtual {p0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "child_mode_on"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->t:Z

    .line 199
    invoke-virtual {p0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "guest_mode_on"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->v:Z

    .line 200
    iget-boolean v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->t:Z

    if-eqz v1, :cond_2

    .line 201
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->k:Landroid/widget/TextView;

    const v4, 0x7f0d003c

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 202
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->q:Landroid/widget/ImageView;

    const v4, 0x7f0200df

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    :goto_2
    invoke-virtual {p0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "airplane_mode_on"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v0, v2

    .line 210
    .local v0, "airplan":Z
    :goto_3
    iput-boolean v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->u:Z

    .line 211
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "plan_mode_preference"

    iget-boolean v3, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->u:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 214
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->p:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->u:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 215
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 216
    return-void

    .end local v0    # "airplan":Z
    :cond_0
    move v1, v3

    .line 198
    goto :goto_0

    :cond_1
    move v1, v3

    .line 199
    goto :goto_1

    .line 205
    :cond_2
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->k:Landroid/widget/TextView;

    const v4, 0x7f0d003d

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 206
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->q:Landroid/widget/ImageView;

    const v4, 0x7f0200de

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_3
    move v0, v3

    .line 209
    goto :goto_3
.end method

.method public showRebootDialog()V
    .locals 3

    .prologue
    .line 596
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00f2

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0200

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0048

    new-instance v2, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9;-><init>(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0049

    new-instance v2, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$8;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$8;-><init>(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$7;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$7;-><init>(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 636
    return-void
.end method
