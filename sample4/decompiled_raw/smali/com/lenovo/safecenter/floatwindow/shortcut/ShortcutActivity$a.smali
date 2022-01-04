.class final Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;


# direct methods
.method private constructor <init>(Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity$a;->a:Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity$a;-><init>(Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 70
    const-string v0, "com.lenovo.safecenter.floatwindow.closewindow"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity$a;->a:Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;->finish()V

    .line 73
    :cond_0
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity$a;->a:Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;->a(Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;)Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity$a;->a:Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;->a(Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;)Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->delFloatWindow()V

    .line 78
    :cond_1
    const-string v0, "com.lenovo.safecenter.floatwindow.delwindow"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity$a;->a:Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;->a(Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;)Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity$a;->a:Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;->a(Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;)Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->delFloatWindow()V

    .line 83
    :cond_2
    return-void
.end method
