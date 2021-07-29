.class public Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;
.super Landroid/app/Activity;
.source "NotificationTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$a;,
        Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$d;,
        Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$b;,
        Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;,
        Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$e;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/RadioGroup;

.field private b:Landroid/widget/RadioButton;

.field private c:Landroid/widget/RadioButton;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/view/LayoutInflater;

.field private h:I

.field private i:Landroid/content/pm/PackageManager;

.field private j:Landroid/widget/ExpandableListView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$b;

.field private o:Landroid/app/ProgressDialog;

.field private p:Landroid/widget/ToggleButton;

.field private q:Landroid/widget/RelativeLayout;

.field private r:Landroid/widget/LinearLayout;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/support/v4/view/ViewPager;

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private w:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->h:I

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->m:Ljava/util/List;

    .line 101
    new-instance v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$1;-><init>(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->w:Landroid/os/Handler;

    .line 631
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->h:I

    return p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;
    .param p1, "x1"    # Landroid/view/LayoutInflater;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->g:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->p:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method private a()V
    .locals 23

    .prologue
    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->m:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    .line 282
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v4, "allowList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v11, "forbidList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->i:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v17

    .line 285
    .local v17, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v18, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;-><init>(Landroid/content/Context;)V

    .line 286
    .local v18, "permissionDB":Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;
    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->findAll()Ljava/util/List;

    move-result-object v10

    .line 287
    .local v10, "findAll":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;>;"
    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->closeDatabase()V

    .line 288
    new-instance v8, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;-><init>(Landroid/content/Context;)V

    .line 289
    .local v8, "db":Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;
    invoke-virtual {v8}, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->findAll()Ljava/util/List;

    move-result-object v2

    .line 290
    .local v2, "adBeans":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;>;"
    invoke-virtual {v8}, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->closeDatabase()V

    .line 292
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v12, v0, :cond_5

    .line 293
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;

    .line 294
    .local v14, "interceptPermission":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    new-instance v7, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;-><init>(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)V

    .line 295
    .local v7, "bean":Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;
    iget-object v0, v14, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->pkgname:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 297
    .local v19, "pkgname":Ljava/lang/String;
    const-string v6, ""

    .line 299
    .local v6, "applicationLabel":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->i:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 306
    .local v5, "applicationIcon":Landroid/graphics/drawable/Drawable;
    :try_start_1
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/PackageInfo;

    .line 307
    .local v16, "packageInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 308
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->i:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 316
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_1
    iput-object v5, v7, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;->b:Landroid/graphics/drawable/Drawable;

    .line 317
    iput-object v6, v7, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;->d:Ljava/lang/String;

    .line 318
    iget v0, v14, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->permission:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v7, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;->c:I

    .line 319
    iget-object v0, v14, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->pkgname:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v7, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;->e:Ljava/lang/String;

    .line 320
    iget v0, v14, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->_id:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v7, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;->a:I

    .line 321
    const/16 v20, 0x0

    .line 322
    .local v20, "pushAd":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;

    .line 323
    .local v15, "nBean":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    invoke-virtual {v15}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->getPkgName()Ljava/lang/String;

    move-result-object v21

    iget-object v0, v14, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->pkgname:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 324
    const/16 v20, 0x1

    .line 328
    .end local v15    # "nBean":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    :cond_3
    move/from16 v0, v20

    iput-boolean v0, v7, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;->f:Z

    .line 329
    iget v0, v7, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;->c:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 330
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    .end local v5    # "applicationIcon":Landroid/graphics/drawable/Drawable;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v20    # "pushAd":Z
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 300
    :catch_0
    move-exception v9

    .line 302
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 332
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "applicationIcon":Landroid/graphics/drawable/Drawable;
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v20    # "pushAd":Z
    :cond_4
    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 335
    .end local v5    # "applicationIcon":Landroid/graphics/drawable/Drawable;
    .end local v6    # "applicationLabel":Ljava/lang/String;
    .end local v7    # "bean":Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "interceptPermission":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    .end local v19    # "pkgname":Ljava/lang/String;
    .end local v20    # "pushAd":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->m:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->m:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->m:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    if-nez v21, :cond_6

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->r:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->j:Landroid/widget/ExpandableListView;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 346
    :goto_3
    return-void

    .line 343
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->r:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->j:Landroid/widget/ExpandableListView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    goto :goto_3

    .line 313
    .restart local v5    # "applicationIcon":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "applicationLabel":Ljava/lang/String;
    .restart local v7    # "bean":Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;
    .restart local v14    # "interceptPermission":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    .restart local v19    # "pkgname":Ljava/lang/String;
    :catch_1
    move-exception v21

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->o:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->o:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->v:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->b:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->c:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->m:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)Landroid/widget/ExpandableListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->j:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    .prologue
    .line 64
    iget v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->h:I

    return v0
