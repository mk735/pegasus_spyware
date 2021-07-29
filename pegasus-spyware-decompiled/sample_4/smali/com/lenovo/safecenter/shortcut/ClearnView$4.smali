.class final Lcom/lenovo/safecenter/shortcut/ClearnView$4;
.super Ljava/lang/Object;
.source "ClearnView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/shortcut/ClearnView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/lenovo/safecenter/shortcut/ClearnView;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/shortcut/ClearnView;II)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$4;->c:Lcom/lenovo/safecenter/shortcut/ClearnView;

    iput p2, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$4;->a:I

    iput p3, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 266
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 267
    .local v2, "msg1":Landroid/os/Message;
    iput v5, v2, Landroid/os/Message;->what:I

    .line 268
    iget-object v3, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$4;->c:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v3}, Lcom/lenovo/safecenter/shortcut/ClearnView;->s(Lcom/lenovo/safecenter/shortcut/ClearnView;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 269
    iget-object v3, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$4;->c:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v3}, Lcom/lenovo/safecenter/shortcut/ClearnView;->s(Lcom/lenovo/safecenter/shortcut/ClearnView;)I

    move-result v3

    iput v3, v2, Landroid/os/Message;->arg2:I

    .line 270
    iget-object v3, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$4;->c:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v3}, Lcom/lenovo/safecenter/shortcut/ClearnView;->t(Lcom/lenovo/safecenter/shortcut/ClearnView;)Lcom/lenovo/safecenter/shortcut/ClearnView$b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lenovo/safecenter/shortcut/ClearnView$b;->sendMessage(Landroid/os/Message;)Z

    .line 272
    const-wide/16 v3, 0x1f4

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 278
    :goto_0
    iget-object v3, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$4;->c:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v3}, Lcom/lenovo/safecenter/shortcut/ClearnView;->s(Lcom/lenovo/safecenter/shortcut/ClearnView;)I

    move-result v3

    if-lez v3, :cond_0

    .line 279
    iget-object v3, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$4;->c:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v3}, Lcom/lenovo/safecenter/shortcut/ClearnView;->u(Lcom/lenovo/safecenter/shortcut/ClearnView;)I

    .line 280
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 281
    .local v1, "msg":Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->what:I

    .line 282
    iget-object v3, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$4;->c:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v3}, Lcom/lenovo/safecenter/shortcut/ClearnView;->s(Lcom/lenovo/safecenter/shortcut/ClearnView;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 283
    iget-object v3, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$4;->c:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v3}, Lcom/lenovo/safecenter/shortcut/ClearnView;->s(Lcom/lenovo/safecenter/shortcut/ClearnView;)I

    move-result v3

    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 284
    iget-object v3, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$4;->c:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v3}, Lcom/lenovo/safecenter/shortcut/ClearnView;->t(Lcom/lenovo/safecenter/shortcut/ClearnView;)Lcom/lenovo/safecenter/shortcut/ClearnView$b;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/lenovo/safecenter/shortcut/ClearnView$b;->sendMessage(Landroid/os/Message;)Z

    .line 286
    :try_start_1
    iget v3, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$4;->a:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 273
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "msg":Landroid/os/Message;
    :catch_1
    move-exception v0

    .line 274
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 292
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$4;->c:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v3}, Lcom/lenovo/safecenter/shortcut/ClearnView;->s(Lcom/lenovo/safecenter/shortcut/ClearnView;)I

    move-result v3

    iget v4, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$4;->b:I

    if-ge v3, v4, :cond_1

    .line 293
    iget-object v3, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$4;->c:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v3}, Lcom/lenovo/safecenter/shortcut/ClearnView;->v(Lcom/lenovo/safecenter/shortcut/ClearnView;)I

    .line 294
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 295
    .restart local v1    # "msg":Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->what:I

    .line 296
    iget-object v3, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$4;->c:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v3}, Lcom/lenovo/safecenter/shortcut/ClearnView;->s(Lcom/lenovo/safecenter/shortcut/ClearnView;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 297
    iget-object v3, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$4;->c:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v3}, Lcom/lenovo/safecenter/shortcut/ClearnView;->s(Lcom/lenovo/safecenter/shortcut/ClearnView;)I

    move-result v3

    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 298
    iget-object v3, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$4;->c:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v3}, Lcom/lenovo/safecenter/shortcut/ClearnView;->t(Lcom/lenovo/safecenter/shortcut/ClearnView;)Lcom/lenovo/safecenter/shortcut/ClearnView$b;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/lenovo/safecenter/shortcut/ClearnView$b;->sendMessage(Landroid/os/Message;)Z

    .line 300
    :try_start_2
    iget v3, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$4;->a:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 301
    :catch_2
    move-exception v0

    .line 302
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 306
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method
