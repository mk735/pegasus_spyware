.class public Lcom/lenovo/safecenter/Laboratory/AppUninstall;
.super Landroid/app/Activity;
.source "AppUninstall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/Laboratory/AppUninstall$a;,
        Lcom/lenovo/safecenter/Laboratory/AppUninstall$c;,
        Lcom/lenovo/safecenter/Laboratory/AppUninstall$PackageDeleteObserver;,
        Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;,
        Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;
    }
.end annotation


# static fields
.field public static final UNINSTALL_COMPLETE:I = 0xa

.field public static md5s:[Ljava/lang/String;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;"
        }
    .end annotation
.end field

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

.field private f:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;

.field private g:Landroid/widget/ProgressBar;

.field private h:Landroid/widget/ProgressBar;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/lenovo/safecenter/Laboratory/AppUninstall$PackageDeleteObserver;

.field private r:Lcom/lenovo/safecenter/Laboratory/AppUninstall$c;

.field private s:Ljava/lang/String;

.field public safePkgs:Ljava/util/List;

.field private t:Lcom/lenovo/safecenter/Laboratory/AppUninstall$a;

.field private u:Z

.field private v:Landroid/content/Context;

.field private w:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 87
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "5ABDF9B649C2B8AC6026B88313C3C332"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EBAA529685AAE3A1D299AC15F7710AEA"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "B78A0EE7E80045B4F9A0C425703D0CA4"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "388CF508552BC50ED26A8715D33312BA"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "6B861FD954CE40EE4C560992DCCB35F0"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "49FF2FEA9A214DCC2F7EF229488B1A54"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "56B44C8B44C3A4064FE0667DC91E01AA"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CEA942B20A36347B3BF793BFF50F737D"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->md5s:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->u:Z

    .line 145
    new-instance v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/Laboratory/AppUninstall$2;-><init>(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->w:Landroid/os/Handler;

    .line 683
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/Laboratory/AppUninstall;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/AppUninstall;
    .param p1, "x1"    # Landroid/widget/ProgressBar;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->h:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/Laboratory/AppUninstall;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/AppUninstall;
    .param p1, "x1"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->n:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/Laboratory/AppUninstall;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/AppUninstall;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->k:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->f:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/Laboratory/AppUninstall;Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;)Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/AppUninstall;
    .param p1, "x1"    # Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->f:Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/Laboratory/AppUninstall;Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/AppUninstall;
    .param p1, "x1"    # Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->m:Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/Laboratory/AppUninstall;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/AppUninstall;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/Laboratory/AppUninstall;ILcom/lenovo/safecenter/support/AppInfo;I)V
    .locals 7
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/AppUninstall;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/lenovo/safecenter/support/AppInfo;
    .param p3, "x3"    # I

    .prologue
    const v6, 0x7f0d0046

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 72
    if-ne p1, v3, :cond_1

    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00f2

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d04d3

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$4;

    invoke-direct {v1, p0, p2}, Lcom/lenovo/safecenter/Laboratory/AppUninstall$4;-><init>(Lcom/lenovo/safecenter/Laboratory/AppUninstall;Lcom/lenovo/safecenter/support/AppInfo;)V

    invoke-virtual {v0, v6, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    invoke-virtual {v0, v1, v5}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030041

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0901dc

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->n:Landroid/widget/RelativeLayout;

    const v0, 0x7f0901de

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->k:Landroid/widget/TextView;

    const v0, 0x7f0901da

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->h:Landroid/widget/ProgressBar;

    const v0, 0x7f0901db

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->j:Landroid/widget/TextView;

    if-ne p3, v3, :cond_2

    const v0, 0x7f0d0527

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0d0524

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->j:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p2, Lcom/lenovo/safecenter/support/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v5}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->m:Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->m:Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->m:Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setButtonVisible(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    new-instance v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$5;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/Laboratory/AppUninstall$5;-><init>(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$6;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/Laboratory/AppUninstall$6;-><init>(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_0

    :cond_2
    const v0, 0x7f0d05e7

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0d05e8

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/Laboratory/AppUninstall;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/AppUninstall;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->j:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic c(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->o:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->h:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->m:Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->p:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic j(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Lcom/lenovo/safecenter/Laboratory/AppUninstall$a;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->t:Lcom/lenovo/safecenter/Laboratory/AppUninstall$a;

    return-object v0
.end method

.method static synthetic k(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic l(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->w:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic m(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->u:Z

    return v0
.end method

.method static synthetic n(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->v:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic o(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method public static showInstalledAppDetails(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 511
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 513
    .local v2, "intent":Landroid/content/Intent;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 515
    .local v0, "apiLevel":I
    const/16 v4, 0x9

    if-lt v0, v4, :cond_0

    .line 517
    const-string v4, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    const-string v4, "package"

    const/4 v5, 0x0

    invoke-static {v4, p1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 521
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 539
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 540
    return-void

    .line 527
    :cond_0
    const/16 v4, 0x8

    if-ne v0, v4, :cond_1

    const-string v1, "pkg"

    .line 531
    .local v1, "appPkgName":Ljava/lang/String;
    :goto_1
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.InstalledAppDetails"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 527
    .end local v1    # "appPkgName":Ljava/lang/String;
    :cond_1
    const-string v1, "com.android.settings.ApplicationPkgName"

    goto :goto_1
.end method


# virtual methods
.method public getLauncherApp()V
    .locals 7

    .prologue
    .line 251
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->g:Landroid/widget/ProgressBar;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    div-float v3, v0, v2

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const-string v4, "ydp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "ydp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-float v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->g:Landroid/widget/ProgressBar;

    rsub-int/lit8 v3, v3, 0x64

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    mul-float v3, v2, v1

    float-to-long v3, v3

    invoke-static {p0, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ydp"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-float v0, v2, v0

    mul-float/2addr v0, v1

    float-to-long v0, v0

    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ydp"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->i:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0d0526

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->a:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->o:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 254
    new-instance v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$3;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/Laboratory/AppUninstall$3;-><init>(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/Laboratory/AppUninstall$3;->start()V

    .line 322
    return-void
.end method

.method public isThirdpartApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, "flag":Z
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    .line 326
    const/4 v0, 0x1

    .line 330
    :cond_0
    :goto_0
    return v0

    .line 327
    :cond_1
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 328
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v1, 0x7f030042

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->setContentView(I)V

    .line 103
    const v1, 0x7f090590

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 104
    .local v0, "topBar":Landroid/widget/TextView;
    const v1, 0x7f0d0738

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 105
    const v1, 0x7f0905ad

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lcom/lenovo/safecenter/Laboratory/AppUninstall$1;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/Laboratory/AppUninstall$1;-><init>(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iput-object p0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->v:Landroid/content/Context;

    .line 112
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->nacServerIsExist()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->isObtainRoot()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->u:Z

    .line 113
    const v1, 0x7f090052

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->l:Landroid/widget/TextView;

    .line 114
    const v1, 0x7f0901e1

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->a:Landroid/widget/ListView;

    .line 115
    const v1, 0x7f0901df

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->g:Landroid/widget/ProgressBar;

    .line 116
    const v1, 0x7f0901e0

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->i:Landroid/widget/TextView;

    .line 117
    const v1, 0x7f0901e2

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->o:Landroid/widget/RelativeLayout;

    .line 118
    iget-boolean v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->u:Z

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->l:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    :cond_1
    new-instance v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$a;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/Laboratory/AppUninstall$a;-><init>(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->t:Lcom/lenovo/safecenter/Laboratory/AppUninstall$a;

    .line 123
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->t:Lcom/lenovo/safecenter/Laboratory/AppUninstall$a;

    :try_start_0
    iget-object v2, v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$a;->a:Landroid/content/pm/IPackageManager;

    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->getInstallLocation()I

    move-result v2

    iput v2, v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$a;->b:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->p:Ljava/util/Map;

    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->d:Ljava/util/List;

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->b:Ljava/util/List;

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->c:Ljava/util/List;

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->e:Ljava/util/List;

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->safePkgs:Ljava/util/List;

    .line 130
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->safePkgs:Ljava/util/List;

    const-string v2, "com.android.settings"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->safePkgs:Ljava/util/List;

    const-string v2, "com.android.camera"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->safePkgs:Ljava/util/List;

    const-string v2, "com.android.contacts"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->safePkgs:Ljava/util/List;

    const-string v2, "com.android.phone"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->safePkgs:Ljava/util/List;

    const-string v2, "com.android.mms"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->safePkgs:Ljava/util/List;

    const-string v2, "com.android.music"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->safePkgs:Ljava/util/List;

    const-string v2, "com.android.browser"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->safePkgs:Ljava/util/List;

    const-string v2, "com.android.gallery3d"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->safePkgs:Ljava/util/List;

    const-string v2, "com.android.deskclock"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->safePkgs:Ljava/util/List;

    const-string v2, "com.android.filebrowser"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->safePkgs:Ljava/util/List;

    const-string v2, "com.lenovo.safecenter"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$PackageDeleteObserver;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/Laboratory/AppUninstall$PackageDeleteObserver;-><init>(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->q:Lcom/lenovo/safecenter/Laboratory/AppUninstall$PackageDeleteObserver;

    .line 142
    new-instance v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$c;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/Laboratory/AppUninstall$c;-><init>(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->r:Lcom/lenovo/safecenter/Laboratory/AppUninstall$c;

    .line 144
    return-void

    .line 112
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 123
    :catch_0
    move-exception v1

    const-string v1, "CanBeOnSdCardChecker"

    const-string v2, "Is Package Manager running?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 665
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 666
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 677
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 678
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->m:Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->m:Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->getDialog()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->m:Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->getDialog()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->m:Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->getDialog()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog;->dismiss()V

    .line 681
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 682
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 670
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 671
    invoke-virtual {p0}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->getLauncherApp()V

    .line 672
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 673
    return-void
.end method
