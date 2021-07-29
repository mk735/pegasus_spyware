.class final Lcom/lenovo/safecenter/broadcast/LockScreenService$1;
.super Ljava/lang/Object;
.source "LockScreenService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/broadcast/LockScreenService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/broadcast/LockScreenService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/broadcast/LockScreenService;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lenovo/safecenter/broadcast/LockScreenService$1;->a:Lcom/lenovo/safecenter/broadcast/LockScreenService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 75
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/LockScreenService$1;->a:Lcom/lenovo/safecenter/broadcast/LockScreenService;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/broadcast/LockScreenService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/lenovo/safecenter/broadcast/LockScreenService;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/utils/PwdUtil;->checkPassword(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    sget-object v0, Lcom/lenovo/safecenter/broadcast/LockScreenService;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 77
    sget-boolean v0, Lcom/lenovo/safecenter/broadcast/LockScreenService;->i:Z

    if-eqz v0, :cond_1

    .line 78
    sput-boolean v3, Lcom/lenovo/safecenter/broadcast/LockScreenService;->i:Z

    .line 79
    const-string v0, "test"

    const-string v1, "lockscreen onclick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/LockScreenService$1;->a:Lcom/lenovo/safecenter/broadcast/LockScreenService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lenovo.antitheft.ALARM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/broadcast/LockScreenService;->stopService(Landroid/content/Intent;)Z

    .line 81
    sget-object v0, Lcom/lenovo/safecenter/broadcast/LockScreenService;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "all"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 82
    sget-object v0, Lcom/lenovo/safecenter/broadcast/LockScreenService;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "locked"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 83
    sget-object v0, Lcom/lenovo/safecenter/broadcast/LockScreenService;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "alarm"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    sget-object v0, Lcom/lenovo/safecenter/broadcast/LockScreenService;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sim_changed_locked_screen"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    sput-boolean v3, Lcom/lenovo/safecenter/utils/MyUtils;->isLocked:Z

    .line 87
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/LockScreenService$1;->a:Lcom/lenovo/safecenter/broadcast/LockScreenService;

    invoke-static {v0}, Lcom/lenovo/safecenter/broadcast/LockScreenService;->a(Lcom/lenovo/safecenter/broadcast/LockScreenService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 88
    invoke-static {}, Lcom/lenovo/safecenter/broadcast/LockScreenService;->a()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Lcom/lenovo/safecenter/broadcast/LockScreenService;->a()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 92
    :cond_0
    new-instance v0, Lcom/lenovo/safecenter/broadcast/LockScreenService$1$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/broadcast/LockScreenService$1$1;-><init>(Lcom/lenovo/safecenter/broadcast/LockScreenService$1;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/broadcast/LockScreenService$1$1;->start()V

    .line 137
    :cond_1
    :goto_0
    return-void

    .line 132
    :cond_2
    sget-object v0, Lcom/lenovo/safecenter/broadcast/LockScreenService;->b:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 133
    sget-object v0, Lcom/lenovo/safecenter/broadcast/LockScreenService;->a:Landroid/widget/TextView;

    const v1, 0x7f0d0057

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 134
    sget-object v0, Lcom/lenovo/safecenter/broadcast/LockScreenService;->a:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
