.class public Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;
.super Lcom/lenovo/safecenter/platform/BaseTitleActivity;
.source "ScanVirusActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b;,
        Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FullSystemScanActivity"


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/os/Handler;

.field private C:Landroid/app/NotificationManager;

.field private a:I

.field private b:Ljava/util/List;
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

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ListView;

.field private i:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$a;

.field private j:Landroid/widget/ExpandableListView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/Virus;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/Button;

.field private s:Landroid/widget/LinearLayout;

.field private t:Landroid/widget/LinearLayout;

.field private u:Landroid/widget/LinearLayout;

.field private v:Landroid/widget/LinearLayout;

.field private w:Landroid/widget/LinearLayout;

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/Appinfo;",
            ">;"
        }
    .end annotation
.end field

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/view/animation/TranslateAnimation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->a:I

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->b:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->c:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->n:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->x:Ljava/util/List;

    .line 96
    new-instance v0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$1;-><init>(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->B:Landroid/os/Handler;

    .line 583
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->a:I

    return p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->o:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 300
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

    new-instance v2, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$4;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$4;-><init>(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    new-instance v2, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$3;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$3;-><init>(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 318
    return-void
.end method

.method static synthetic b(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Landroid/widget/ExpandableListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->j:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    .prologue
    .line 62
    iget v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->a:I

    return v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->q:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->y:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->c:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public forwardAppInfo(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 758
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.InstalledAppDetails"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    .local v0, "comp":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 761
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 762
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 763
    const-string v2, "pkg"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 764
    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->startActivity(Landroid/content/Intent;)V

    .line 765
    return-void
.end method

.method public getVirus()Ljava/util/List;
    .locals 13
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
    const/4 v12, 0x0

    .line 399
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->m:Ljava/util/List;

    .line 400
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v2, "errorList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 405
    .local v6, "virus":Lcom/lenovo/safecenter/antivirus/domain/Virus;
    iget-object v9, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->o:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 408
    .local v8, "virusPackageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v10, 0x2000

    invoke-virtual {v9, v8, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 411
    .local v4, "mAppInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v7, Lcom/lenovo/safecenter/antivirus/domain/Virus;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Lcom/lenovo/safecenter/antivirus/domain/Virus;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    .end local v6    # "virus":Lcom/lenovo/safecenter/antivirus/domain/Virus;
    .local v7, "virus":Lcom/lenovo/safecenter/antivirus/domain/Virus;
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v7, v9}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->setType(I)V

    .line 423
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->setVirusName(Ljava/lang/String;)V

    .line 427
    invoke-static {v8}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->getVirusDescKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p0}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "desc":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 432
    :cond_0
    const v9, 0x7f0d0321

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 435
    :cond_1
    invoke-virtual {v7, v0}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->setVirusDesc(Ljava/lang/String;)V

    .line 437
    iget-object v9, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->m:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v7

    .line 448
    .end local v7    # "virus":Lcom/lenovo/safecenter/antivirus/domain/Virus;
    .restart local v6    # "virus":Lcom/lenovo/safecenter/antivirus/domain/Virus;
    goto :goto_0

    .line 439
    .end local v0    # "desc":Ljava/lang/String;
    .end local v4    # "mAppInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 440
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v8, :cond_2

    .line 441
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    const-string v9, "p_name"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "==============errorListPackageName=="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance v9, Lcom/lenovo/safecenter/antivirus/utils/ScanUtils;

    invoke-direct {v9}, Lcom/lenovo/safecenter/antivirus/utils/ScanUtils;-><init>()V

    invoke-virtual {v9, v8, p0}, Lcom/lenovo/safecenter/antivirus/utils/ScanUtils;->ExecError(Ljava/lang/String;Landroid/content/Context;)V

    .line 447
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 450
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v8    # "virusPackageName":Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->o:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 451
    iget-object v9, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->o:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 453
    :cond_4
    iget-object v9, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->m:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 454
    const-string v9, "msg"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "=============="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->m:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const v9, 0x7f0d02e5

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 456
    .local v5, "sureVirus":Ljava/lang/String;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->m:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 457
    iget-object v9, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->c:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    iget-object v9, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->b:Ljava/util/List;

    iget-object v10, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->m:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    .end local v5    # "sureVirus":Ljava/lang/String;
    :cond_5
    iget-object v9, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->m:Ljava/util/List;

    return-object v9

    .line 439
    .end local v6    # "virus":Lcom/lenovo/safecenter/antivirus/domain/Virus;
    .restart local v4    # "mAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "virus":Lcom/lenovo/safecenter/antivirus/domain/Virus;
    .restart local v8    # "virusPackageName":Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v6, v7

    .end local v7    # "virus":Lcom/lenovo/safecenter/antivirus/domain/Virus;
    .restart local v6    # "virus":Lcom/lenovo/safecenter/antivirus/domain/Virus;
    goto/16 :goto_1
.end method

.method public notifyVirus()V
    .locals 21

    .prologue
    .line 539
    :try_start_0
    const-string v17, "viruspkgname"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 540
    .local v15, "virus_pkgname":Ljava/lang/String;
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 541
    .local v16, "virus_pkgname_split":[Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    .local v12, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v4, v16

    .local v4, "arr$":[Ljava/lang/String;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v14, v4, v7

    .line 545
    .local v14, "str":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const/16 v18, 0x2000

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x2c

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 543
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 550
    .end local v14    # "str":Ljava/lang/String;
    :cond_0
    new-instance v13, Landroid/content/Intent;

    const-class v17, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 551
    .local v13, "showVirus":Landroid/content/Intent;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 552
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v17, "fromnotify"

    const-string v18, "notify"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-virtual {v13, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 555
    const/high16 v17, 0x20000000

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 556
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 558
    .local v8, "intent":Landroid/app/PendingIntent;
    new-instance v10, Landroid/app/Notification;

    const v17, 0x7f020053

    const v18, 0x7f0d0305

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 563
    .local v10, "mNotification":Landroid/app/Notification;
    const/16 v17, 0xa

    move/from16 v0, v17

    iput v0, v10, Landroid/app/Notification;->flags:I

    .line 566
    const v17, 0x7f0d0309

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 568
    .local v11, "not_str":Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-static {v11, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 570
    const v17, 0x7f0d0305

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1, v11, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->C:Landroid/app/NotificationManager;

    move-object/from16 v17, v0

    const/16 v18, 0x22a

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v7    # "i$":I
    .end local v8    # "intent":Landroid/app/PendingIntent;
    .end local v9    # "len$":I
    .end local v10    # "mNotification":Landroid/app/Notification;
    .end local v11    # "not_str":Ljava/lang/String;
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    .end local v13    # "showVirus":Landroid/content/Intent;
    .end local v15    # "virus_pkgname":Ljava/lang/String;
    .end local v16    # "virus_pkgname_split":[Ljava/lang/String;
    :goto_1
    return-void

    .line 575
    :catch_0
    move-exception v6

    .line 577
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onBtnClick()V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->j:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$5;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$5;-><init>(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 486
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904b9

    if-ne v0, v1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_healthcheck"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 276
    invoke-direct {p0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->a()V

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 199
    new-instance v0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$a;

    invoke-direct {v0, p0, p0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$a;-><init>(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->i:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$a;

    .line 200
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 201
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->setContentView(I)V

    .line 202
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->C:Landroid/app/NotificationManager;

    .line 203
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->C:Landroid/app/NotificationManager;

    const/16 v1, 0x22a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 204
    const v0, 0x7f09014e

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->y:Landroid/widget/ImageView;

    .line 205
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->y:Landroid/widget/ImageView;

    const v1, 0x7f02032d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 207
    const v0, 0x7f020286

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0d02b3

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 209
    const v0, 0x7f090165

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->e:Landroid/widget/TextView;

    .line 210
    const v0, 0x7f090164

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->f:Landroid/widget/RelativeLayout;

    .line 211
    const v0, 0x7f090163

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->j:Landroid/widget/ExpandableListView;

    .line 215
    const v0, 0x7f090153

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->w:Landroid/widget/LinearLayout;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->o:Ljava/util/ArrayList;

    .line 219
    const v0, 0x7f09015a

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->q:Landroid/widget/Button;

    .line 220
    const v0, 0x7f09015b

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->r:Landroid/widget/Button;

    .line 221
    const v0, 0x7f090150

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->g:Landroid/widget/TextView;

    .line 222
    const v0, 0x7f090151

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->d:Landroid/widget/TextView;

    .line 225
    const v0, 0x7f090162

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->h:Landroid/widget/ListView;

    .line 226
    const v0, 0x7f090166

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->k:Landroid/widget/TextView;

    .line 228
    const v0, 0x7f090167

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->s:Landroid/widget/LinearLayout;

    .line 229
    const v0, 0x7f09015e

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->u:Landroid/widget/LinearLayout;

    .line 230
    const v0, 0x7f090159

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->t:Landroid/widget/LinearLayout;

    .line 231
    const v0, 0x7f090157

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->v:Landroid/widget/LinearLayout;

    .line 233
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->r:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 239
    new-instance v0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->n:Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->p:Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;

    .line 240
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->p:Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 241
    sput-boolean v4, Lcom/lenovo/safecenter/antivirus/utils/ScanUtils;->isNetScan_cancel:Z

    .line 242
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->onBtnClick()V

    .line 245
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->registerAction()V

    .line 247
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->q:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$2;-><init>(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->q:Landroid/widget/Button;

    const v1, 0x7f0d0547

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 267
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->setScanAnimation()V

    .line 268
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->B:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 269
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 521
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onDestroy()V

    .line 523
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->i:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$a;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 524
    new-instance v0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$6;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$6;-><init>(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$6;->start()V

    .line 533
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 286
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_healthcheck"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 290
    invoke-direct {p0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->a()V

    .line 296
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 293
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->finish()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 500
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onPause()V

    .line 501
    const-string v0, "mm"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 504
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 495
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onRestart()V

    .line 497
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 508
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onResume()V

    .line 509
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 512
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 489
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onStart()V

    .line 490
    const-string v0, "mm"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 515
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onStop()V

    .line 517
    const-string v0, "mm"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return-void
.end method

.method public registerAction()V
    .locals 2

    .prologue
    .line 391
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 392
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 393
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->i:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$a;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 396
    return-void
.end method

.method public removePackageActivity(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 768
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

    .line 769
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 770
    .local v1, "uninstallIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->startActivity(Landroid/content/Intent;)V

    .line 772
    return-void
.end method

.method public setDealTxt()V
    .locals 7

    .prologue
    const/16 v6, 0x21

    const/4 v5, 0x0

    .line 170
    const v2, 0x7f0d03d5

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->o:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "detail":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 174
    .local v1, "spannable":Landroid/text/SpannableString;
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getScreenHeight()I

    move-result v2

    const/16 v3, 0x1e0

    if-ne v2, v3, :cond_0

    .line 176
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v3, 0x1e

    invoke-direct {v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->o:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v5, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 186
    :goto_0
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const/high16 v3, -0x10000

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->o:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 188
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->o:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v5, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 191
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    return-void

    .line 181
    :cond_0
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v3, 0x30

    invoke-direct {v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->o:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v5, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public setScanAnimation()V
    .locals 4

    .prologue
    const/high16 v3, 0x41a00000    # 20.0f

    .line 775
    const v0, 0x7f09014f

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->A:Landroid/widget/ImageView;

    .line 776
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x428c0000    # 70.0f

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->z:Landroid/view/animation/TranslateAnimation;

    .line 777
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->z:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 778
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->z:Landroid/view/animation/TranslateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 779
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->z:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 780
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->z:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 782
    return-void
.end method

.method public setView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 329
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 331
    const v0, 0x7f09015c

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->setDealTxt()V

    .line 335
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 337
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->j:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v4}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->j:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 339
    const-string v0, "msg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=============="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->getVirus()Ljava/util/List;

    .line 342
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 343
    new-instance v0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b;

    invoke-direct {v0, p0, p0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b;-><init>(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->l:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b;

    .line 344
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->j:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->l:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 345
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->j:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v4}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 360
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 362
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 363
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "netScan_switch"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_1

    invoke-static {p0}, Lcom/lenovo/safecenter/antivirus/utils/ScanUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    sget-boolean v0, Lcom/lenovo/safecenter/antivirus/utils/ScanUtils;->isNetScan_cancel:Z

    if-nez v0, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->stopAnimation()V

    .line 369
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->y:Landroid/widget/ImageView;

    const v1, 0x7f02032d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 371
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f0d04c2

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->x:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x28

    int-to-long v4, v4

    invoke-static {p0, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    :cond_1
    :goto_1
    return-void

    .line 350
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->j:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_0

    .line 382
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->stopAnimation()V

    .line 383
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->y:Landroid/widget/ImageView;

    const v1, 0x7f02032f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 385
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 785
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->A:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->z:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 786
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->A:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 787
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->z:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->start()V

    .line 788
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    .line 791
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->A:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 792
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->A:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 793
    return-void
.end method

.method public uninstall(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgname"    # Ljava/lang/String;

    .prologue
    .line 322
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

    .line 323
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 324
    .local v1, "uninstallIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->startActivity(Landroid/content/Intent;)V

    .line 325
    return-void
.end method