.end method

.method public static isApnProxySet(Landroid/content/Context;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 681
    const/4 v12, 0x0

    .line 683
    .local v12, "result":Z
    :try_start_0
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 684
    .local v1, "defaultApnUri":Landroid/net/Uri;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "name"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "proxy"

    aput-object v3, v2, v0

    .line 686
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 689
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 691
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 692
    .local v9, "nameColumn":I
    const-string v0, "proxy"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 694
    .local v11, "proxyColumn":I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 697
    .local v8, "name":Ljava/lang/String;
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 698
    .local v10, "proxy":Ljava/lang/String;
    const-string v0, "yincc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has proxy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const-string v0, "\\s*"

    invoke-virtual {v10, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 701
    const/4 v12, 0x1

    .line 704
    .end local v8    # "name":Ljava/lang/String;
    .end local v10    # "proxy":Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 712
    .end local v1    # "defaultApnUri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "nameColumn":I
    .end local v11    # "proxyColumn":I
    :goto_0
    return v12

    .line 706
    .restart local v1    # "defaultApnUri":Landroid/net/Uri;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    const-string v0, "yincc"

    const-string v3, "Could not get APN cursor!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 708
    .end local v1    # "defaultApnUri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 709
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "yincc"

    const-string v3, "Error on get APN!"

    invoke-static {v0, v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic j(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->g:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 718
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 719
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 517
    packed-switch p2, :pswitch_data_0

    .line 542
    :goto_0
    return-void

    .line 519
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->u:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 535
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->u:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 517
    :pswitch_data_0
    .packed-switch 0x7f090455
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 551
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0905ad

    if-ne v3, v4, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->finish()V

    .line 611
    :goto_0
    return-void

    .line 554
    :cond_0
    sget-boolean v3, Lcom/lenovo/performancecenter/coreui/util/Utils;->isPerfRoot:Z

    if-nez v3, :cond_1

    .line 555
    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->k:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->l:Landroid/widget/TextView;

    const v4, 0x7f0d062a

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 558
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 563
    :sswitch_0
    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->m:Ljava/util/List;

    iget v4, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->h:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;

    .line 564
    .local v2, "permissionBean":Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;
    iget-object v3, v2, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;->e:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->notificationForbid(Landroid/content/Context;Ljava/lang/String;)V

    .line 571
    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->j:Landroid/widget/ExpandableListView;

    iget v4, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->h:I

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 572
    invoke-direct {p0}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->a()V

    .line 573
    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->n:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$b;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$b;->notifyDataSetChanged()V

    .line 574
    iget-object v3, v2, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;->e:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->killProcess(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 560
    .end local v2    # "permissionBean":Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;
    :sswitch_1
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/lenovo/safecenter/notificationintercept/AdManager;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 578
    :sswitch_2
    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->m:Ljava/util/List;

    iget v4, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->h:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;

    .line 579
    .restart local v2    # "permissionBean":Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;
    iget-object v3, v2, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;->e:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->notificationAllow(Landroid/content/Context;Ljava/lang/String;)V

    .line 586
    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->j:Landroid/widget/ExpandableListView;

    iget v4, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->h:I

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 587
    invoke-direct {p0}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->a()V

    .line 588
    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->n:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$b;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$b;->notifyDataSetChanged()V

    goto :goto_0

    .line 592
    .end local v2    # "permissionBean":Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;
    :sswitch_3
    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->m:Ljava/util/List;

    iget v4, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->h:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;

    .line 593
    .restart local v2    # "permissionBean":Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DELETE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 595
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 599
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "permissionBean":Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$c;
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 601
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 605
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_5
    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->p:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    .line 606
    .local v1, "mChecked":Z
    if-nez v1, :cond_3

    .line 607
    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->o:Landroid/app/ProgressDialog;

    if-nez v3, :cond_2

    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->o:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->o:Landroid/app/ProgressDialog;

    const v4, 0x7f0d0528

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->o:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->o:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->o:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    :cond_2
    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->w:Landroid/os/Handler;

    invoke-static {p0, v3}, Lcom/lenovo/safecenter/notificationintercept/UrlOptionUtils;->replaceURL(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 609
    :cond_3
    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->w:Landroid/os/Handler;

    invoke-static {p0, v3}, Lcom/lenovo/safecenter/notificationintercept/UrlOptionUtils;->resumeURL(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 558
    :sswitch_data_0
    .sparse-switch
        0x7f09044a -> :sswitch_0
        0x7f09044b -> :sswitch_2
        0x7f09044c -> :sswitch_3
        0x7f090458 -> :sswitch_5
        0x7f090462 -> :sswitch_4
        0x7f0905ae -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 160
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 161
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->requestWindowFeature(I)Z

    .line 162
    const v2, 0x7f0300c7

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->setContentView(I)V

    .line 163
    const v2, 0x7f090454

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->a:Landroid/widget/RadioGroup;

    .line 164
    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v2, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 165
    const v2, 0x7f090455

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->b:Landroid/widget/RadioButton;

    .line 166
    const v2, 0x7f090456

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->c:Landroid/widget/RadioButton;

    .line 167
    const v2, 0x7f090457

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->u:Landroid/support/v4/view/ViewPager;

    .line 168
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->g:Landroid/view/LayoutInflater;

    .line 169
    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->g:Landroid/view/LayoutInflater;

    const v3, 0x7f0300ca

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 170
    .local v1, "notiView":Landroid/view/View;
    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->g:Landroid/view/LayoutInflater;

    const v3, 0x7f0300c8

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 172
    .local v0, "adView":Landroid/view/View;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->v:Ljava/util/List;

    .line 173
    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->v:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->v:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->u:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$e;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$e;-><init>(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 176
    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->u:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$2;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$2;-><init>(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 188
    const v2, 0x7f090590

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->d:Landroid/widget/TextView;

    .line 189
    const v2, 0x7f0905ad

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->e:Landroid/widget/ImageView;

    .line 190
    const v2, 0x7f0905ae

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->f:Landroid/widget/ImageView;

    .line 191
    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->d:Landroid/widget/TextView;

    const v3, 0x7f0d04d5

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    const v2, 0x7f090052

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->k:Landroid/widget/TextView;

    .line 197
    const v2, 0x7f090053

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->l:Landroid/widget/TextView;

    .line 200
    const v2, 0x7f09045f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListView;

    iput-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->j:Landroid/widget/ExpandableListView;

    .line 201
    const v2, 0x7f090464

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->t:Landroid/widget/TextView;

    .line 202
    const v2, 0x7f090462

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    const v2, 0x7f090460

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->r:Landroid/widget/LinearLayout;

    .line 206
    const v2, 0x7f090459

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->p:Landroid/widget/ToggleButton;

    .line 207
    const v2, 0x7f090458

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->q:Landroid/widget/RelativeLayout;

    .line 208
    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->p:Landroid/widget/ToggleButton;

    invoke-static {p0}, Lcom/lenovo/safecenter/notificationintercept/UrlOptionUtils;->isAdOpen(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 210
    const v2, 0x7f09045b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->s:Landroid/widget/TextView;

    .line 212
    invoke-virtual {p0}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->i:Landroid/content/pm/PackageManager;

    .line 213
    invoke-static {}, Lcom/lenovo/safecenter/utils/WflUtils;->isRoot()Z

    move-result v2

    sput-boolean v2, Lcom/lenovo/performancecenter/coreui/util/Utils;->isPerfRoot:Z

    .line 214
    sget-boolean v2, Lcom/lenovo/performancecenter/coreui/util/Utils;->isPerfRoot:Z

    if-nez v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->k:Landroid/widget/TextView;

    const v3, 0x7f0d062a

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 218
    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->j:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v5}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 219
    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 248
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 249
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 250
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 224
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 225
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 226
    sget-boolean v3, Lcom/lenovo/performancecenter/coreui/util/Utils;->isPerfRoot:Z

    if-eqz v3, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 228
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    const-string v3, "tab"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 229
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 230
    .local v2, "manager":Landroid/app/NotificationManager;
    const v3, 0x208d3

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 232
    .end local v2    # "manager":Landroid/app/NotificationManager;
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->a()V

    .line 233
    new-instance v3, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$b;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$b;-><init>(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)V

    iput-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->n:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$b;

    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->j:Landroid/widget/ExpandableListView;

    iget-object v4, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->n:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$b;

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->j:Landroid/widget/ExpandableListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->j:Landroid/widget/ExpandableListView;

    new-instance v4, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$3;

    invoke-direct {v4, p0}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$3;-><init>(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 234
    new-instance v0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;-><init>(Landroid/content/Context;)V

    .line 236
    .local v0, "db":Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->closeDatabase()V

    .line 238
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "intercept_new_count"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_3

    iget-object v4, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v4, 0x64

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->t:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    :goto_0
    invoke-static {p0}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->isApnProxySet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 240
    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    .end local v0    # "db":Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 238
    .restart local v0    # "db":Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->t:Landroid/widget/TextView;

    const-string v4, "99+"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 242
    :cond_4
    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
