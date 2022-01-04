.class final Lcom/lenovo/lps/sus/control/i;
.super Landroid/content/pm/IPackageInstallObserver$Stub;


# instance fields
.field final synthetic a:Lcom/lenovo/lps/sus/control/x;


# direct methods
.method constructor <init>(Lcom/lenovo/lps/sus/control/x;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/sus/control/i;->a:Lcom/lenovo/lps/sus/control/x;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final packageInstalled(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/i;->a:Lcom/lenovo/lps/sus/control/x;

    invoke-static {v0}, Lcom/lenovo/lps/sus/control/x;->a(Lcom/lenovo/lps/sus/control/x;)V

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/i;->a:Lcom/lenovo/lps/sus/control/x;

    invoke-static {v0}, Lcom/lenovo/lps/sus/control/x;->b(Lcom/lenovo/lps/sus/control/x;)V

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/i;->a:Lcom/lenovo/lps/sus/control/x;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/control/x;->a(Lcom/lenovo/lps/sus/control/x;Ljava/lang/Integer;)V

    const-string v0, "SUS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InstallThread 2 packageInstalled,mySilenceInstallResultCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lenovo/lps/sus/control/i;->a:Lcom/lenovo/lps/sus/control/x;

    invoke-static {v2}, Lcom/lenovo/lps/sus/control/x;->c(Lcom/lenovo/lps/sus/control/x;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
