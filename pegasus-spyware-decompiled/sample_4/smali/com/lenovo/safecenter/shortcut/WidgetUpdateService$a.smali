.class final Lcom/lenovo/safecenter/shortcut/WidgetUpdateService$a;
.super Landroid/content/BroadcastReceiver;
.source "WidgetUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService$a;->a:Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 154
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.lenovo.safecenter.ONEKEY_WIDGET_REFRESH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService$a;->a:Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;->refresh(I)V

    .line 172
    :cond_0
    return-void
.end method
