.class final Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$1;
.super Landroid/content/BroadcastReceiver;
.source "MyProcessObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$1;->a:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    const-string v2, "newPkg"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "newPkg":Ljava/lang/String;
    const-string v2, "oldPkg"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "oldPkg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    const-string v2, "ydp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pkg---->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$1;->a:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    invoke-static {v2, v0, v1}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->a(Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    return-void
.end method
