.class final Lcom/lenovo/safecenter/support/SecurityService$d;
.super Landroid/content/BroadcastReceiver;
.source "SecurityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/support/SecurityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/support/SecurityService;


# direct methods
.method private constructor <init>(Lcom/lenovo/safecenter/support/SecurityService;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SecurityService$d;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/safecenter/support/SecurityService;B)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/safecenter/support/SecurityService;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/support/SecurityService$d;-><init>(Lcom/lenovo/safecenter/support/SecurityService;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 172
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    const-string v1, "3.6"

    const-string v2, "screen on"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :try_start_0
    invoke-static {p1}, Lcom/lenovo/safecenter/utils/AppCheck;->getDefault(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/AppCheck;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/utils/AppCheck;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    invoke-static {p1}, Lcom/lenovo/safecenter/utils/WflUtils;->isMobileNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    invoke-static {p1}, Lcom/lenovo/safecenter/utils/AlarmManageUtils;->noticeTrafficStats(Landroid/content/Context;)V

    .line 186
    :cond_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
