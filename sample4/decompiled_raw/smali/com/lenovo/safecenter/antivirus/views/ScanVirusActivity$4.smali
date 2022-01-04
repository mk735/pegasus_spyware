.class final Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$4;
.super Ljava/lang/Object;
.source "ScanVirusActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$4;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 308
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$4;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->finish()V

    .line 309
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$4;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$4;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    const-class v3, Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->startActivity(Landroid/content/Intent;)V

    .line 310
    return-void
.end method
