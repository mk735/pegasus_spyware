.class final Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$3;
.super Ljava/lang/Object;
.source "FullSystemScanActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)V
    .locals 0

    .prologue
    .line 748
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$3;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 751
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$3;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->P(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    .line 752
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$3;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->freeManage()V

    .line 753
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$3;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->finish()V

    .line 754
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 755
    return-void
.end method
