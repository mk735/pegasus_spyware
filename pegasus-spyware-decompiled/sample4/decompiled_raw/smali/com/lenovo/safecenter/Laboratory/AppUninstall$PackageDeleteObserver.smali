.class public Lcom/lenovo/safecenter/Laboratory/AppUninstall$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "AppUninstall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/Laboratory/AppUninstall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)V
    .locals 0

    .prologue
    .line 630
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$PackageDeleteObserver;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/os/Parcel;
    .param p3, "arg2"    # Landroid/os/Parcel;
    .param p4, "arg3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 646
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/pm/IPackageDeleteObserver$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 649
    :goto_0
    return v1

    .line 647
    :catch_0
    move-exception v0

    .line 648
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 649
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public packageDeleted(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    .line 632
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$PackageDeleteObserver;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->l(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 633
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 634
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 635
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$PackageDeleteObserver;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->l(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 636
    return-void
.end method

.method public packageDeleted(Z)V
    .locals 3
    .param p1, "succeeded"    # Z

    .prologue
    .line 638
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$PackageDeleteObserver;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->l(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 639
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 640
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$PackageDeleteObserver;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->l(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 641
    return-void

    .line 639
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
