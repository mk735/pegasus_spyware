.class final Lcom/lenovo/safecenter/net/doublemode/NetSetting$b;
.super Landroid/content/BroadcastReceiver;
.source "NetSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/net/doublemode/NetSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;


# direct methods
.method private constructor <init>(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$b;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/safecenter/net/doublemode/NetSetting;B)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/net/doublemode/NetSetting$b;-><init>(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 144
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$b;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->f(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/safecenter/floatwindow/data/SaveData;->get_flow_status(Landroid/content/Context;)Z

    move-result v0

    .line 145
    .local v0, "flowFlag":Z
    if-eqz v0, :cond_0

    .line 146
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$b;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->g(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 147
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$b;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->h(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 152
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$b;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->g(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 150
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$b;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->h(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
