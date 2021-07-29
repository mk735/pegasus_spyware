.class public Lcom/lenovo/install/InstallActivity;
.super Landroid/app/Activity;
.source "InstallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/RelativeLayout;

.field private C:Landroid/widget/ImageView;

.field private D:Landroid/widget/ImageView;

.field private E:[Landroid/widget/RelativeLayout;

.field private F:[Landroid/widget/LinearLayout;

.field private G:[Landroid/widget/ImageView;

.field private H:[Landroid/widget/TextView;

.field private I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private J:Landroid/view/View;

.field private K:Landroid/widget/LinearLayout;

.field private L:Landroid/widget/LinearLayout;

.field private M:Landroid/widget/LinearLayout;

.field private N:Landroid/widget/TextView;

.field private O:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

.field private P:I

.field private Q:Z

.field private R:Z

.field private S:Ljava/lang/String;

.field private T:Landroid/widget/FrameLayout;

.field private U:Landroid/widget/ImageView;

.field private V:Z

.field private W:Z

.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field private Z:Landroid/os/Handler;

.field a:Landroid/content/pm/PackageManager;

.field private aa:I

.field private ab:Landroid/widget/PopupWindow;

.field b:Landroid/content/pm/PackageParser$Package;

.field c:Lcom/lenovo/install/PackageUtil$AppSnippet;

.field d:Z

.field e:Z

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private m:Landroid/content/SharedPreferences;

.field private n:Landroid/widget/PopupWindow;

.field private o:Landroid/content/Context;

.field private p:Lcom/lenovo/safecenter/database/AppDatabase;

.field private q:Ljava/lang/String;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    iput v1, p0, Lcom/lenovo/install/InstallActivity;->f:I

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/install/InstallActivity;->g:I

    .line 68
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/install/InstallActivity;->h:I

    .line 69
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/install/InstallActivity;->i:I

    .line 70
    const/4 v0, 0x4

    iput v0, p0, Lcom/lenovo/install/InstallActivity;->j:I

    .line 71
    const/4 v0, 0x5

    iput v0, p0, Lcom/lenovo/install/InstallActivity;->k:I

    .line 72
    const/4 v0, 0x6

    iput v0, p0, Lcom/lenovo/install/InstallActivity;->l:I

    .line 79
    iput-boolean v1, p0, Lcom/lenovo/install/InstallActivity;->d:Z

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/install/InstallActivity;->I:Ljava/util/List;

    .line 119
    new-instance v0, Lcom/lenovo/install/InstallActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/install/InstallActivity$1;-><init>(Lcom/lenovo/install/InstallActivity;)V

    iput-object v0, p0, Lcom/lenovo/install/InstallActivity;->Z:Landroid/os/Handler;

    .line 571
    iput v1, p0, Lcom/lenovo/install/InstallActivity;->aa:I

    .line 871
    iput-boolean v1, p0, Lcom/lenovo/install/InstallActivity;->e:Z

    return-void
.end method

.method static synthetic A(Lcom/lenovo/install/InstallActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;

    .prologue
    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/install/InstallActivity;->W:Z

    return v0
.end method

.method static synthetic B(Lcom/lenovo/install/InstallActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/lenovo/install/InstallActivity;->Q:Z

    return v0
.end method

.method static synthetic C(Lcom/lenovo/install/InstallActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->n:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic D(Lcom/lenovo/install/InstallActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/install/InstallActivity;->n:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic E(Lcom/lenovo/install/InstallActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/install/InstallActivity;->ab:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic F(Lcom/lenovo/install/InstallActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->C:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/install/InstallActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->U:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/install/InstallActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lenovo/install/InstallActivity;->S:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/install/InstallActivity;IIII)V
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 65
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity;->E:[Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p2}, Lcom/lenovo/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v1, p1

    iget-object v1, p0, Lcom/lenovo/install/InstallActivity;->F:[Landroid/widget/LinearLayout;

    invoke-virtual {p0, p3}, Lcom/lenovo/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, p1

    iget-object v1, p0, Lcom/lenovo/install/InstallActivity;->G:[Landroid/widget/ImageView;

    invoke-virtual {p0, p4}, Lcom/lenovo/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, p1

    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->E:[Landroid/widget/RelativeLayout;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->F:[Landroid/widget/LinearLayout;

    aget-object v0, v0, p1

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/lenovo/install/InstallActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/lenovo/install/InstallActivity;->V:Z

    return p1
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 2
    .param p0, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.READ_SMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WRITE_SMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.android.browser.permission.READ_HISTORY_BOOKMARKS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .param p0, "x1"    # Ljava/util/List;
    .param p1, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 65
    move v1, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v0, v0, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/lenovo/install/InstallActivity;[Landroid/widget/ImageView;)[Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;
    .param p1, "x1"    # [Landroid/widget/ImageView;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lenovo/install/InstallActivity;->G:[Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/install/InstallActivity;[Landroid/widget/LinearLayout;)[Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;
    .param p1, "x1"    # [Landroid/widget/LinearLayout;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lenovo/install/InstallActivity;->F:[Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/install/InstallActivity;[Landroid/widget/RelativeLayout;)[Landroid/widget/RelativeLayout;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;
    .param p1, "x1"    # [Landroid/widget/RelativeLayout;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lenovo/install/InstallActivity;->E:[Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/install/InstallActivity;[Landroid/widget/TextView;)[Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;
    .param p1, "x1"    # [Landroid/widget/TextView;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lenovo/install/InstallActivity;->H:[Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic b(Lcom/lenovo/install/InstallActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->T:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/install/InstallActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lenovo/install/InstallActivity;->X:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Ljava/lang/String;)Z
    .locals 2
    .param p0, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 851
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300d2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 852
    .local v1, "view1":Landroid/view/View;
    const v2, 0x7f09047b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 854
    .local v0, "txtnumber":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 856
    return-object v1
.end method

.method static synthetic c(Lcom/lenovo/install/InstallActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->L:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/install/InstallActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lenovo/install/InstallActivity;->Y:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/lenovo/install/InstallActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->t:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/install/InstallActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->v:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/install/InstallActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->J:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/install/InstallActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->B:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/install/InstallActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->x:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/install/InstallActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->y:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->I:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lcom/lenovo/install/InstallActivity;)[Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->G:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic l(Lcom/lenovo/install/InstallActivity;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;

    .prologue
    .line 65
    const-string v1, ""

    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PermissionInfo;

    iget-object v3, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const-string v4, "android.permission.READ_CONTACTS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f0d0784

    invoke-virtual {p0, v3}, Lcom/lenovo/install/InstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v3, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const-string v4, "android.permission.READ_SMS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f0d0785

    invoke-virtual {p0, v3}, Lcom/lenovo/install/InstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-object v3, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const-string v4, "android.permission.READ_CALENDAR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f0d0786

    invoke-virtual {p0, v3}, Lcom/lenovo/install/InstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const-string v3, "com.android.browser.permission.READ_HISTORY_BOOKMARKS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0d0787

    invoke-virtual {p0, v1}, Lcom/lenovo/install/InstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method static synthetic m(Lcom/lenovo/install/InstallActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->S:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/lenovo/install/InstallActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->z:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic o(Lcom/lenovo/install/InstallActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;

    .prologue
    .line 65
    iget v0, p0, Lcom/lenovo/install/InstallActivity;->P:I

    return v0
.end method

.method static synthetic p(Lcom/lenovo/install/InstallActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->m:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic q(Lcom/lenovo/install/InstallActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/lenovo/install/InstallActivity;->R:Z

    return v0
.end method

.method static synthetic r(Lcom/lenovo/install/InstallActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->A:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic s(Lcom/lenovo/install/InstallActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->w:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic t(Lcom/lenovo/install/InstallActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;

    .prologue
    const/16 v2, 0x8

    .line 65
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->B:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f090372

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->K:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PermissionInfo;

    iget-object v2, p0, Lcom/lenovo/install/InstallActivity;->K:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/lenovo/install/InstallActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lenovo/install/InstallActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/PermissionInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Lcom/lenovo/install/InstallActivity;->c(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->B:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->K:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->K:Landroid/widget/LinearLayout;

    const v1, 0x7f0d0796

    invoke-virtual {p0, v1}, Lcom/lenovo/install/InstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lenovo/install/InstallActivity;->c(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method static synthetic u(Lcom/lenovo/install/InstallActivity;)Lcom/tencent/tmsecure/module/qscanner/QScannerManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->O:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    return-object v0
.end method

.method static synthetic v(Lcom/lenovo/install/InstallActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->Z:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic w(Lcom/lenovo/install/InstallActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic x(Lcom/lenovo/install/InstallActivity;)Lcom/lenovo/safecenter/database/AppDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->p:Lcom/lenovo/safecenter/database/AppDatabase;

    return-object v0
.end method

.method static synthetic y(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->r:Ljava/util/List;

    return-object v0
.end method

.method static synthetic z(Lcom/lenovo/install/InstallActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallActivity;

    .prologue
    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/install/InstallActivity;->Q:Z

    return v0
.end method


# virtual methods
.method public changePopState(Ljava/lang/String;)V
    .locals 1
    .param p1, "appType"    # Ljava/lang/String;

    .prologue
    .line 861
    iget-boolean v0, p0, Lcom/lenovo/install/InstallActivity;->d:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lenovo/install/InstallActivity;->d:Z

    .line 862
    iget-boolean v0, p0, Lcom/lenovo/install/InstallActivity;->d:Z

    if-eqz v0, :cond_2

    .line 863
    invoke-virtual {p0, p1}, Lcom/lenovo/install/InstallActivity;->popAwindow(Ljava/lang/String;)V

    .line 869
    :cond_0
    :goto_1
    return-void

    .line 861
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 865
    :cond_2
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->n:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_1
.end method

.method public initAfterScan()V
    .locals 6

    .prologue
    const/4 v5, 0x7

    const/4 v1, 0x0

    .line 339
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/install/InstallActivity;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/lenovo/install/InstallActivity$6;

    invoke-direct {v0, p0, v2}, Lcom/lenovo/install/InstallActivity$6;-><init>(Lcom/lenovo/install/InstallActivity;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/lenovo/install/InstallActivity$6;->start()V

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    :cond_1
    sget-object v0, Lcom/lenovo/safecenter/support/WhiteAppsList;->md5s:[Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/install/InstallActivity;->X:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/support/WhiteAppsList;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 349
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->Z:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/install/InstallActivity;->Z:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 363
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 339
    goto :goto_0

    .line 351
    :cond_3
    sget-object v0, Lcom/lenovo/safecenter/utils/Const;->LENOVO_APKS:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 352
    const-string v0, "lenovoapks"

    invoke-static {p0, v0}, Lcom/lenovo/safecenter/support/WhiteAppsList;->getWhiteList(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/utils/Const;->LENOVO_APKS:Ljava/lang/String;

    .line 354
    :cond_4
    sget-object v0, Lcom/lenovo/safecenter/utils/Const;->LENOVO_APKS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/install/InstallActivity;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 355
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->Z:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/install/InstallActivity;->Z:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 356
    :cond_5
    iget-boolean v0, p0, Lcom/lenovo/install/InstallActivity;->R:Z

    if-eqz v0, :cond_6

    .line 357
    new-instance v0, Lcom/lenovo/install/InstallActivity$5;

    invoke-direct {v0, p0}, Lcom/lenovo/install/InstallActivity$5;-><init>(Lcom/lenovo/install/InstallActivity;)V

    invoke-virtual {v0}, Lcom/lenovo/install/InstallActivity$5;->start()V

    goto :goto_1

    .line 359
    :cond_6
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->Z:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/install/InstallActivity;->Z:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v9, 0x7f09036b

    const v5, 0x7f09036a

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 574
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 682
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/lenovo/install/InstallActivity;->I:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 683
    iget-object v4, p0, Lcom/lenovo/install/InstallActivity;->F:[Landroid/widget/LinearLayout;

    aget-object v4, v4, v0

    if-ne p1, v4, :cond_0

    .line 684
    iput v0, p0, Lcom/lenovo/install/InstallActivity;->P:I

    .line 685
    iget-object v4, p0, Lcom/lenovo/install/InstallActivity;->I:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v2, v4, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    .line 686
    .local v2, "type":Ljava/lang/String;
    const-string v4, "sendmessage"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 687
    invoke-virtual {p0}, Lcom/lenovo/install/InstallActivity;->showPopupMenu()V

    .line 682
    .end local v2    # "type":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 576
    .end local v0    # "i":I
    :sswitch_0
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/lenovo/install/ShowPkgInfoActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "uri"

    invoke-virtual {p0}, Lcom/lenovo/install/InstallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lenovo/install/InstallActivity;->startActivity(Landroid/content/Intent;)V

    .line 702
    :cond_1
    :goto_2
    return-void

    .line 583
    :sswitch_1
    iget-object v4, p0, Lcom/lenovo/install/InstallActivity;->ab:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 584
    iget-object v4, p0, Lcom/lenovo/install/InstallActivity;->I:Ljava/util/List;

    iget v5, p0, Lcom/lenovo/install/InstallActivity;->P:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/support/AppInfo;

    iput v7, v4, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    .line 585
    iget-object v4, p0, Lcom/lenovo/install/InstallActivity;->Z:Landroid/os/Handler;

    iget-object v5, p0, Lcom/lenovo/install/InstallActivity;->Z:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 590
    :sswitch_2
    iget-object v4, p0, Lcom/lenovo/install/InstallActivity;->ab:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 591
    iget-object v4, p0, Lcom/lenovo/install/InstallActivity;->I:Ljava/util/List;

    iget v5, p0, Lcom/lenovo/install/InstallActivity;->P:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/support/AppInfo;

    const/4 v5, 0x2

    iput v5, v4, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    .line 592
    iget-object v4, p0, Lcom/lenovo/install/InstallActivity;->Z:Landroid/os/Handler;

    iget-object v5, p0, Lcom/lenovo/install/InstallActivity;->Z:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 597
    :sswitch_3
    iget-object v4, p0, Lcom/lenovo/install/InstallActivity;->ab:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 598
    iget-object v4, p0, Lcom/lenovo/install/InstallActivity;->I:Ljava/util/List;

    iget v5, p0, Lcom/lenovo/install/InstallActivity;->P:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/support/AppInfo;

    iput v6, v4, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    .line 599
    iget-object v4, p0, Lcom/lenovo/install/InstallActivity;->Z:Landroid/os/Handler;

    iget-object v5, p0, Lcom/lenovo/install/InstallActivity;->Z:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 603
    :sswitch_4
    invoke-virtual {p0}, Lcom/lenovo/install/InstallActivity;->finish()V

    goto :goto_2

    .line 620
    :sswitch_5
    iget-boolean v4, p0, Lcom/lenovo/install/InstallActivity;->R:Z

    if-eqz v4, :cond_4

    .line 621
    iget-object v4, p0, Lcom/lenovo/install/InstallActivity;->Y:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/lenovo/install/InstallActivity;->Y:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/install/InstallActivity;->X:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 624
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/lenovo/install/InstallErrorActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "uri"

    invoke-virtual {p0}, Lcom/lenovo/install/InstallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lenovo/install/InstallActivity;->startActivity(Landroid/content/Intent;)V

    .line 626
    invoke-virtual {p0}, Lcom/lenovo/install/InstallActivity;->finish()V

    goto/16 :goto_2

    .line 630
    :cond_2
    iget-object v4, p0, Lcom/lenovo/install/InstallActivity;->q:Ljava/lang/String;

    const-string v5, "com.lenovo.safecenter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 632
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lenovo/install/InstallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 634
    .local v3, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 635
    .local v1, "it":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 636
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 637
    const-string v4, "com.android.packageinstaller"

    const-string v5, "com.android.packageinstaller.PackageInstallerActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    invoke-virtual {p0, v1}, Lcom/lenovo/install/InstallActivity;->startActivity(Landroid/content/Intent;)V

    .line 640
    invoke-virtual {p0}, Lcom/lenovo/install/InstallActivity;->finish()V

    goto/16 :goto_2

    .line 643
    .end local v1    # "it":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_3
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/lenovo/install/InstallProgress;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "uri"

    invoke-virtual {p0}, Lcom/lenovo/install/InstallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "has_virus"

    iget-boolean v6, p0, Lcom/lenovo/install/InstallActivity;->V:Z

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "has_boot"

    iget-boolean v6, p0, Lcom/lenovo/install/InstallActivity;->W:Z

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lenovo/install/InstallActivity;->startActivity(Landroid/content/Intent;)V

    .line 645
    invoke-virtual {p0}, Lcom/lenovo/install/InstallActivity;->finish()V

    goto/16 :goto_2

    .line 651
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lenovo/install/InstallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 653
    .restart local v3    # "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 654
    .restart local v1    # "it":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 655
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 656
    const-string v4, "com.android.packageinstaller"

    const-string v5, "com.android.packageinstaller.PackageInstallerActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 658
    invoke-virtual {p0, v1}, Lcom/lenovo/install/InstallActivity;->startActivity(Landroid/content/Intent;)V

    .line 659
    invoke-virtual {p0}, Lcom/lenovo/install/InstallActivity;->finish()V

    goto/16 :goto_2

    .line 663
    .end local v1    # "it":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    :sswitch_6
    iget v4, p0, Lcom/lenovo/install/InstallActivity;->aa:I

    if-nez v4, :cond_5

    .line 664
    iput v6, p0, Lcom/lenovo/install/InstallActivity;->aa:I

    .line 665
    invoke-virtual {p0, v5}, Lcom/lenovo/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 666
    invoke-virtual {p0, v9}, Lcom/lenovo/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f02005a

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 670
    :cond_5
    iput v7, p0, Lcom/lenovo/install/InstallActivity;->aa:I

    .line 671
    invoke-virtual {p0, v5}, Lcom/lenovo/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 672
    invoke-virtual {p0, v9}, Lcom/lenovo/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f020059

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 689
    .restart local v0    # "i":I
    .restart local v2    # "type":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/lenovo/install/InstallActivity;->I:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/support/AppInfo;

    iget v4, v4, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-ne v4, v6, :cond_7

    .line 690
    iget-object v4, p0, Lcom/lenovo/install/InstallActivity;->I:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/support/AppInfo;

    iput v7, v4, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    .line 695
    :goto_3
    iget-object v4, p0, Lcom/lenovo/install/InstallActivity;->Z:Landroid/os/Handler;

    iget-object v5, p0, Lcom/lenovo/install/InstallActivity;->Z:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 692
    :cond_7
    iget-object v4, p0, Lcom/lenovo/install/InstallActivity;->I:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/support/AppInfo;

    iput v6, v4, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    goto :goto_3

    .line 574
    :sswitch_data_0
    .sparse-switch
        0x7f090265 -> :sswitch_1
        0x7f090267 -> :sswitch_2
        0x7f090269 -> :sswitch_3
        0x7f0902b3 -> :sswitch_4
        0x7f090358 -> :sswitch_6
        0x7f09036f -> :sswitch_5
        0x7f090372 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 263
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 265
    const-string v0, "isFirst"

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/install/InstallActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/install/InstallActivity;->m:Landroid/content/SharedPreferences;

    .line 266
    invoke-virtual {p0}, Lcom/lenovo/install/InstallActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/install/InstallActivity;->a:Landroid/content/pm/PackageManager;

    .line 267
    invoke-virtual {p0}, Lcom/lenovo/install/InstallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/install/PackageUtil;->getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/install/InstallActivity;->b:Landroid/content/pm/PackageParser$Package;

    .line 268
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->b:Landroid/content/pm/PackageParser$Package;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/install/InstallErrorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "uri"

    invoke-virtual {p0}, Lcom/lenovo/install/InstallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallActivity;->startActivity(Landroid/content/Intent;)V

    .line 271
    invoke-virtual {p0}, Lcom/lenovo/install/InstallActivity;->finish()V

    .line 310
    :goto_0
    return-void

    .line 274
    :cond_0
    const-class v0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    iput-object v0, p0, Lcom/lenovo/install/InstallActivity;->O:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    .line 275
    const v0, 0x7f030090

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallActivity;->setContentView(I)V

    .line 276
    const v0, 0x7f09035f

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/install/InstallActivity;->s:Landroid/widget/ImageView;

    const v0, 0x7f090360

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/install/InstallActivity;->u:Landroid/widget/TextView;

    const v0, 0x7f090366

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/install/InstallActivity;->t:Landroid/widget/ImageView;

    const v0, 0x7f090367

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/install/InstallActivity;->v:Landroid/widget/TextView;

    const v0, 0x7f090372

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/install/InstallActivity;->w:Landroid/widget/TextView;

    const v0, 0x7f0902b3

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/install/InstallActivity;->x:Landroid/widget/TextView;

    const v0, 0x7f09036f

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/install/InstallActivity;->y:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    const v0, 0x7f090370

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/install/InstallActivity;->B:Landroid/widget/RelativeLayout;

    const v0, 0x7f090373

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/install/InstallActivity;->M:Landroid/widget/LinearLayout;

    const v0, 0x7f09036d

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/install/InstallActivity;->D:Landroid/widget/ImageView;

    const v0, 0x7f090358

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/install/InstallActivity;->J:Landroid/view/View;

    const v0, 0x7f090375

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/install/InstallActivity;->K:Landroid/widget/LinearLayout;

    const v0, 0x7f090383

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/install/InstallActivity;->C:Landroid/widget/ImageView;

    const v0, 0x7f090361

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/install/InstallActivity;->N:Landroid/widget/TextView;

    const v0, 0x7f090382

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/install/InstallActivity;->z:Landroid/widget/TextView;

    const v0, 0x7f090371

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/install/InstallActivity;->A:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->J:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090363

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/lenovo/install/InstallActivity;->T:Landroid/widget/FrameLayout;

    const v0, 0x7f090364

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/install/InstallActivity;->U:Landroid/widget/ImageView;

    const v0, 0x7f090365

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/install/InstallActivity;->L:Landroid/widget/LinearLayout;

    .line 278
    iput-object p0, p0, Lcom/lenovo/install/InstallActivity;->o:Landroid/content/Context;

    .line 279
    new-instance v0, Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/install/InstallActivity;->p:Lcom/lenovo/safecenter/database/AppDatabase;

    .line 280
    invoke-static {}, Lcom/lenovo/safecenter/utils/WflUtils;->isRoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/install/InstallActivity;->R:Z

    .line 282
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->b:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/install/InstallActivity;->q:Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->b:Landroid/content/pm/PackageParser$Package;

    iget-object v1, p0, Lcom/lenovo/install/InstallActivity;->o:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/lenovo/install/PackageUtil;->getPerssions(Landroid/content/pm/PackageParser$Package;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/install/InstallActivity;->r:Ljava/util/List;

    .line 284
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->b:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/lenovo/install/InstallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/lenovo/install/PackageUtil;->getAppSnippet(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/net/Uri;)Lcom/lenovo/install/PackageUtil$AppSnippet;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/install/InstallActivity;->c:Lcom/lenovo/install/PackageUtil$AppSnippet;

    .line 286
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->s:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/install/InstallActivity;->c:Lcom/lenovo/install/PackageUtil$AppSnippet;

    iget-object v1, v1, Lcom/lenovo/install/PackageUtil$AppSnippet;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 287
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->u:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/install/InstallActivity;->c:Lcom/lenovo/install/PackageUtil$AppSnippet;

    iget-object v1, v1, Lcom/lenovo/install/PackageUtil$AppSnippet;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->U:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallActivity;->translate(Landroid/widget/ImageView;)V

    .line 289
    new-instance v0, Lcom/lenovo/install/InstallActivity$4;

    invoke-direct {v0, p0}, Lcom/lenovo/install/InstallActivity$4;-><init>(Lcom/lenovo/install/InstallActivity;)V

    invoke-virtual {v0}, Lcom/lenovo/install/InstallActivity$4;->start()V

    .line 309
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportUseLeSafeAppInstallManager(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 559
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 560
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity;->O:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    if-eqz v1, :cond_0

    .line 563
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity;->O:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->freeScanner()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 564
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 787
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 788
    new-instance v0, Lcom/lenovo/install/InstallActivity$7;

    invoke-direct {v0, p0}, Lcom/lenovo/install/InstallActivity$7;-><init>(Lcom/lenovo/install/InstallActivity;)V

    invoke-virtual {v0}, Lcom/lenovo/install/InstallActivity$7;->start()V

    .line 789
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 790
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 334
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 335
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 336
    return-void
.end method

.method public popAwindow(Ljava/lang/String;)V
    .locals 11
    .param p1, "appType"    # Ljava/lang/String;

    .prologue
    const v9, 0x7f0d077b

    const/4 v8, 0x3

    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 873
    iget-object v3, p0, Lcom/lenovo/install/InstallActivity;->m:Landroid/content/SharedPreferences;

    const-string v6, "next_notip"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/lenovo/install/InstallActivity;->e:Z

    .line 874
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/lenovo/install/InstallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v6, 0x7f03008f

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 876
    .local v2, "v":Landroid/view/View;
    const v3, 0x7f09035d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 877
    .local v1, "text1":Landroid/widget/TextView;
    const-string v3, ""

    const-string v6, "privacy"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0, v9}, Lcom/lenovo/install/InstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/lenovo/install/InstallActivity;->c:Lcom/lenovo/install/PackageUtil$AppSnippet;

    iget-object v7, v7, Lcom/lenovo/install/PackageUtil$AppSnippet;->a:Ljava/lang/CharSequence;

    aput-object v7, v6, v5

    const v7, 0x7f0d0788

    invoke-virtual {p0, v7}, Lcom/lenovo/install/InstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/lenovo/install/InstallActivity;->S:Ljava/lang/String;

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const v7, 0x7f0d0003

    invoke-virtual {p0, v7}, Lcom/lenovo/install/InstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    const v3, 0x7f09035e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 880
    .local v0, "imageView":Landroid/widget/ImageView;
    new-instance v3, Lcom/lenovo/install/InstallActivity$8;

    invoke-direct {v3, p0, v0}, Lcom/lenovo/install/InstallActivity$8;-><init>(Lcom/lenovo/install/InstallActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 891
    const v3, 0x7f0902ac

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v6, Lcom/lenovo/install/InstallActivity$9;

    invoke-direct {v6, p0}, Lcom/lenovo/install/InstallActivity$9;-><init>(Lcom/lenovo/install/InstallActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 900
    new-instance v3, Landroid/widget/PopupWindow;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v3, v2, v6, v7, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v3, p0, Lcom/lenovo/install/InstallActivity;->n:Landroid/widget/PopupWindow;

    .line 901
    iget-object v3, p0, Lcom/lenovo/install/InstallActivity;->n:Landroid/widget/PopupWindow;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 902
    iget-object v3, p0, Lcom/lenovo/install/InstallActivity;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 903
    iget-object v3, p0, Lcom/lenovo/install/InstallActivity;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 904
    iget-object v3, p0, Lcom/lenovo/install/InstallActivity;->n:Landroid/widget/PopupWindow;

    new-instance v4, Lcom/lenovo/install/InstallActivity$2;

    invoke-direct {v4, p0}, Lcom/lenovo/install/InstallActivity$2;-><init>(Lcom/lenovo/install/InstallActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 911
    iget-object v3, p0, Lcom/lenovo/install/InstallActivity;->n:Landroid/widget/PopupWindow;

    const v4, 0x7f09036c

    invoke-virtual {p0, v4}, Lcom/lenovo/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v6, 0x50

    const/16 v7, 0x46

    invoke-virtual {v3, v4, v6, v5, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 912
    iget-object v3, p0, Lcom/lenovo/install/InstallActivity;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->update()V

    .line 913
    return-void

    .end local v0    # "imageView":Landroid/widget/ImageView;
    .end local v1    # "text1":Landroid/widget/TextView;
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    move v3, v5

    .line 873
    goto/16 :goto_0

    .line 877
    .restart local v1    # "text1":Landroid/widget/TextView;
    .restart local v2    # "v":Landroid/view/View;
    :cond_2
    const-string v6, "location"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, v9}, Lcom/lenovo/install/InstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/lenovo/install/InstallActivity;->c:Lcom/lenovo/install/PackageUtil$AppSnippet;

    iget-object v7, v7, Lcom/lenovo/install/PackageUtil$AppSnippet;->a:Ljava/lang/CharSequence;

    aput-object v7, v6, v5

    const v7, 0x7f0d0789

    invoke-virtual {p0, v7}, Lcom/lenovo/install/InstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const v7, 0x7f0d0003

    invoke-virtual {p0, v7}, Lcom/lenovo/install/InstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_3
    const-string v6, "device"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0, v9}, Lcom/lenovo/install/InstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/lenovo/install/InstallActivity;->c:Lcom/lenovo/install/PackageUtil$AppSnippet;

    iget-object v7, v7, Lcom/lenovo/install/PackageUtil$AppSnippet;->a:Ljava/lang/CharSequence;

    aput-object v7, v6, v5

    const v7, 0x7f0d03ec

    invoke-virtual {p0, v7}, Lcom/lenovo/install/InstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const v7, 0x7f0d0003

    invoke-virtual {p0, v7}, Lcom/lenovo/install/InstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_4
    const-string v6, "call_phone"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0, v9}, Lcom/lenovo/install/InstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/lenovo/install/InstallActivity;->c:Lcom/lenovo/install/PackageUtil$AppSnippet;

    iget-object v7, v7, Lcom/lenovo/install/PackageUtil$AppSnippet;->a:Ljava/lang/CharSequence;

    aput-object v7, v6, v5

    const v7, 0x7f0d00d2

    invoke-virtual {p0, v7}, Lcom/lenovo/install/InstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const v7, 0x7f0d0001

    invoke-virtual {p0, v7}, Lcom/lenovo/install/InstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_5
    const-string v6, "sendmessage"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0, v9}, Lcom/lenovo/install/InstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/lenovo/install/InstallActivity;->c:Lcom/lenovo/install/PackageUtil$AppSnippet;

    iget-object v7, v7, Lcom/lenovo/install/PackageUtil$AppSnippet;->a:Ljava/lang/CharSequence;

    aput-object v7, v6, v5

    const v7, 0x7f0d00d1

    invoke-virtual {p0, v7}, Lcom/lenovo/install/InstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const v7, 0x7f0d0001

    invoke-virtual {p0, v7}, Lcom/lenovo/install/InstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method

.method public showPopupMenu()V
    .locals 6

    .prologue
    const v5, 0x7f0201e3

    const/4 v3, 0x1

    .line 918
    iget-boolean v0, p0, Lcom/lenovo/install/InstallActivity;->d:Z

    if-nez v0, :cond_1

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/lenovo/install/InstallActivity;->d:Z

    .line 919
    iget-boolean v0, p0, Lcom/lenovo/install/InstallActivity;->d:Z

    if-eqz v0, :cond_2

    .line 920
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->C:Landroid/widget/ImageView;

    const v1, 0x7f02005a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 921
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03005c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f090266

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020230

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v0, 0x7f090268

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020234

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v0, 0x7f09026a

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02022e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v0, 0x7f090265

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090267

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090269

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/lenovo/install/InstallActivity;->ab:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->ab:Landroid/widget/PopupWindow;

    const v1, 0x7f0e000c

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->ab:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->ab:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->ab:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->ab:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/lenovo/install/InstallActivity$3;

    invoke-direct {v1, p0}, Lcom/lenovo/install/InstallActivity$3;-><init>(Lcom/lenovo/install/InstallActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->ab:Landroid/widget/PopupWindow;

    const v1, 0x7f090270

    invoke-virtual {p0, v1}, Lcom/lenovo/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->ab:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 927
    :cond_0
    :goto_1
    return-void

    .line 918
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 923
    :cond_2
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->n:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_1
.end method

.method public showVirusDesc(Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;)V
    .locals 7
    .param p1, "entity"    # Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    .prologue
    .line 322
    const v3, 0x7f090368

    invoke-virtual {p0, v3}, Lcom/lenovo/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 323
    .local v0, "txt_name":Landroid/widget/TextView;
    const v3, 0x7f090369

    invoke-virtual {p0, v3}, Lcom/lenovo/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 324
    .local v2, "virus_risk":Landroid/widget/TextView;
    const v3, 0x7f09036a

    invoke-virtual {p0, v3}, Lcom/lenovo/install/InstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 325
    .local v1, "virus_detail":Landroid/widget/TextView;
    const v3, 0x7f0d0778

    invoke-virtual {p0, v3}, Lcom/lenovo/install/InstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    const v3, 0x7f0d0306

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 328
    iget-object v3, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    return-void
.end method

.method public translate(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 315
    const v1, 0x7f04000d

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 316
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 317
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 318
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 319
    return-void
.end method
