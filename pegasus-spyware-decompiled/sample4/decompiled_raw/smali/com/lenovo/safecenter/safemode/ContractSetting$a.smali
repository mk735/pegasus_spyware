.class final Lcom/lenovo/safecenter/safemode/ContractSetting$a;
.super Landroid/content/BroadcastReceiver;
.source "ContractSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/safemode/ContractSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/ContractSetting;


# direct methods
.method private constructor <init>(Lcom/lenovo/safecenter/safemode/ContractSetting;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$a;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/safecenter/safemode/ContractSetting;B)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/safecenter/safemode/ContractSetting;

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/safemode/ContractSetting$a;-><init>(Lcom/lenovo/safecenter/safemode/ContractSetting;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 303
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$a;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->finish()V

    .line 306
    :cond_0
    return-void
.end method
