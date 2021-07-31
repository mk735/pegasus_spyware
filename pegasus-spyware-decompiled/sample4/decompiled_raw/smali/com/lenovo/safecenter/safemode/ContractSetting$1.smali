.class final Lcom/lenovo/safecenter/safemode/ContractSetting$1;
.super Landroid/os/Handler;
.source "ContractSetting.java"


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
    .line 59
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$1;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    .line 66
    return-void
.end method
