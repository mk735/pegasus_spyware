.class final Lcom/lenovo/safecenter/antivirus/views/LogActivity$3;
.super Ljava/lang/Object;
.source "LogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/antivirus/views/LogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/views/LogActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/views/LogActivity;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$3;->a:Lcom/lenovo/safecenter/antivirus/views/LogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$3;->a:Lcom/lenovo/safecenter/antivirus/views/LogActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->e(Lcom/lenovo/safecenter/antivirus/views/LogActivity;)Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->delLog()V

    .line 86
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$3;->a:Lcom/lenovo/safecenter/antivirus/views/LogActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->f(Lcom/lenovo/safecenter/antivirus/views/LogActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 87
    return-void
.end method
