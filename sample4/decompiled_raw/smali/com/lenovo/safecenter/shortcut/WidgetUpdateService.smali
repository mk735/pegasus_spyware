.class public Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;
.super Landroid/app/Service;
.source "WidgetUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/shortcut/WidgetUpdateService$a;
    }
.end annotation


# static fields
.field public static final DATA_STATE_CHANGE:I = 0x2

.field public static final REMAINTIME_CHANGE:I = 0x0

.field public static final SHOW_BATTERY_CHANGE:I = 0x4

.field public static final SHOW_MODE_CHANGE:I = 0x5

.field public static final SIM_STATE_CHANGE:I = 0x3

.field public static final TAG:Ljava/lang/String; = "WidgetUpdateService"

.field public static final WIFI_STATE_CHANGE:I = 0x1


# instance fields
.field private a:Lcom/lenovo/safecenter/shortcut/WidgetUpdateService$a;

.field private b:Landroid/widget/RemoteViews;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 150
    return-void
.end method

.method private a()Landroid/widget/RemoteViews;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 137
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03012c

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 138
    .local v1, "remoteViews":Landroid/widget/RemoteViews;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "onekey_launcher"

    const-string v3, "widget"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/lenovo/safecenter/shortcut/CleanViewService;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 145
    const v2, 0x7f09062a

    invoke-static {p0, v5, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 147
    return-object v1
.end method

.method private a(Landroid/widget/RemoteViews;)V
    .locals 4
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    .line 110
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/lenovo/safecenter/shortcut/WidgetProvider;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 112
    .local v0, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v0, v1, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 113
    return-void
.end method

.method private b(Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    .line 125
    const v0, 0x7f020226

    iput v0, p0, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;->c:I

    .line 133
    const v0, 0x7f090557

    iget v1, p0, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 134
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 48
    const/4 v1, 0x0

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;->startForeground(ILandroid/app/Notification;)V

    .line 49
    new-instance v1, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService$a;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService$a;-><init>(Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;->a:Lcom/lenovo/safecenter/shortcut/WidgetUpdateService$a;

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 52
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.lenovo.safecenter.ONEKEY_WIDGET_REFRESH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;->a:Lcom/lenovo/safecenter/shortcut/WidgetUpdateService$a;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 63
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;->a:Lcom/lenovo/safecenter/shortcut/WidgetUpdateService$a;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;->a:Lcom/lenovo/safecenter/shortcut/WidgetUpdateService$a;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;->a:Lcom/lenovo/safecenter/shortcut/WidgetUpdateService$a;

    .line 77
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 78
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;->showRemoteView()V

    .line 91
    const/4 v0, 0x1

    invoke-super {p0, p1, v0, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public refresh(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;->b:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    .line 37
    invoke-direct {p0}, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;->a()Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;->b:Landroid/widget/RemoteViews;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;->b:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;->b(Landroid/widget/RemoteViews;)V

    .line 42
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;->b:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;->a(Landroid/widget/RemoteViews;)V

    .line 43
    return-void
.end method

.method public showRemoteView()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;->b:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;->a()Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;->b:Landroid/widget/RemoteViews;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;->b:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;->b(Landroid/widget/RemoteViews;)V

    .line 106
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;->b:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/shortcut/WidgetUpdateService;->a(Landroid/widget/RemoteViews;)V

    .line 108
    return-void
.end method
