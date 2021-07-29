.class public Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;
.super Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;
.source "HealthLeCloudSynForContact.java"

# interfaces
.implements Lcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;


# static fields
.field public static final STATE_BACKUP_CONTACT:I = 0x1

.field public static final STATE_NO_INSTALL:I = 0x0

.field public static final STATE_UPDATE_APK:I = 0x2


# instance fields
.field private a:I

.field private b:Z

.field private c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "healthManager"    # Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;-><init>()V

    .line 48
    iput v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->a:I

    .line 58
    iput-boolean v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->b:Z

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    .line 66
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    .line 67
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mKey:I

    .line 68
    iput-boolean v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->isRootItem:Z

    .line 69
    iput-object p2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .line 70
    return-void
.end method

.method static synthetic A(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic B(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    return-object v0
.end method

.method static synthetic C(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic D(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    return-object v0
.end method

.method static synthetic E(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    return-object v0
.end method

.method static synthetic F(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    return-object v0
.end method

.method static synthetic G(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    return-object v0
.end method

.method static synthetic H(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic I(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    return-object v0
.end method

.method static synthetic J(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mPreViewType:I

    return v0
.end method

.method static synthetic K(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    return-object v0
.end method

.method static synthetic L(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    return-object v0
.end method

.method static synthetic M(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic N(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic O(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic P(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    return-object v0
.end method

.method static synthetic Q(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    return-object v0
.end method

.method static synthetic R(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic S(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    return-object v0
.end method

.method static synthetic T(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    return-object v0
.end method

.method static synthetic U(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    return-object v0
.end method

.method static synthetic V(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    return-object v0
.end method

.method static synthetic W(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic X(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    return-object v0
.end method

.method static synthetic Y(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mPreViewType:I

    return v0
.end method

.method static synthetic Z(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;
    .param p1, "x1"    # Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    return-object p1
.end method

.method private a()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 372
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    if-nez v0, :cond_0

    .line 373
    new-instance v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    const-string v2, "com.lenovo.leos.cloud.sync"

    const-string v4, "lecloud_dev_team"

    new-instance v8, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$3;

    invoke-direct {v8, p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$3;-><init>(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)V

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v8}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZZZLcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    .line 418
    invoke-static {}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportDownloadLeCloudSync()V

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->upDate(Z)V

    .line 425
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2, p3}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    return-void
.end method

.method static synthetic a(Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;)Z
    .locals 2
    .param p0, "x1"    # Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;

    .prologue
    const/4 v0, 0x1

    .line 46
    iget-boolean v1, p0, Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;->neverBackup:Z

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;->opAdd:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;->opDelete:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/lenovo/leos/cloud/sync/common/auto/BackupDiffInfo;->opUpdate:I

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic aa(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    return-object v0
.end method

.method static synthetic ab(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    return-object v0
.end method

.method static synthetic ac(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    return-object v0
.end method

.method static synthetic ad(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic ae(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic af(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->a:I

    return v0
.end method

.method static synthetic ag(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)V
    .locals 5
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    const-string v1, "com.lenovo.leos.cloud.sync"

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/database/AppUtil;->isAppExistence(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    const v2, 0x7f0d05f0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v4, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v1, 0x7

    iput v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v3, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    const v2, 0x7f0d048f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v0, v4, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mPreViewType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->saveHealthScoreAndCheckupTime()V

    :cond_1
    return-void
.end method

.method static synthetic ah(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)V
    .locals 5
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    const-string v1, "com.lenovo.leos.cloud.sync"

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/database/AppUtil;->getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const v1, 0x3b0dd1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    const v2, 0x7f0d05f2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v4, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v1, 0x7

    iput v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v3, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    const v2, 0x7f0d048f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mPreViewType:I

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->saveHealthScoreAndCheckupTime()V

    :cond_1
    return-void
.end method

.method static synthetic ai(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;
    .param p1, "x1"    # Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    return-object p1
.end method

.method static synthetic c(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mKey:I

    return v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    return-object v0
.end method

.method static synthetic j(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic k(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    return-object v0
.end method

.method static synthetic l(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic m(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    return-object v0
.end method

.method static synthetic n(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    return-object v0
.end method

.method static synthetic o(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    return-object v0
.end method

.method static synthetic p(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    return-object v0
.end method

.method static synthetic q(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic r(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    return-object v0
.end method

.method static synthetic s(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mPreViewType:I

    return v0
.end method

.method static synthetic t(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    return-object v0
.end method

.method static synthetic u(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    return-object v0
.end method

.method static synthetic v(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    return-object v0
.end method

.method static synthetic w(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mKey:I

    return v0
.end method

.method static synthetic x(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    return-object v0
.end method

.method static synthetic y(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic z(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    return-object v0
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 471
    return-void
.end method

.method public click()V
    .locals 6

    .prologue
    .line 316
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->a:I

    packed-switch v0, :pswitch_data_0

    .line 324
    :goto_0
    return-void

    .line 320
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/WflUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/utils/DialogUtil;->createManualUpdateDialog(Landroid/content/Context;ILcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;)Landroid/app/Dialog;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->c:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    const v3, 0x7f0d00f2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    const v4, 0x7f0d039a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    const v5, 0x7f0d0046

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/lenovo/safecenter/utils/DialogUtil;->NoticeDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;)Landroid/app/Dialog;

    goto :goto_0

    .line 323
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lenovo.leos.cloud.sync.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "DEFAULT_ITEM"

    const-string v2, "contactMain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "isShowFinishDlg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->b:Z

    invoke-static {}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportEntryLeCloudSync()V

    goto :goto_0

    .line 316
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getmState()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->a:I

    return v0
.end method

.method public isShowLeCloudActivity()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->b:Z

    return v0
.end method

.method public manual()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 227
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->a:I

    packed-switch v0, :pswitch_data_0

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 229
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    const-string v1, "com.lenovo.leos.cloud.sync"

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/database/AppUtil;->isAppExistence(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    const v2, 0x7f0d05f0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v4, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v1, 0x7

    iput v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v3, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    const v2, 0x7f0d048f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mPreViewType:I

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->saveHealthScoreAndCheckupTime()V

    goto :goto_0

    .line 232
    :pswitch_1
    iput-boolean v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->b:Z

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$2;-><init>(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)V

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy;->queryContactDiffInfo(Landroid/content/Context;Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy$EasySyncCallback;)V

    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWarnDialogCancel(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 488
    return-void
.end method

.method public onWarnDialogOk()V
    .locals 0

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->a()V

    .line 429
    return-void
.end method

.method public onWarnDialogOk(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 475
    packed-switch p1, :pswitch_data_0

    .line 478
    :goto_0
    return-void

    .line 477
    :pswitch_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->onWarnDialogOk()V

    goto :goto_0

    .line 475
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public optimiza()V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method public scan()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x7f0d05f3

    const v4, 0x7f0d054e

    const/4 v3, 0x3

    .line 74
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/WflUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    const-string v1, "com.lenovo.leos.cloud.sync"

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/database/AppUtil;->isAppExistence(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    iput v6, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->a:I

    .line 77
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    new-instance v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-direct {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mKey:I

    iput v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title_detail:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    const v2, 0x7f0d05ef

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v3, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v1, 0x5

    iput v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v6, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0577

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v0, v3, v7}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    iput v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mPreViewType:I

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 87
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->progressAddAfterScanEveryItem(Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 90
    :cond_1
    return-void

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    const-string v1, "com.lenovo.leos.cloud.sync"

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/database/AppUtil;->getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const v1, 0x3b0dd1

    if-ge v0, v1, :cond_3

    .line 80
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->a:I

    .line 81
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    new-instance v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-direct {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mKey:I

    iput v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title_detail:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    const v2, 0x7f0d05f1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v3, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v1, 0x5

    iput v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v6, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0577

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v0, v3, v7}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    iput v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mPreViewType:I

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    goto :goto_0

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    const-string v1, "com.lenovo.leos.cloud.sync"

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/database/AppUtil;->isAppExistence(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iput v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->a:I

    .line 85
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact$1;-><init>(Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;)V

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy;->queryContactDiffInfo(Landroid/content/Context;Lcom/lenovo/leos/cloud/sync/common/auto/EasySyncServiceProxy$EasySyncCallback;)V

    goto/16 :goto_0
.end method
