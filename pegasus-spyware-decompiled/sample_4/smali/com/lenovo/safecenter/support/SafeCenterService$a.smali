.class final Lcom/lenovo/safecenter/support/SafeCenterService$a;
.super Landroid/content/BroadcastReceiver;
.source "SafeCenterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/support/SafeCenterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/support/SafeCenterService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/support/SafeCenterService;)V
    .locals 0

    .prologue
    .line 1136
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SafeCenterService$a;->a:Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1139
    const-string v1, "packagename"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1140
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->adApkInsert(Ljava/lang/String;Landroid/content/Context;)I

    .line 1141
    return-void
.end method
