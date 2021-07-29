.class final Lcom/lenovo/safecenter/shortcut/ClearnView$5;
.super Ljava/lang/Object;
.source "ClearnView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/shortcut/ClearnView;->a(Landroid/os/Handler;)[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/lenovo/safecenter/shortcut/ClearnView;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/shortcut/ClearnView;Landroid/os/Handler;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$5;->c:Lcom/lenovo/safecenter/shortcut/ClearnView;

    iput-object p2, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$5;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$5;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 414
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$5;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$5;->b:Ljava/util/ArrayList;

    const-string v2, " -fs "

    iget-object v3, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$5;->c:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v3}, Lcom/lenovo/safecenter/shortcut/ClearnView;->b(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/performancecenter/coreui/util/RootPassage;->execRootCmd(Landroid/os/Handler;Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Context;)V

    .line 415
    const-string v0, "OPTI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ---> ok Thread to kill"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return-void
.end method
