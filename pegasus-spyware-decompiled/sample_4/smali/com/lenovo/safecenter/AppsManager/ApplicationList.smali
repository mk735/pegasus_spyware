.class public Lcom/lenovo/safecenter/AppsManager/ApplicationList;
.super Landroid/app/Activity;
.source "ApplicationList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final CHANGE_BACKGROUND:I = 0x7


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Context;

.field private f:Landroid/content/pm/PackageManager;

.field private g:Lcom/lenovo/safecenter/database/AppDatabase;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/lenovo/safecenter/adapter/PermAdapter;

.field private j:Landroid/widget/ListView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/ProgressBar;

.field private u:Ljava/lang/String;

.field private v:I

.field private w:I

.field private x:Z

.field private y:Landroid/os/Handler;

.field private z:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->a:Ljava/lang/String;

    .line 41
    const-string v0, "android.intent.action.NEW_OUTGOING_CALL"

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->b:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->c:Ljava/util/List;

    .line 43
    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->d:Ljava/util/List;

    .line 47
    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->g:Lcom/lenovo/safecenter/database/AppDatabase;

    .line 63
    new-instance v0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/AppsManager/ApplicationList$1;-><init>(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->y:Landroid/os/Handler;

    .line 211
    new-instance v0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$3;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/AppsManager/ApplicationList$3;-><init>(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->z:Landroid/widget/AdapterView$OnItemClickListener;

    .line 38
    return-void
.end method

.method static synthetic a(Ljava/util/List;Ljava/lang/String;)I
    .locals 2
    .param p0, "x1"    # Ljava/util/List;
    .param p1, "x2"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "broadcast"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    .local v3, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->f:Landroid/content/pm/PackageManager;

    const/16 v8, 0x258

    invoke-virtual {v7, v3, v8}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 400
    .local v6, "resolves":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 401
    .local v5, "resolve":Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 402
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_0

    .line 403
    new-instance v1, Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .local v1, "component":Landroid/content/ComponentName;
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 409
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v5    # "resolve":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v4
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)V
    .locals 8
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    .prologue
    const v7, 0x7f0d053d

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    const-string v0, ""

    iget-boolean v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->x:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->u:Ljava/lang/String;

    const-string v2, "privacy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    iget v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->v:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0d03ea

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->w:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->u:Ljava/lang/String;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    iget v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->v:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0d03eb

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->w:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->u:Ljava/lang/String;

    const-string v2, "device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    iget v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->v:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0d03ec

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->w:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->u:Ljava/lang/String;

    const-string v2, "sendmessage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    iget v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->v:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0d00d1

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->w:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->u:Ljava/lang/String;

    const-string v2, "call_phone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    iget v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->v:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0d00d2

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->w:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/ApplicationList;Lcom/lenovo/safecenter/support/AppInfo;Z)V
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/ApplicationList;
    .param p1, "x1"    # Lcom/lenovo/safecenter/support/AppInfo;
    .param p2, "x2"    # Z

    .prologue
    .line 38
    if-nez p2, :cond_3

    const/4 v0, 0x0

    iput v0, p1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->g:Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->u:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/database/AppDatabase;->updateApp(Lcom/lenovo/safecenter/support/AppInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->u:Ljava/lang/String;

    const-string v1, "privacy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->c:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->b(Ljava/util/List;Lcom/lenovo/safecenter/support/AppInfo;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->u:Ljava/lang/String;

    const-string v1, "device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->d:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->b(Ljava/util/List;Lcom/lenovo/safecenter/support/AppInfo;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->u:Ljava/lang/String;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.wochacha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$6;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/AppsManager/ApplicationList$6;-><init>(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/AppsManager/ApplicationList$6;->start()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput v0, p1, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->g:Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->u:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/database/AppDatabase;->updateApp(Lcom/lenovo/safecenter/support/AppInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->u:Ljava/lang/String;

    const-string v1, "privacy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->c:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->a(Ljava/util/List;Lcom/lenovo/safecenter/support/AppInfo;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->u:Ljava/lang/String;

    const-string v1, "device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->d:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->a(Ljava/util/List;Lcom/lenovo/safecenter/support/AppInfo;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->u:Ljava/lang/String;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.wochacha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$7;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/AppsManager/ApplicationList$7;-><init>(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/AppsManager/ApplicationList$7;->start()V

    goto :goto_0
.end method

.method private a(Ljava/util/List;Lcom/lenovo/safecenter/support/AppInfo;)V
    .locals 1
    .param p2, "appInfo"    # Lcom/lenovo/safecenter/support/AppInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 423
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/lenovo/safecenter/AppsManager/ApplicationList$10;-><init>(Lcom/lenovo/safecenter/AppsManager/ApplicationList;Ljava/util/List;Lcom/lenovo/safecenter/support/AppInfo;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/AppsManager/ApplicationList$10;->start()V

    .line 433
    return-void
.end method

.method static synthetic b(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->w:I

    return v0
.end method

.method private b(Ljava/util/List;Lcom/lenovo/safecenter/support/AppInfo;)V
    .locals 1
    .param p2, "appInfo"    # Lcom/lenovo/safecenter/support/AppInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 436
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/lenovo/safecenter/AppsManager/ApplicationList$2;-><init>(Lcom/lenovo/safecenter/AppsManager/ApplicationList;Ljava/util/List;Lcom/lenovo/safecenter/support/AppInfo;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/AppsManager/ApplicationList$2;->start()V

    .line 446
    return-void
.end method

.method static synthetic c(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->v:I

    return v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->x:Z

    return v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->y:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic k(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->w:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->w:I

    return v0
.end method

.method static synthetic l(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->w:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->w:I

    return v0
.end method

.method static synthetic m(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->j:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic n(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->t:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic o(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    .prologue
    const/4 v2, 0x1

    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    new-instance v0, Lcom/lenovo/safecenter/adapter/PermAdapter;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->h:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/safecenter/adapter/PermAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->i:Lcom/lenovo/safecenter/adapter/PermAdapter;

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->i:Lcom/lenovo/safecenter/adapter/PermAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->l:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->z:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->x:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic p(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->u:Ljava/lang/String;

    const-string v1, "privacy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->c:Ljava/util/List;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->g:Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->u:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->x:Z

    invoke-virtual {v0, p0, v1, v2}, Lcom/lenovo/safecenter/database/AppDatabase;->loadApps(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->h:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->v:I

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->v:I

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/AppInfo;

    iget v0, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->w:I

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->u:Ljava/lang/String;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->u:Ljava/lang/String;

    const-string v1, "device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->d:Ljava/util/List;

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic q(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Lcom/lenovo/safecenter/database/AppDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->g:Lcom/lenovo/safecenter/database/AppDatabase;

    return-object v0
.end method

.method static synthetic r(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    .prologue
    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->w:I

    return v0
.end method


# virtual methods
.method public initApps()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 273
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 274
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 275
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 276
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 277
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->t:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 278
    new-instance v0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$4;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/AppsManager/ApplicationList$4;-><init>(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)V

    .line 285
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/lenovo/safecenter/AppsManager/ApplicationList$5;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/safecenter/AppsManager/ApplicationList$5;-><init>(Lcom/lenovo/safecenter/AppsManager/ApplicationList;Landroid/os/Handler;)V

    invoke-virtual {v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList$5;->start()V

    .line 291
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 209
    :goto_0
    return-void

    .line 175
    :sswitch_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->finish()V

    goto :goto_0

    .line 179
    :sswitch_1
    iget v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->w:I

    if-eqz v2, :cond_0

    .line 180
    new-instance v2, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d00f2

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setIcon(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d03e0

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setColorPositiveButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setColorNegativeButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0046

    new-instance v4, Lcom/lenovo/safecenter/AppsManager/ApplicationList$9;

    invoke-direct {v4, p0}, Lcom/lenovo/safecenter/AppsManager/ApplicationList$9;-><init>(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)V

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0047

    new-instance v4, Lcom/lenovo/safecenter/AppsManager/ApplicationList$8;

    invoke-direct {v4, p0}, Lcom/lenovo/safecenter/AppsManager/ApplicationList$8;-><init>(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)V

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    goto :goto_0

    .line 182
    :cond_0
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->y:Landroid/os/Handler;

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->y:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 188
    :sswitch_2
    :try_start_0
    iget v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->w:I

    iget v3, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->v:I

    if-eq v2, v3, :cond_1

    .line 189
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->g:Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->h:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/safecenter/database/AppDatabase;->updateApp(Ljava/util/ArrayList;I)V

    .line 190
    iget v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->v:I

    iput v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->w:I

    .line 191
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->j:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 193
    :cond_1
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->y:Landroid/os/Handler;

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->y:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 200
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_3
    iput v4, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->w:I

    .line 201
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->g:Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, p0, v3, v5}, Lcom/lenovo/safecenter/database/AppDatabase;->expertSuggest(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 202
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->v:I

    if-ge v1, v2, :cond_3

    .line 203
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/support/AppInfo;

    iget v2, v2, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-ne v2, v5, :cond_2

    iget v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->w:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->w:I

    .line 202
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 205
    :cond_3
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->j:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 206
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->y:Landroid/os/Handler;

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->y:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 173
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090524 -> :sswitch_3
        0x7f090525 -> :sswitch_1
        0x7f090527 -> :sswitch_2
        0x7f0905ad -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 104
    .local v0, "bn":Landroid/os/Bundle;
    const-string v1, "permType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->u:Ljava/lang/String;

    .line 106
    const v1, 0x7f030102

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->setContentView(I)V

    .line 108
    iput-object p0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->e:Landroid/content/Context;

    .line 109
    invoke-static {}, Lcom/lenovo/safecenter/utils/WflUtils;->isRoot()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->x:Z

    .line 110
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->f:Landroid/content/pm/PackageManager;

    .line 111
    new-instance v1, Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->g:Lcom/lenovo/safecenter/database/AppDatabase;

    .line 114
    const v1, 0x7f090590

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->k:Landroid/widget/TextView;

    const v1, 0x7f0905ae

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f0905ad

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090528

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->u:Ljava/lang/String;

    const-string v2, "privacy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->k:Landroid/widget/TextView;

    const v2, 0x7f0d03e7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    const v1, 0x7f090529

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f090278

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->j:Landroid/widget/ListView;

    const v1, 0x7f090275

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->l:Landroid/widget/TextView;

    const v1, 0x7f090058

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->t:Landroid/widget/ProgressBar;

    const v1, 0x7f090525

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->n:Landroid/widget/TextView;

    const v1, 0x7f090527

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->p:Landroid/widget/TextView;

    const v1, 0x7f090526

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->o:Landroid/widget/TextView;

    const v1, 0x7f090524

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->q:Landroid/widget/TextView;

    const v1, 0x7f090052

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->r:Landroid/widget/TextView;

    const v1, 0x7f090053

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->u:Ljava/lang/String;

    const-string v2, "sendmessage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->n:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->p:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->o:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->q:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->initApps()V

    .line 116
    return-void

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->u:Ljava/lang/String;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->k:Landroid/widget/TextView;

    const v2, 0x7f0d03e8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->u:Ljava/lang/String;

    const-string v2, "device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->k:Landroid/widget/TextView;

    const v2, 0x7f0d03e9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->u:Ljava/lang/String;

    const-string v2, "install_app"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->k:Landroid/widget/TextView;

    const v2, 0x7f0d05c7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->u:Ljava/lang/String;

    const-string v2, "sendmessage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->k:Landroid/widget/TextView;

    const v2, 0x7f0d007c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->u:Ljava/lang/String;

    const-string v2, "call_phone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->k:Landroid/widget/TextView;

    const v2, 0x7f0d007e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->o:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 233
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 234
    iget-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->x:Z

    if-eqz v0, :cond_0

    .line 235
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 238
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lenovo.safecenter.refreshAppsManager"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->sendBroadcast(Landroid/content/Intent;)V

    .line 239
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 240
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 152
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 154
    return-void
.end method
