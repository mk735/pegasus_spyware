.class public Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;
.super Lcom/lenovo/safecenter/platform/BaseTitleActivity;
.source "FullSystemScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;,
        Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$a;,
        Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$e;,
        Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;,
        Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$b;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Ljava/lang/String;

.field private C:Landroid/widget/Button;

.field private D:Landroid/widget/Button;

.field private E:Landroid/widget/Button;

.field private F:Landroid/widget/Button;

.field private G:Landroid/widget/Button;

.field private H:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;

.field private I:Ljava/lang/String;

.field private J:Landroid/widget/LinearLayout;

.field private K:Landroid/widget/LinearLayout;

.field private L:Landroid/widget/LinearLayout;

.field private M:Landroid/widget/LinearLayout;

.field private N:Landroid/widget/LinearLayout;

.field private O:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/Appinfo;",
            ">;"
        }
    .end annotation
.end field

.field private P:Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

.field private Q:Landroid/widget/Button;

.field private R:Z

.field private S:Landroid/widget/ImageView;

.field private T:J

.field private U:J

.field private V:I

.field private W:Landroid/view/animation/TranslateAnimation;

.field private X:Landroid/widget/ImageView;

.field private Y:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

.field private Z:Z

.field private a:Landroid/widget/ProgressBar;

.field private aa:Z

.field private ab:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private ac:I

.field private ad:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;

.field private ae:Landroid/os/Handler;

.field private af:Z

.field private ag:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/Virus;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/ListView;

.field private r:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$b;

.field private s:Landroid/widget/ExpandableListView;

.field private t:Landroid/widget/TextView;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$e;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/Virus;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;-><init>()V

    .line 67
    iput v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->b:I

    .line 68
    iput v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->c:I

    .line 69
    iput v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->d:I

    .line 70
    iput-boolean v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->e:Z

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->f:Z

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->g:I

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->h:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->i:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->x:Ljava/util/List;

    .line 92
    iput-boolean v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->A:Z

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->B:Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->O:Ljava/util/List;

    .line 106
    iput-boolean v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->R:Z

    .line 111
    iput v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->V:I

    .line 116
    iput-boolean v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->Z:Z

    .line 117
    iput-boolean v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->aa:Z

    .line 120
    iput v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->ac:I

    .line 123
    new-instance v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;-><init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->ae:Landroid/os/Handler;

    .line 653
    iput-boolean v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->af:Z

    .line 1677
    return-void
.end method

