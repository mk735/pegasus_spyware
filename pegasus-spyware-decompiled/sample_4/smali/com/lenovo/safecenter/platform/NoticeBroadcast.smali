.class public Lcom/lenovo/safecenter/platform/NoticeBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "NoticeBroadcast.java"


# static fields
.field public static charge_count:I

.field public static privacy_count:I


# instance fields
.field private a:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    sput v0, Lcom/lenovo/safecenter/platform/NoticeBroadcast;->privacy_count:I

    .line 35
    sput v0, Lcom/lenovo/safecenter/platform/NoticeBroadcast;->charge_count:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v7, 0x11

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 39
    iput-object p2, p0, Lcom/lenovo/safecenter/platform/NoticeBroadcast;->a:Landroid/content/Intent;

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.safecenter.broadcast.openChildMode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 44
    const-string v3, "state"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 45
    .local v1, "state":Z
    if-eqz v1, :cond_2

    invoke-static {p1, v6, v5}, Lcom/lenovo/safecenter/utils/MyUtils;->showNotification(Landroid/content/Context;II)V

    .line 82
    .end local v1    # "state":Z
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.lenovo.safecenter.view.DialogActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    const-string v3, "style"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 84
    .local v2, "type":I
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.lenovo.safecenter.view.DialogActivity"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "it":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 86
    const-string v3, "style"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 89
    .end local v0    # "it":Landroid/content/Intent;
    .end local v2    # "type":I
    :cond_1
    return-void

    .line 46
    .restart local v1    # "state":Z
    :cond_2
    invoke-static {p1, v6}, Lcom/lenovo/safecenter/utils/MyUtils;->cancelNotification(Landroid/content/Context;I)V

    goto :goto_0

    .line 47
    .end local v1    # "state":Z
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.safecenter.broadcast.openGuestMode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    iget-object v3, p0, Lcom/lenovo/safecenter/platform/NoticeBroadcast;->a:Landroid/content/Intent;

    const-string v4, "state"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 49
    .restart local v1    # "state":Z
    if-eqz v1, :cond_4

    .line 50
    invoke-static {p1, v7, v5}, Lcom/lenovo/safecenter/utils/MyUtils;->showNotification(Landroid/content/Context;II)V

    .line 51
    const/16 v3, 0x111

    invoke-static {p1, v3}, Lcom/lenovo/safecenter/utils/MyUtils;->cancelNotification(Landroid/content/Context;I)V

    goto :goto_0

    .line 54
    :cond_4
    invoke-static {p1, v7}, Lcom/lenovo/safecenter/utils/MyUtils;->cancelNotification(Landroid/content/Context;I)V

    .line 55
    invoke-static {p1}, Lcom/lenovo/safecenter/utils/MyUtils;->showUnreadSmsNotification(Landroid/content/Context;)V

    goto :goto_0
.end method
