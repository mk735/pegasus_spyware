.class public Lcom/lenovo/install/InstallProgress;
.super Landroid/app/Activity;
.source "InstallProgress.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/install/InstallProgress$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/lenovo/install/InstallProgress$a;

.field private c:Landroid/content/pm/PackageParser$Package;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/widget/RelativeLayout;

.field private q:Z

.field private r:Landroid/content/Intent;

.field private s:Z

.field private t:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/install/InstallProgress;->a:I

    .line 37
    new-instance v0, Lcom/lenovo/install/InstallProgress$a;

    invoke-direct {v0, p0}, Lcom/lenovo/install/InstallProgress$a;-><init>(Lcom/lenovo/install/InstallProgress;)V

    iput-object v0, p0, Lcom/lenovo/install/InstallProgress;->b:Lcom/lenovo/install/InstallProgress$a;

    .line 221
    iput-boolean v1, p0, Lcom/lenovo/install/InstallProgress;->s:Z

    .line 222
    iput-boolean v1, p0, Lcom/lenovo/install/InstallProgress;->t:Z

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/lenovo/install/InstallProgress;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/install/InstallProgress;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lenovo/install/InstallProgress;->r:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/install/InstallProgress;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallProgress;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/lenovo/install/InstallProgress;->q:Z

    return v0
.end method

.method static synthetic a(Lcom/lenovo/install/InstallProgress;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/install/InstallProgress;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/lenovo/install/InstallProgress;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/lenovo/install/InstallProgress;)Landroid/content/pm/PackageParser$Package;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallProgress;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->c:Landroid/content/pm/PackageParser$Package;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/install/InstallProgress;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallProgress;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->p:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/install/InstallProgress;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallProgress;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/install/InstallProgress;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallProgress;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/install/InstallProgress;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallProgress;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->r:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/install/InstallProgress;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallProgress;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/install/InstallProgress;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallProgress;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->o:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/install/InstallProgress;)Lcom/lenovo/install/InstallProgress$a;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/install/InstallProgress;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->b:Lcom/lenovo/install/InstallProgress$a;

    return-object v0
.end method


