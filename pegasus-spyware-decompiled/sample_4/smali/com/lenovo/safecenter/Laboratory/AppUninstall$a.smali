.class final Lcom/lenovo/safecenter/Laboratory/AppUninstall$a;
.super Ljava/lang/Object;
.source "AppUninstall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/Laboratory/AppUninstall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/content/pm/IPackageManager;

.field b:I

.field final synthetic c:Lcom/lenovo/safecenter/Laboratory/AppUninstall;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)V
    .locals 1

    .prologue
    .line 687
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$a;->c:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 688
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$a;->a:Landroid/content/pm/IPackageManager;

    .line 690
    return-void
.end method
