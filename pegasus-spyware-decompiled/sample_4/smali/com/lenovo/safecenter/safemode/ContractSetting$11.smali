.class final Lcom/lenovo/safecenter/safemode/ContractSetting$11;
.super Ljava/lang/Object;
.source "ContractSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/ContractSetting;->showDialogImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/ContractSetting;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/ContractSetting;)V
    .locals 0

    .prologue
    .line 921
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$11;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 923
    const-string v0, "content"

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$11;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/ContractSetting;->i(Lcom/lenovo/safecenter/safemode/ContractSetting;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const-string v0, "changeimg"

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$11;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/ContractSetting;->i(Lcom/lenovo/safecenter/safemode/ContractSetting;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$11;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 925
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 926
    return-void
.end method
