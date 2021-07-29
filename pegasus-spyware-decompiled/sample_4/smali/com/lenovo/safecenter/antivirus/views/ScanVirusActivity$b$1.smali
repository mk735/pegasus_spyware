.class final Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$1;
.super Ljava/lang/Object;
.source "ScanVirusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/domain/Virus;

.field final synthetic b:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b;Lcom/lenovo/safecenter/antivirus/domain/Virus;)V
    .locals 0

    .prologue
    .line 687
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$1;->b:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b;

    iput-object p2, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$1;->a:Lcom/lenovo/safecenter/antivirus/domain/Virus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 690
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$1;->b:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b;

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$b$1;->a:Lcom/lenovo/safecenter/antivirus/domain/Virus;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->forwardAppInfo(Ljava/lang/String;)V

    .line 691
    return-void
.end method
