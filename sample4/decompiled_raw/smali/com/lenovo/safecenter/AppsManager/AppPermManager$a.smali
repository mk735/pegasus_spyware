.class final Lcom/lenovo/safecenter/AppsManager/AppPermManager$a;
.super Landroid/content/BroadcastReceiver;
.source "AppPermManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/AppPermManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;


# direct methods
.method private constructor <init>(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)V
    .locals 0

    .prologue
    .line 906
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$a;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/safecenter/AppsManager/AppPermManager;B)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 906
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager$a;-><init>(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 908
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 909
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 910
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$a;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->p(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 912
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$a;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->p(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportUninstallApp(Ljava/lang/String;)V

    .line 913
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$a;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->finish()V

    .line 916
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method
