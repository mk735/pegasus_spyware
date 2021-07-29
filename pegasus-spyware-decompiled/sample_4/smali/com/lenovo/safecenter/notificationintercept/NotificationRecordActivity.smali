.class public Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;
.super Landroid/app/Activity;
.source "NotificationRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$c;,
        Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;,
        Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$b;
    }
.end annotation


# instance fields
.field private a:Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$b;

.field private b:Landroid/widget/ExpandableListView;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/pm/PackageManager;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/RelativeLayout;

.field private h:I

.field private i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->c:Ljava/util/List;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->h:I

    .line 302
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;

    .prologue
    .line 42
    iget v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->h:I

    return v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->h:I

    return p1
.end method

.method private a()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    .line 91
    iget-object v9, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->c:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 92
    new-instance v8, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;

    invoke-direct {v8, p0}, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;-><init>(Landroid/content/Context;)V

    .line 93
    .local v8, "recordDB":Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;
    invoke-virtual {v8}, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->findAll()Ljava/util/List;

    move-result-object v4

    .line 94
    .local v4, "findAll":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;>;"
    invoke-virtual {v8}, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->closeDatabase()V

    .line 95
    const-string v9, "yincc"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " findAll.size == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_1

    .line 97
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;

    .line 98
    .local v7, "record":Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;
    new-instance v2, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;-><init>(Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;)V

    .line 99
    .local v2, "bean":Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;
    iget-wide v9, v7, Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;->timestamp:J

    iput-wide v9, v2, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;->a:J

    .line 100
    iget-object v6, v7, Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;->pkgname:Ljava/lang/String;

    .line 102
    .local v6, "pkgname":Ljava/lang/String;
    iget-object v1, v7, Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;->applabel:Ljava/lang/String;

    .line 104
    .local v1, "applicationLabel":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->d:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 111
    .local v0, "applicationIcon":Landroid/graphics/drawable/Drawable;
    :goto_1
    iput-object v0, v2, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;->b:Landroid/graphics/drawable/Drawable;

    .line 112
    iput-object v1, v2, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;->c:Ljava/lang/CharSequence;

    .line 113
    const-string v9, ""

    iget-object v10, v7, Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;->notificationContent:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 114
    const v9, 0x7f0d0639

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;->d:Ljava/lang/CharSequence;

    .line 118
    :goto_2
    iget-object v9, v7, Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;->pkgname:Ljava/lang/String;

    iput-object v9, v2, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;->e:Ljava/lang/String;

    .line 119
    iget v9, v7, Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;->_id:I

    iput v9, v2, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;->f:I

    .line 120
    iget v9, v7, Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;->recordPermission:I

    iput v9, v2, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;->g:I

    .line 121
    iget-object v9, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->c:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "applicationIcon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v3

    .line 106
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 107
    const-string v9, "yincc"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " NameNotFoundException !"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f02017b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "applicationIcon":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 116
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget-object v9, v7, Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;->notificationContent:Ljava/lang/String;

    iput-object v9, v2, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;->d:Ljava/lang/CharSequence;

    goto :goto_2

    .line 124
    .end local v0    # "applicationIcon":Landroid/graphics/drawable/Drawable;
    .end local v1    # "applicationLabel":Ljava/lang/String;
    .end local v2    # "bean":Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;
    .end local v6    # "pkgname":Ljava/lang/String;
    .end local v7    # "record":Lcom/lenovo/safecenter/notificationintercept/support/InterceptRecord;
    :cond_1
    iget-object v9, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->c:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 125
    iget-object v9, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 126
    iget-object v9, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    iget-object v9, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    :goto_3
    return-void

    .line 129
    :cond_2
    iget-object v9, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 130
    iget-object v9, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 131
    iget-object v9, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method static synthetic b(Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;)Landroid/widget/ExpandableListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->b:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->c:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 309
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 310
    invoke-virtual {p0}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->finish()V

    .line 311
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 314
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 371
    :goto_0
    return-void

    .line 316
    :sswitch_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->finish()V

    goto :goto_0

    .line 319
    :sswitch_1
    new-instance v3, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;-><init>(Landroid/content/Context;)V

    .line 320
    .local v3, "pDB":Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;
    iget-object v8, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->c:Ljava/util/List;

    iget v9, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->h:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;

    .line 321
    .local v2, "notiBean":Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;
    iget-object v4, v2, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;->e:Ljava/lang/String;

    .line 322
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->findByName(Ljava/lang/String;)Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;

    move-result-object v1

    .line 323
    .local v1, "findByName":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 324
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "pkgname"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v8, "permission"

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    iget v8, v1, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->_id:I

    invoke-virtual {v3, v8, v7}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->update(ILandroid/content/ContentValues;)V

    .line 327
    invoke-virtual {v3}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->closeDatabase()V

    .line 328
    iget-object v8, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->b:Landroid/widget/ExpandableListView;

    iget v9, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->h:I

    invoke-virtual {v8, v9}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 329
    invoke-static {p0, v4}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->killProcess(Landroid/content/Context;Ljava/lang/String;)V

    .line 330
    const v8, 0x7f0d064b

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    iget-object v10, v2, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;->c:Ljava/lang/CharSequence;

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 334
    .end local v1    # "findByName":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    .end local v2    # "notiBean":Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;
    .end local v3    # "pDB":Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v7    # "values":Landroid/content/ContentValues;
    :sswitch_2
    iget-object v8, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->c:Ljava/util/List;

    iget v9, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->h:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;

    .line 335
    .local v6, "removeBean":Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 336
    .restart local v7    # "values":Landroid/content/ContentValues;
    const-string v8, "pkgname"

    iget-object v9, v6, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;->e:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v8, "permission"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    new-instance v3, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;-><init>(Landroid/content/Context;)V

    .line 339
    .restart local v3    # "pDB":Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;
    iget-object v8, v6, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;->e:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->findByName(Ljava/lang/String;)Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;

    move-result-object v1

    .line 340
    .restart local v1    # "findByName":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    iget v8, v1, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->_id:I

    invoke-virtual {v3, v8, v7}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->update(ILandroid/content/ContentValues;)V

    .line 341
    invoke-virtual {v3}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->closeDatabase()V

    .line 342
    iget-object v8, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->b:Landroid/widget/ExpandableListView;

    iget v9, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->h:I

    invoke-virtual {v8, v9}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 343
    invoke-direct {p0}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->a()V

    .line 344
    iget-object v8, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$b;

    invoke-virtual {v8}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$b;->notifyDataSetChanged()V

    .line 345
    const v8, 0x7f0d064a

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    iget-object v10, v6, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;->c:Ljava/lang/CharSequence;

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 350
    .end local v1    # "findByName":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    .end local v3    # "pDB":Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;
    .end local v6    # "removeBean":Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;
    .end local v7    # "values":Landroid/content/ContentValues;
    :sswitch_3
    :try_start_0
    iget-object v8, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->c:Ljava/util/List;

    iget v9, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->h:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;

    .line 351
    .restart local v6    # "removeBean":Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;
    new-instance v0, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;-><init>(Landroid/content/Context;)V

    .line 352
    .local v0, "db":Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;
    iget v8, v6, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;->f:I

    invoke-virtual {v0, v8}, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->delete(I)V

    .line 353
    invoke-virtual {v0}, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->closeDatabase()V

    .line 354
    iget-object v8, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->b:Landroid/widget/ExpandableListView;

    iget v9, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->h:I

    invoke-virtual {v8, v9}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 355
    const/4 v8, -0x1

    iput v8, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->h:I

    .line 356
    invoke-direct {p0}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->a()V

    .line 357
    iget-object v8, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$b;

    invoke-virtual {v8}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$b;->notifyDataSetChanged()V

    .line 358
    iget-wide v8, v6, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;->a:J

    invoke-static {v8, v9}, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->updateRecordListRemove(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 362
    .end local v0    # "db":Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;
    .end local v6    # "removeBean":Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;
    :catch_0
    move-exception v8

    goto/16 :goto_0

    .line 364
    :sswitch_4
    new-instance v5, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;

    invoke-direct {v5, p0}, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;-><init>(Landroid/content/Context;)V

    .line 365
    .local v5, "recordDB":Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;
    invoke-virtual {v5}, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->deleteAll()I

    .line 366
    invoke-virtual {v5}, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->closeDatabase()V

    .line 367
    const v8, 0x7f0d0645

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 368
    invoke-direct {p0}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->a()V

    .line 369
    iget-object v8, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$b;

    invoke-virtual {v8}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$b;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 314
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09044a -> :sswitch_1
        0x7f09044b -> :sswitch_2
        0x7f09044c -> :sswitch_3
        0x7f09046b -> :sswitch_4
        0x7f0905ad -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->requestWindowFeature(I)Z

    .line 58
    const v0, 0x7f0300cd

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->setContentView(I)V

    .line 59
    const v0, 0x7f090590

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->i:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0905ad

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v0, 0x7f09046b

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v0, 0x7f090469

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->g:Landroid/widget/RelativeLayout;

    .line 63
    const v0, 0x7f09046a

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->f:Landroid/widget/LinearLayout;

    .line 64
    const v0, 0x7f090461

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->e:Landroid/widget/ImageView;

    .line 65
    const v0, 0x7f090468

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->b:Landroid/widget/ExpandableListView;

    .line 67
    invoke-virtual {p0}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->d:Landroid/content/pm/PackageManager;

    .line 68
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->i:Landroid/widget/TextView;

    const v1, 0x7f0d0635

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 79
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 80
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "intercept_new_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 82
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 73
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 74
    invoke-direct {p0}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->a()V

    .line 75
    new-instance v0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$b;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$b;-><init>(Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$b;

    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->b:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$b;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->b:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->b:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$1;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$1;-><init>(Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 76
    return-void
.end method
