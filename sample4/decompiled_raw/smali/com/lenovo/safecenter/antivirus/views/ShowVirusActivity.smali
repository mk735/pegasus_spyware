.class public Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;
.super Lcom/lenovo/safecenter/platform/BaseTitleActivity;
.source "ShowVirusActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;,
        Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ExpandableListView;

.field private b:Landroid/widget/Button;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/Virus;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/Virus;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
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

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/content/pm/PackageManager;

.field private i:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$a;

.field private j:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->c:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->d:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->e:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->f:Ljava/util/List;

    .line 345
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;)Landroid/widget/ExpandableListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->a:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->b:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->f:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public forwardAppInfo(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 256
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.InstalledAppDetails"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .local v0, "comp":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 258
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 260
    const-string v2, "pkg"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->startActivity(Landroid/content/Intent;)V

    .line 262
    return-void
.end method

.method public onBtnClick()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->a:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$2;-><init>(Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 251
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904b9

    if-ne v0, v1, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->finish()V

    .line 228
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 23
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super/range {p0 .. p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v20, 0x7f030037

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->setContentView(I)V

    .line 95
    const v20, 0x7f020286

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const v21, 0x7f0d02b3

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 96
    const-string v20, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    .line 97
    .local v12, "nm":Landroid/app/NotificationManager;
    const/16 v20, 0x22b

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 98
    const v20, 0x7f0901b2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ExpandableListView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->a:Landroid/widget/ExpandableListView;

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->a:Landroid/widget/ExpandableListView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->h:Landroid/content/pm/PackageManager;

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string v21, "virusPackageNameList"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    if-eqz v20, :cond_4

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string v21, "virusPackageNameList"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->g:Ljava/util/ArrayList;

    .line 120
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v7, "errorList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->g:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 128
    .local v17, "virusPackageName":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->h:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    const/16 v21, 0x2000

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    .line 129
    .local v11, "mAppInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v16, Lcom/lenovo/safecenter/antivirus/domain/Virus;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->h:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/safecenter/antivirus/domain/Virus;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 131
    .local v16, "virus":Lcom/lenovo/safecenter/antivirus/domain/Virus;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->setVirusName(Ljava/lang/String;)V

    .line 132
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->setType(I)V

    .line 135
    invoke-static/range {v17 .. v17}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->getVirusDescKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, "desc":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_3

    .line 140
    :cond_2
    const v20, 0x7f0d0321

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 143
    :cond_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->setVirusDesc(Ljava/lang/String;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->c:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 146
    .end local v5    # "desc":Ljava/lang/String;
    .end local v11    # "mAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "virus":Lcom/lenovo/safecenter/antivirus/domain/Virus;
    :catch_0
    move-exception v6

    .line 147
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    if-eqz v17, :cond_1

    .line 149
    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v20, Lcom/lenovo/safecenter/antivirus/utils/ScanUtils;

    invoke-direct/range {v20 .. v20}, Lcom/lenovo/safecenter/antivirus/utils/ScanUtils;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/antivirus/utils/ScanUtils;->ExecError(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 109
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "errorList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v17    # "virusPackageName":Ljava/lang/String;
    :cond_4
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->g:Ljava/util/ArrayList;

    .line 110
    const-string v20, "viruspkgname"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 111
    .local v18, "virus_pkgname":Ljava/lang/String;
    const-string v20, ","

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 112
    .local v19, "virus_pkgname_split":[Ljava/lang/String;
    move-object/from16 v4, v19

    .local v4, "arr$":[Ljava/lang/String;
    array-length v10, v4

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_1
    if-ge v8, v10, :cond_0

    aget-object v13, v4, v8

    .line 114
    .local v13, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->g:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 155
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v10    # "len$":I
    .end local v13    # "str":Ljava/lang/String;
    .end local v18    # "virus_pkgname":Ljava/lang/String;
    .end local v19    # "virus_pkgname_split":[Ljava/lang/String;
    .restart local v7    # "errorList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v8, "i$":Ljava/util/Iterator;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->g:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_6

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_6

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->g:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 159
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->g:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-gtz v20, :cond_7

    .line 220
    :goto_2
    return-void

    .line 164
    :cond_7
    const v20, 0x7f0901b1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Button;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->b:Landroid/widget/Button;

    .line 165
    new-instance v20, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$a;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$a;-><init>(Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->i:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$a;

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->registerAction()V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->c:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_8

    .line 169
    const v20, 0x7f0d02e5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 170
    .local v14, "sureVirus":Ljava/lang/String;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->c:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-static {v14, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->f:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->e:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->c:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    .end local v14    # "sureVirus":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->d:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_9

    .line 176
    const v20, 0x7f0d02e6

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 177
    .local v15, "unsureVirus":Ljava/lang/String;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->d:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->f:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->e:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->d:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    .end local v15    # "unsureVirus":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->b:Landroid/widget/Button;

    move-object/from16 v20, v0

    new-instance v21, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$1;-><init>(Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    new-instance v20, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;-><init>(Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->j:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->a:Landroid/widget/ExpandableListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->j:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 215
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->f:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_a

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->a:Landroid/widget/ExpandableListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 215
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 219
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->onBtnClick()V

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    .line 323
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onDestroy()V

    .line 324
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->i:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$a;

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 325
    const-string v2, "onDestroy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v1, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->hasVirus:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "===="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "fromnotify"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    sget-boolean v1, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->hasVirus:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromnotify"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->isOpen:Z

    if-nez v1, :cond_0

    .line 328
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 329
    .local v0, "forceBroadcast":Landroid/content/Intent;
    const-string v1, "action.forcestop.antivirus"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 333
    .end local v0    # "forceBroadcast":Landroid/content/Intent;
    :cond_0
    return-void

    .line 325
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 318
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 319
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onPause()V

    .line 320
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 297
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onResume()V

    .line 298
    const/4 v0, 0x1

    .line 299
    .local v0, "allOperate":Z
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->e:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->e:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/antivirus/domain/Virus;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->isOperate()Z

    move-result v2

    if-nez v2, :cond_2

    .line 303
    const/4 v0, 0x0

    .line 307
    :cond_0
    if-eqz v0, :cond_1

    .line 310
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->b:Landroid/widget/Button;

    const v3, 0x7f0d049c

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 313
    :cond_1
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 314
    return-void

    .line 299
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 291
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onStart()V

    .line 293
    return-void
.end method

.method public registerAction()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 81
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->i:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$a;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    return-void
.end method

.method public removePackageActivity(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 338
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

    .line 339
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 340
    .local v1, "uninstallIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->startActivity(Landroid/content/Intent;)V

    .line 342
    return-void
.end method
