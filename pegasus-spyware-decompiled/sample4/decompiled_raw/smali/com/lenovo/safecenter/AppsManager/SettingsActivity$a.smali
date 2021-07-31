.class final Lcom/lenovo/safecenter/AppsManager/SettingsActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;


# direct methods
.method private constructor <init>(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$a;->a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$a;-><init>(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 487
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$a;->a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/floatwindow/data/SaveData;->get_flow_status(Landroid/content/Context;)Z

    move-result v0

    .line 488
    .local v0, "flowFlag":Z
    if-eqz v0, :cond_0

    .line 489
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$a;->a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->k(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0200df

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 490
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$a;->a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->l(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 495
    :goto_0
    return-void

    .line 492
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$a;->a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->k(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0200de

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 493
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$a;->a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->l(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
