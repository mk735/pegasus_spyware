.class public Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;
.super Landroid/app/Activity;
.source "ShortcutActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;

.field private c:Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;)Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;->b:Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    iput-object p0, p0, Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;->a:Landroid/content/Context;

    .line 26
    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;->c:Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity$a;

    if-nez v2, :cond_0

    new-instance v2, Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity$a;-><init>(Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;B)V

    iput-object v2, p0, Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;->c:Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity$a;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.lenovo.safecenter.floatwindow.closewindow"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.lenovo.safecenter.floatwindow.delwindow"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;->c:Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity$a;

    invoke-virtual {p0, v3, v2}, Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 27
    :cond_0
    const-string v2, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {p0}, Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    .local v0, "localIntent1":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 33
    const/high16 v2, 0x200000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 34
    const-class v2, Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 36
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    .local v1, "localIntent2":Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p0}, Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d06dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v3, 0x7f0202d5

    invoke-static {p0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 39
    const-string v2, "duplicate"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 42
    invoke-virtual {p0}, Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;->finish()V

    .line 51
    .end local v0    # "localIntent1":Landroid/content/Intent;
    .end local v1    # "localIntent2":Landroid/content/Intent;
    :goto_0
    return-void

    .line 44
    :cond_1
    sget-object v2, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->instanceFloatWindow:Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;

    if-eqz v2, :cond_2

    .line 45
    const/4 v2, 0x0

    sput-object v2, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->instanceFloatWindow:Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;

    .line 47
    :cond_2
    new-instance v2, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;->b:Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;

    .line 48
    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;->b:Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->showFloatWindow()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 89
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;->c:Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity$a;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;->c:Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity$a;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 92
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 102
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 104
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 96
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 98
    return-void
.end method
