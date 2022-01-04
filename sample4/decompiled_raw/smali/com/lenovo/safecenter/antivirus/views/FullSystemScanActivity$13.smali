.class final Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$13;
.super Ljava/lang/Object;
.source "FullSystemScanActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a()V
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
    .line 549
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$13;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 551
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$13;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->P(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    .line 552
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$13;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->freeManage()V

    .line 553
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$13;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->finish()V

    .line 554
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 555
    return-void
.end method
