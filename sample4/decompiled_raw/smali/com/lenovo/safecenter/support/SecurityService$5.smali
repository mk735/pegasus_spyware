.class final Lcom/lenovo/safecenter/support/SecurityService$5;
.super Landroid/content/BroadcastReceiver;
.source "SecurityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/support/SecurityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/support/SecurityService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/support/SecurityService;)V
    .locals 0

    .prologue
    .line 2131
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SecurityService$5;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x0

    .line 2135
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2136
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2137
    iget-object v7, p0, Lcom/lenovo/safecenter/support/SecurityService$5;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v7}, Lcom/lenovo/safecenter/floatwindow/data/SaveData;->get_flow_status(Landroid/content/Context;)Z

    move-result v3

    .line 2138
    .local v3, "flowFlag":Z
    if-eqz v3, :cond_0

    .line 2139
    iget-object v8, p0, Lcom/lenovo/safecenter/support/SecurityService$5;->a:Lcom/lenovo/safecenter/support/SecurityService;

    iget-object v7, p0, Lcom/lenovo/safecenter/support/SecurityService$5;->a:Lcom/lenovo/safecenter/support/SecurityService;

    const-string v9, "connectivity"

    invoke-virtual {v7, v9}, Lcom/lenovo/safecenter/support/SecurityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    invoke-static {v8, v7}, Lcom/lenovo/safecenter/support/SecurityService;->a(Lcom/lenovo/safecenter/support/SecurityService;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;

    .line 2140
    iget-object v7, p0, Lcom/lenovo/safecenter/support/SecurityService$5;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v7}, Lcom/lenovo/safecenter/support/SecurityService;->q(Lcom/lenovo/safecenter/support/SecurityService;)Landroid/net/ConnectivityManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 2141
    .local v4, "info":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2142
    iget-object v7, p0, Lcom/lenovo/safecenter/support/SecurityService$5;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v7, v10}, Lcom/lenovo/safecenter/support/SecurityService;->setFlowVisibility(I)V

    .line 2144
    iget-object v7, p0, Lcom/lenovo/safecenter/support/SecurityService$5;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v7}, Lcom/lenovo/safecenter/floatwindow/data/SaveData;->get_flow_immove_state(Landroid/content/Context;)Z

    move-result v2

    .line 2145
    .local v2, "flowFixedFlag":Z
    if-eqz v2, :cond_2

    .line 2146
    iget-object v7, p0, Lcom/lenovo/safecenter/support/SecurityService$5;->a:Lcom/lenovo/safecenter/support/SecurityService;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/lenovo/safecenter/support/SecurityService;->setFlowIsFixed(Z)V

    .line 2155
    .end local v2    # "flowFixedFlag":Z
    .end local v3    # "flowFlag":Z
    .end local v4    # "info":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    const-string v7, "android.intent.action.DATA_DEFAULT_SIM"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2156
    const-string v7, "simid"

    invoke-virtual {p2, v7, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 2157
    .local v5, "longExtra":J
    cmp-long v7, v5, v11

    if-eqz v7, :cond_1

    .line 2158
    const-string v7, "dataSubscriberId"

    const v8, 0x8000

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2159
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v7, "dataSubscriberId"

    invoke-interface {v1, v7, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2160
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2163
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "longExtra":J
    :cond_1
    return-void

    .line 2148
    .restart local v2    # "flowFixedFlag":Z
    .restart local v3    # "flowFlag":Z
    .restart local v4    # "info":Landroid/net/NetworkInfo;
    :cond_2
    iget-object v7, p0, Lcom/lenovo/safecenter/support/SecurityService$5;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v7, v10}, Lcom/lenovo/safecenter/support/SecurityService;->setFlowIsFixed(Z)V

    goto :goto_0

    .line 2151
    .end local v2    # "flowFixedFlag":Z
    :cond_3
    iget-object v7, p0, Lcom/lenovo/safecenter/support/SecurityService$5;->a:Lcom/lenovo/safecenter/support/SecurityService;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/lenovo/safecenter/support/SecurityService;->setFlowVisibility(I)V

    goto :goto_0
.end method
