.class final Lcom/lenovo/safecenter/safemode/ContractSetting$21;
.super Ljava/lang/Object;
.source "ContractSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/safemode/ContractSetting;
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
    .line 324
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$21;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 328
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$21;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-static {v0, p2}, Lcom/lenovo/safecenter/safemode/ContractSetting;->a(Lcom/lenovo/safecenter/safemode/ContractSetting;I)I

    .line 354
    return-void
.end method
