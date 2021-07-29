.class public Lcom/lenovo/safecenter/MainTab/PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "PackageInstallObserver.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/lenovo/safecenter/MainTab/PackageInstallObserver;->a:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    const/4 v2, 0x1

    .line 16
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 17
    if-ne p2, v2, :cond_0

    .line 18
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/PackageInstallObserver;->a:Landroid/content/Context;

    const v1, 0x7f0d05e2

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 22
    :goto_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 23
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/PackageInstallObserver;->a:Landroid/content/Context;

    const v1, 0x7f0d05e3

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
