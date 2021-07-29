.class final Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$10;
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
    .line 1155
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$10;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1158
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$10;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    const-class v3, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1161
    .local v1, "showVirus":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1162
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "virusPackageNameList"

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$10;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v4}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->x(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1168
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1169
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$10;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-virtual {v2, v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->startActivity(Landroid/content/Intent;)V

    .line 1170
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$10;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->P(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    .line 1171
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$10;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeHasVirus()V

    .line 1174
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$10;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->freeManage()V

    .line 1175
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$10;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->finish()V

    .line 1176
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1177
    return-void
.end method
