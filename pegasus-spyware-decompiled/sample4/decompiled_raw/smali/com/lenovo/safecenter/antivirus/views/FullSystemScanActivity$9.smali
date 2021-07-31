.class final Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$9;
.super Ljava/lang/Object;
.source "FullSystemScanActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;
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
    .line 1180
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$9;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$9;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->P(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    .line 1184
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$9;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeHasVirus()V

    .line 1187
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$9;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->freeManage()V

    .line 1188
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$9;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->finish()V

    .line 1189
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1190
    return-void
.end method