.method static synthetic A(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->u:Ljava/util/List;

    return-object v0
.end method

.method static synthetic B(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->R:Z

    return v0
.end method

.method static synthetic C(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic D(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->T:J

    return-wide v0
.end method

.method static synthetic E(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->d:I

    return v0
.end method

.method static synthetic F(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->ag:Z

    return v0
.end method

.method static synthetic G(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->P:Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    return-object v0
.end method

.method static synthetic H(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic I(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/ExpandableListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->s:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic J(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic K(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->n:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic L(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->K:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic M(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->Q:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic N(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->M:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic O(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->S:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic P(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->b:I

    return v0
.end method

.method static synthetic Q(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a()V

    return-void
.end method

.method static synthetic R(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->f:Z

    return v0
.end method

.method static synthetic S(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/tencent/tmsecure/module/qscanner/QScannerManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->Y:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    return-object v0
.end method

.method static synthetic T(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)V
    .locals 12
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    const v11, 0x7f0d02db

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 64
    iget-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->A:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->e:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0901bd

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901be

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0901bf

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f0d02dd

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0d02de

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0d02df

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->b:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->c:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->d:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v11}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0304

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$10;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$10;-><init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0302

    new-instance v2, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$9;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$9;-><init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->create()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d02c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v11}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    iget v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d01b9

    new-instance v2, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$11;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$11;-><init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->create()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog;->show()V

    goto :goto_0
.end method

.method static synthetic U(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->D:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic V(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->I:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic W(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->R:Z

    return v0
.end method

.method static synthetic X(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic Y(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->A:Z

    return v0
.end method

.method static synthetic Z(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->c:I

    return v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->g:I

    return p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;J)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;
    .param p1, "x1"    # J

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->U:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->U:J

    return-wide v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;)Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;
    .param p1, "x1"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->H:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;)Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;
    .param p1, "x1"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->ad:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;Lcom/tencent/tmsecure/module/qscanner/QScannerManager;)Lcom/tencent/tmsecure/module/qscanner/QScannerManager;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;
    .param p1, "x1"    # Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->Y:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->B:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->ab:Ljava/util/List;

    return-object p1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 542
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00f2

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0548

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setColorNegativeButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setColorPositiveButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$13;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$13;-><init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    new-instance v2, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$12;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$12;-><init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 563
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->af:Z

    return v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->Z:Z

    return p1
.end method

.method static synthetic aa(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->aa:Z

    return v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->V:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->V:I

    return v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->ac:I

    return p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;J)J
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;
    .param p1, "x1"    # J

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->T:J

    return-wide p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->u:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->aa:Z

    return p1
.end method

.method static synthetic c(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->b:I

    return v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->c:I

    return p1
.end method

.method static synthetic d(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->B:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->b:I

    return v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->c:I

    return v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->t:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->x:Ljava/util/List;

    return-object v0
.end method

.method static synthetic l(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->z:Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;

    return-object v0
.end method

.method static synthetic m(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->q:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic n(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->ac:I

    return v0
.end method

.method static synthetic o(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->ab:Ljava/util/List;

    return-object v0
.end method

.method static synthetic p(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->L:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic q(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->N:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic r(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->ae:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic s(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->f:Z

    return v0
.end method

.method static synthetic t(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic u(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->g:I

    return v0
.end method

.method static synthetic v(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->H:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;

    return-object v0
.end method

.method static synthetic w(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->Z:Z

    return v0
.end method

.method static synthetic x(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->y:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic y(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->ad:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;

    return-object v0
.end method

.method static synthetic z(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->O:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public forwardAppInfo(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1502
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.InstalledAppDetails"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    .local v0, "comp":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1505
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1506
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1507
    const-string v2, "pkg"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1508
    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->startActivity(Landroid/content/Intent;)V

    .line 1509
    return-void
.end method

.method public freeManage()V
    .locals 3

    .prologue
    .line 1280
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->ag:Z

    .line 1282
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->ad:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;

    if-eqz v1, :cond_0

    .line 1284
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->ad:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;->a(Z)V

    .line 1285
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->ad:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;

    .line 1287
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->Y:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    if-eqz v1, :cond_1

    .line 1289
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->Y:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->cancelScan()V

    .line 1290
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->Y:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->freeScanner()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1295
    :cond_1
    :goto_0
    return-void

    .line 1292
    :catch_0
    move-exception v0

    .line 1293
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getVirus()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/Virus;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 1026
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->w:Ljava/util/List;

    .line 1027
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1028
    .local v1, "errorList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->y:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1031
    .local v4, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1035
    .local v9, "virusPackageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/16 v11, 0x2000

    invoke-virtual {v10, v9, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 1038
    .local v3, "mAppInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v8, Lcom/lenovo/safecenter/antivirus/domain/Virus;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/lenovo/safecenter/antivirus/domain/Virus;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1041
    .local v8, "virus":Lcom/lenovo/safecenter/antivirus/domain/Virus;
    iget-object v10, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->y:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    .line 1042
    .local v6, "result":Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;
    if-eqz v6, :cond_0

    .line 1043
    iget-object v10, v6, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->setVirusName(Ljava/lang/String;)V

    .line 1044
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->setType(I)V

    .line 1045
    iget-object v10, v6, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->setVirusDesc(Ljava/lang/String;)V

    .line 1075
    :goto_1
    iget-object v10, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->w:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1077
    .end local v3    # "mAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "result":Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;
    .end local v8    # "virus":Lcom/lenovo/safecenter/antivirus/domain/Virus;
    :catch_0
    move-exception v0

    .line 1078
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1079
    const-string v10, "p_name"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "==============errorListPackageName=="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    new-instance v10, Lcom/lenovo/safecenter/antivirus/utils/ScanUtils;

    invoke-direct {v10}, Lcom/lenovo/safecenter/antivirus/utils/ScanUtils;-><init>()V

    invoke-virtual {v10, v9, p0}, Lcom/lenovo/safecenter/antivirus/utils/ScanUtils;->ExecError(Ljava/lang/String;Landroid/content/Context;)V

    .line 1083
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1047
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "mAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "result":Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;
    .restart local v8    # "virus":Lcom/lenovo/safecenter/antivirus/domain/Virus;
    :cond_0
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v8, v10}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->setType(I)V

    .line 1048
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->setVirusName(Ljava/lang/String;)V

    .line 1050
    invoke-static {v9}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->getVirusDescKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, p0}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1053
    invoke-static {v9}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->getVirusDescKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, p0}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->setVirusDesc(Ljava/lang/String;)V

    goto :goto_1

    .line 1057
    :cond_1
    const v10, 0x7f0d0321

    invoke-virtual {p0, v10}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->setVirusDesc(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1087
    .end local v3    # "mAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "result":Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;
    .end local v8    # "virus":Lcom/lenovo/safecenter/antivirus/domain/Virus;
    .end local v9    # "virusPackageName":Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1089
    .local v5, "pkg":Ljava/lang/String;
    iget-object v10, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->y:Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1091
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->w:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 1092
    const-string v10, "msg"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "=============="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->w:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "========"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->c:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    const v10, 0x7f0d02e5

    invoke-virtual {p0, v10}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1094
    .local v7, "sureVirus":Ljava/lang/String;
    new-array v10, v13, [Ljava/lang/Object;

    iget v11, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->c:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v14

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1095
    iget-object v10, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->i:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1096
    iget-object v10, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->l:Landroid/widget/TextView;

    const v11, 0x7f0d0314

    invoke-virtual {p0, v11}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-array v12, v13, [Ljava/lang/Object;

    iget v13, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->c:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v14

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1098
    iget-object v10, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->h:Ljava/util/List;

    iget-object v11, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->w:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1100
    .end local v7    # "sureVirus":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->w:Ljava/util/List;

    return-object v10
.end method

.method public onBtnClick()V
    .locals 2

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->s:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$8;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$8;-><init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 1125
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 903
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904b9

    if-ne v0, v1, :cond_0

    .line 904
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->y:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 905
    invoke-direct {p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a()V

    .line 913
    :cond_0
    :goto_0
    return-void

    .line 908
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->freeManage()V

    .line 909
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->finish()V

    .line 910
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 658
    new-instance v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$b;

    invoke-direct {v0, p0, p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$b;-><init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->r:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$b;

    .line 659
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 662
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->setContentView(I)V

    .line 671
    const v0, 0x7f09014e

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->S:Landroid/widget/ImageView;

    .line 672
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->S:Landroid/widget/ImageView;

    const v1, 0x7f02032d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 674
    const v0, 0x7f020286

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0d02b3

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 676
    const v0, 0x7f090165

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->m:Landroid/widget/TextView;

    .line 677
    const v0, 0x7f090164

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->n:Landroid/widget/RelativeLayout;

    .line 678
    const v0, 0x7f090163

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->s:Landroid/widget/ExpandableListView;

    .line 680
    new-instance v0, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->P:Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    .line 682
    const v0, 0x7f090153

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->N:Landroid/widget/LinearLayout;

    .line 683
    const v0, 0x7f090156

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->p:Landroid/widget/TextView;

    .line 684
    const v0, 0x7f09015d

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->E:Landroid/widget/Button;

    .line 686
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->y:Ljava/util/HashMap;

    .line 688
    const v0, 0x7f09015a

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->F:Landroid/widget/Button;

    .line 689
    const v0, 0x7f09015b

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->G:Landroid/widget/Button;

    .line 690
    const v0, 0x7f090150

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->o:Landroid/widget/TextView;

    .line 691
    const v0, 0x7f090151

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->l:Landroid/widget/TextView;

    .line 692
    const v0, 0x7f090154

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a:Landroid/widget/ProgressBar;

    .line 694
    const v0, 0x7f090160

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->C:Landroid/widget/Button;

    .line 695
    const v0, 0x7f09015f

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->D:Landroid/widget/Button;

    .line 696
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d02d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->j:Ljava/lang/String;

    .line 698
    const v0, 0x7f090155

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->k:Landroid/widget/TextView;

    .line 699
    const v0, 0x7f090162

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->q:Landroid/widget/ListView;

    .line 700
    const v0, 0x7f090166

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->t:Landroid/widget/TextView;

    .line 702
    const v0, 0x7f090167

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->J:Landroid/widget/LinearLayout;

    .line 703
    const v0, 0x7f09015e

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->L:Landroid/widget/LinearLayout;

    .line 704
    const v0, 0x7f090159

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->K:Landroid/widget/LinearLayout;

    .line 705
    const v0, 0x7f090157

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->M:Landroid/widget/LinearLayout;

    .line 706
    const v0, 0x7f090158

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->Q:Landroid/widget/Button;

    .line 707
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->J:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 708
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->K:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 709
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 710
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 711
    invoke-static {p0}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->isNeedScan(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->af:Z

    .line 712
    new-instance v0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->x:Ljava/util/List;

    iget-boolean v2, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->af:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->z:Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;

    .line 713
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->q:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->z:Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 714
    sput-boolean v4, Lcom/lenovo/safecenter/antivirus/utils/ScanUtils;->isNetScan_cancel:Z

    .line 715
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 716
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->onBtnClick()V

    .line 717
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->setAnimation()V

    .line 718
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->registerAction()V

    .line 719
    iput-boolean v4, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->ag:Z

    .line 720
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d02ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->I:Ljava/lang/String;

    .line 722
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->D:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 724
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->F:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$19;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$19;-><init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 738
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->G:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$2;-><init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 748
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->Q:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$3;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$3;-><init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 758
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->C:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$4;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$4;-><init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 795
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->p:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$5;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$5;-><init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 831
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->D:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$6;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$6;-><init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 875
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->E:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$7;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$7;-><init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 888
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->setScanAnimation()V

    .line 890
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->T:J

    .line 891
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->ae:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 892
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1304
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onDestroy()V

    .line 1305
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->setGoing(Z)V

    .line 1306
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->r:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$b;

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1308
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->Y:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    if-eqz v1, :cond_0

    .line 1310
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->Y:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->freeScanner()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1317
    :cond_0
    :goto_0
    return-void

    .line 1313
    :catch_0
    move-exception v0

    .line 1315
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 529
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->y:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 531
    invoke-direct {p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a()V

    .line 538
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 533
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->freeManage()V

    .line 534
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->finish()V

    .line 535
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 1267
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onPause()V

    .line 1268
    const-string v0, "mm"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 1271
    return-void
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 1254
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onRestart()V

    .line 1257
    const-string v0, "setView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "==onRestart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 1275
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 1276
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onResume()V

    .line 1277
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 1248
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onStart()V

    .line 1249
    const-string v0, "mm"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 1298
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onStop()V

    .line 1300
    const-string v0, "mm"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    return-void
.end method

.method public openNetScan()V
    .locals 3

    .prologue
    .line 611
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0407

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0406

    new-instance v2, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$18;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$18;-><init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    new-instance v2, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$17;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$17;-><init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$16;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$16;-><init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 637
    return-void
.end method

.method public openNetworkSettings()V
    .locals 3

    .prologue
    const v2, 0x7f0d03be

    .line 566
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d03bd

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$15;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$15;-><init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)V

    invoke-virtual {v0, v2, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0049

    new-instance v2, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$14;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$14;-><init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 608
    return-void
.end method

.method public registerAction()V
    .locals 2

    .prologue
    .line 1018
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1019
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1020
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1021
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->r:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$b;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1023
    return-void
.end method

.method public removePackageActivity(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1513
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1514
    .local v1, "uninstallIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->startActivity(Landroid/content/Intent;)V

    .line 1516
    return-void
.end method

.method public setAnimation()V
    .locals 0

    .prologue
    .line 651
    return-void
.end method

.method public setGoing(Z)V
    .locals 2
    .param p1, "isGoing"    # Z

    .prologue
    .line 895
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 896
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 897
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 898
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->ae:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 899
    return-void
.end method

.method public setScanAnimation()V
    .locals 4

    .prologue
    const/high16 v3, 0x41a00000    # 20.0f

    .line 1519
    const v0, 0x7f09014f

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->X:Landroid/widget/ImageView;

    .line 1520
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x428c0000    # 70.0f

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->W:Landroid/view/animation/TranslateAnimation;

    .line 1521
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->W:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1522
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->W:Landroid/view/animation/TranslateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 1523
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->W:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 1524
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->W:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1526
    return-void
.end method

.method public setView()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 922
    const-string v0, "setView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->q:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 924
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->J:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 925
    const v0, 0x7f09015c

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 926
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 928
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 930
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->y:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 932
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->s:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v4}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 933
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->s:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 934
    const-string v0, "msg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=============="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->y:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->getVirus()Ljava/util/List;

    .line 937
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 938
    new-instance v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$e;

    invoke-direct {v0, p0, p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$e;-><init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->v:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$e;

    .line 939
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->s:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->v:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$e;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 940
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->s:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v4}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 952
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->y:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_7

    .line 954
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 955
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "netScan_switch"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v8, :cond_4

    invoke-static {p0}, Lcom/lenovo/safecenter/antivirus/utils/ScanUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/lenovo/safecenter/antivirus/utils/ScanUtils;->isNetScan_cancel:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->u:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 961
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->stopAnimation()V

    .line 963
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->S:Landroid/widget/ImageView;

    const v1, 0x7f02032d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 965
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->q:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 966
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 967
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 968
    iget-wide v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->U:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 969
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->T:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->U:J

    .line 976
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->m:Landroid/widget/TextView;

    const v0, 0x7f0d04c2

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    iget v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->V:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    iget-wide v4, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->U:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    add-long/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v8

    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->O:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x3

    if-le v0, v4, :cond_3

    sget-object v0, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->usenet:Ljava/lang/String;

    :goto_1
    aput-object v0, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1015
    :goto_2
    return-void

    .line 945
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->s:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 946
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 947
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 948
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->q:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_0

    .line 976
    :cond_3
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->O:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x28

    int-to-long v4, v0

    invoke-static {p0, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 982
    :cond_4
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->stopAnimation()V

    .line 984
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->S:Landroid/widget/ImageView;

    const v1, 0x7f02032d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 986
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->q:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 987
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 988
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 989
    iget-wide v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->U:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 990
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->T:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->U:J

    .line 992
    :cond_5
    iget-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->af:Z

    if-eqz v0, :cond_6

    .line 994
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->m:Landroid/widget/TextView;

    const v1, 0x7f0d04c3

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    iget v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->V:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-wide v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->U:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    add-long/2addr v3, v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 999
    :cond_6
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->m:Landroid/widget/TextView;

    const v1, 0x7f0d04c3

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->ab:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-wide v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->U:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    add-long/2addr v3, v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1008
    :cond_7
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->stopAnimation()V

    .line 1010
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->S:Landroid/widget/ImageView;

    const v1, 0x7f02032f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1012
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->K:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->X:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->W:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1530
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->X:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1531
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->W:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->start()V

    .line 1532
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->X:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1536
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->X:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1537
    return-void
.end method

.method public uninstall(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgname"    # Ljava/lang/String;

    .prologue
    .line 916
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 917
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 918
    .local v1, "uninstallIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->startActivity(Landroid/content/Intent;)V

    .line 919
    return-void
.end method
