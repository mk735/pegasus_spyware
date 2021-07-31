.class final Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$2;
.super Ljava/lang/Object;
.source "ShowVirusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/domain/Virus;

.field final synthetic b:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;Lcom/lenovo/safecenter/antivirus/domain/Virus;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$2;->b:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;

    iput-object p2, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$2;->a:Lcom/lenovo/safecenter/antivirus/domain/Virus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$2;->b:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b;->a:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$b$2;->a:Lcom/lenovo/safecenter/antivirus/domain/Virus;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->removePackageActivity(Ljava/lang/String;)V

    .line 459
    return-void
.end method
