.class final Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener$a$1;
.super Ljava/lang/Thread;
.source "ClearProcessListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener$a;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener$a;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener$a;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener$a$1;->a:Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener$a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 70
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 71
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 72
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.lenovo.safecenter.floatwindow.delwindow"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener$a$1;->a:Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener$a;

    iget-object v2, v2, Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener$a;->a:Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;

    invoke-static {v2}, Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;->c(Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
