.class final Lcom/lenovo/safecenter/antivirus/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/antivirus/MainActivity;->onBtnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/MainActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/MainActivity;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$3;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$3;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$3;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    const-class v3, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/antivirus/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 309
    return-void
.end method
