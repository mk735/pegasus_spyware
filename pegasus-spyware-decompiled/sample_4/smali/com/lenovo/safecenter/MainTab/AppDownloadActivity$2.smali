.class final Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "AppDownloadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$2;->a:Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    const-string v1, "wu0wu"

    const-string v2, "AppDownloadActivity ACTION_PACKAGE_ADDED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity$2;->a:Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->a(Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;)V

    .line 110
    const-string v1, "com.lenovo.safe.powercenter"

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-static {}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportDownloadLeBattery()V

    .line 114
    :cond_0
    return-void
.end method
