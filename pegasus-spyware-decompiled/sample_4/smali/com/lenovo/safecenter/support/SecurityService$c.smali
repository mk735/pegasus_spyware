.class final Lcom/lenovo/safecenter/support/SecurityService$c;
.super Landroid/content/BroadcastReceiver;
.source "SecurityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/support/SecurityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/support/SecurityService;


# direct methods
.method private constructor <init>(Lcom/lenovo/safecenter/support/SecurityService;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SecurityService$c;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/safecenter/support/SecurityService;B)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/safecenter/support/SecurityService;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/support/SecurityService$c;-><init>(Lcom/lenovo/safecenter/support/SecurityService;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 161
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const-string v0, "3.6"

    const-string v1, "screen off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static {p1}, Lcom/lenovo/safecenter/utils/AppCheck;->getDefault(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/AppCheck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/AppCheck;->cancel()V

    .line 164
    invoke-static {p1}, Lcom/lenovo/safecenter/utils/AlarmManageUtils;->cancelNoticeTrafficStats(Landroid/content/Context;)V

    .line 167
    :cond_0
    return-void
.end method
