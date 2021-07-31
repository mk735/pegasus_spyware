.class final Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo$2;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "ApplicationDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->clearAllCache(Landroid/content/pm/PackageManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 240
    return-void
.end method
