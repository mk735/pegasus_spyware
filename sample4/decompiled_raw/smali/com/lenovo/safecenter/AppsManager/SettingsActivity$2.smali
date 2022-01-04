.class final Lcom/lenovo/safecenter/AppsManager/SettingsActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$2;->a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 132
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const-string v1, "com.lenovo.safecenterwidget"

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const/4 v1, 0x4

    const v2, 0x7f0d072c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$2;->a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->i(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/lenovo/safecenter/utils/WflUtils;->sendMessageToHandler(ILjava/lang/Object;Landroid/os/Handler;)V

    .line 139
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$2;->a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->j(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 142
    :cond_0
    return-void
.end method