# virtual methods
.method public findView()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 193
    const v0, 0x7f090355

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/install/InstallProgress;->d:Landroid/widget/ImageView;

    .line 194
    const v0, 0x7f0901d8

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/install/InstallProgress;->i:Landroid/widget/TextView;

    .line 195
    const v0, 0x7f09038d

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/install/InstallProgress;->o:Landroid/widget/RelativeLayout;

    .line 196
    const v0, 0x7f090389

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/install/InstallProgress;->p:Landroid/widget/RelativeLayout;

    .line 197
    const v0, 0x7f0902b3

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/install/InstallProgress;->j:Landroid/widget/TextView;

    .line 198
    const v0, 0x7f09036f

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/install/InstallProgress;->k:Landroid/widget/TextView;

    .line 199
    const v0, 0x7f09035b

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/install/InstallProgress;->l:Landroid/widget/TextView;

    .line 200
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->l:Landroid/widget/TextView;

    const v2, 0x7f0d077f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 202
    const v0, 0x7f09038f

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/install/InstallProgress;->e:Landroid/widget/ImageView;

    .line 203
    const v0, 0x7f09038b

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/install/InstallProgress;->f:Landroid/widget/ImageView;

    .line 204
    const v0, 0x7f090387

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/install/InstallProgress;->g:Landroid/widget/ImageView;

    .line 205
    const v0, 0x7f090388

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/install/InstallProgress;->h:Landroid/widget/ImageView;

    .line 207
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 208
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 211
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    const v0, 0x7f09038c

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/install/InstallProgress;->m:Landroid/widget/TextView;

    .line 216
    const v0, 0x7f090390

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/install/InstallProgress;->n:Landroid/widget/TextView;

    .line 217
    const v0, 0x7f090384

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallProgress;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/install/InstallProgress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "has_virus"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallProgress;->translate(Landroid/widget/ImageView;)V

    .line 219
    return-void

    .line 217
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getBootAppInfoFromRealAllCls(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgname"    # Ljava/lang/String;

    .prologue
    .line 373
    const/4 v7, 0x2

    new-array v6, v7, [Ljava/lang/String;

    .line 374
    .local v6, "strs":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 375
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 376
    .local v2, "intent":Landroid/content/Intent;
    const/16 v7, 0x258

    invoke-virtual {v3, v2, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 378
    .local v5, "resolves":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 380
    .local v4, "resolve":Landroid/content/pm/ResolveInfo;
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 381
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_0

    .line 391
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 393
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .line 394
    const/4 v7, 0x0

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v8, v6, v7

    .line 395
    const/4 v7, 0x1

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    .line 402
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "resolve":Landroid/content/pm/ResolveInfo;
    .end local v6    # "strs":[Ljava/lang/String;
    :goto_0
    return-object v6

    .restart local v6    # "strs":[Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public initAdv(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 356
    invoke-static {p0, p1}, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->getNotificationAllow(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/install/InstallProgress;->t:Z

    .line 359
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->e:Landroid/widget/ImageView;

    const v1, 0x7f02010e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 360
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->n:Landroid/widget/TextView;

    const v1, 0x7f0d0793

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 369
    :goto_0
    return-void

    .line 364
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/install/InstallProgress;->t:Z

    .line 365
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->e:Landroid/widget/ImageView;

    const v1, 0x7f02010d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 366
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->n:Landroid/widget/TextView;

    const v1, 0x7f0d0795

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public initBoot(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 330
    invoke-virtual {p0}, Lcom/lenovo/install/InstallProgress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "has_boot"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    invoke-static {p0, p1}, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate;->isAppCanBoot(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/install/InstallProgress;->s:Z

    .line 336
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->f:Landroid/widget/ImageView;

    const v1, 0x7f02010e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 337
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->m:Landroid/widget/TextView;

    const v1, 0x7f0d0792

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iput-boolean v2, p0, Lcom/lenovo/install/InstallProgress;->s:Z

    .line 343
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->f:Landroid/widget/ImageView;

    const v1, 0x7f02010d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 344
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->m:Landroid/widget/TextView;

    const v1, 0x7f0d0794

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v4, 0x7f02010e

    const v1, 0x7f02010d

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 274
    :goto_0
    return-void

    .line 227
    :sswitch_0
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->c:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallProgress;->updateData(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/lenovo/install/InstallProgress;->finish()V

    goto :goto_0

    .line 233
    :sswitch_1
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->c:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallProgress;->updateData(Ljava/lang/String;)V

    .line 234
    const-string v0, "www"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/install/InstallProgress;->r:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/install/InstallProgress;->r:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 235
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->r:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/lenovo/install/InstallProgress;->startActivity(Landroid/content/Intent;)V

    .line 236
    invoke-virtual {p0}, Lcom/lenovo/install/InstallProgress;->finish()V

    goto :goto_0

    .line 243
    :sswitch_2
    iget-boolean v0, p0, Lcom/lenovo/install/InstallProgress;->s:Z

    if-eqz v0, :cond_0

    .line 245
    iput-boolean v2, p0, Lcom/lenovo/install/InstallProgress;->s:Z

    .line 246
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 247
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->m:Landroid/widget/TextView;

    const v1, 0x7f0d0794

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 248
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->c:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/lenovo/install/InstallProgress;->getBootAppInfoFromRealAllCls(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate;->setAppBoot(Landroid/content/Context;[Ljava/lang/String;Z)V

    goto :goto_0

    .line 252
    :cond_0
    iput-boolean v3, p0, Lcom/lenovo/install/InstallProgress;->s:Z

    .line 253
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 254
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->m:Landroid/widget/TextView;

    const v1, 0x7f0d0792

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 255
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->c:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/lenovo/install/InstallProgress;->getBootAppInfoFromRealAllCls(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate;->setAppBoot(Landroid/content/Context;[Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 260
    :sswitch_3
    iget-boolean v0, p0, Lcom/lenovo/install/InstallProgress;->t:Z

    if-eqz v0, :cond_1

    .line 262
    iput-boolean v2, p0, Lcom/lenovo/install/InstallProgress;->t:Z

    .line 263
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 264
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->n:Landroid/widget/TextView;

    const v1, 0x7f0d0795

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 268
    :cond_1
    iput-boolean v3, p0, Lcom/lenovo/install/InstallProgress;->t:Z

    .line 269
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 270
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->n:Landroid/widget/TextView;

    const v1, 0x7f0d0793

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 225
    :sswitch_data_0
    .sparse-switch
        0x7f0902b3 -> :sswitch_0
        0x7f09036f -> :sswitch_1
        0x7f09038b -> :sswitch_2
        0x7f09038f -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    const v2, 0x7f030091

    invoke-virtual {p0, v2}, Lcom/lenovo/install/InstallProgress;->setContentView(I)V

    .line 157
    invoke-virtual {p0}, Lcom/lenovo/install/InstallProgress;->findView()V

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/install/InstallProgress;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "uri"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/install/PackageUtil;->getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/install/InstallProgress;->c:Landroid/content/pm/PackageParser$Package;

    .line 160
    iget-object v2, p0, Lcom/lenovo/install/InstallProgress;->c:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/lenovo/install/InstallProgress;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "uri"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/lenovo/install/PackageUtil;->getAppSnippet(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/net/Uri;)Lcom/lenovo/install/PackageUtil$AppSnippet;

    move-result-object v0

    .line 162
    .local v0, "as":Lcom/lenovo/install/PackageUtil$AppSnippet;
    iget-object v2, p0, Lcom/lenovo/install/InstallProgress;->d:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/lenovo/install/PackageUtil$AppSnippet;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    iget-object v2, p0, Lcom/lenovo/install/InstallProgress;->i:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/lenovo/install/PackageUtil$AppSnippet;->a:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    new-instance v2, Lcom/lenovo/install/InstallProgress$1;

    invoke-direct {v2, p0}, Lcom/lenovo/install/InstallProgress$1;-><init>(Lcom/lenovo/install/InstallProgress;)V

    invoke-virtual {v2}, Lcom/lenovo/install/InstallProgress$1;->start()V

    .line 180
    .end local v0    # "as":Lcom/lenovo/install/PackageUtil$AppSnippet;
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    invoke-virtual {p0}, Lcom/lenovo/install/InstallProgress;->finish()V

    goto :goto_0
.end method

.method public translate(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 185
    const v1, 0x7f04000d

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 186
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 187
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 188
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 189
    return-void
.end method

.method public updateData(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/lenovo/install/InstallProgress;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 313
    iget-boolean v0, p0, Lcom/lenovo/install/InstallProgress;->t:Z

    if-eqz v0, :cond_1

    .line 315
    invoke-static {p0, p1}, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->notificationAllow(Landroid/content/Context;Ljava/lang/String;)V

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    invoke-static {p0, p1}, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->notificationForbid(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
