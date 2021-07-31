.class final Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast$1;
.super Ljava/lang/Thread;
.source "SafeInputMethodBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast$1;->b:Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;

    iput-object p2, p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 123
    const-string v1, "ydp"

    const-string v2, "in thread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 127
    :goto_0
    invoke-static {}, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    const-wide/16 v1, 0x96

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->b()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 130
    invoke-static {}, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->c()Z

    .line 132
    :cond_0
    const-string v1, "ydp"

    const-string v2, "in the add"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 167
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    return-void

    .line 134
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->e()Z

    move-result v1

    if-nez v1, :cond_3

    .line 137
    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast$1;->b:Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;

    const-string v2, "com.android.inputmethod.latin/.LatinIME"

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->a(Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast$1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "old_input"

    invoke-static {}, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 147
    :cond_2
    :goto_2
    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->a(J)J

    .line 162
    invoke-static {}, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->g()Ljava/lang/Thread;

    goto :goto_1

    .line 140
    :cond_3
    invoke-static {}, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->d()Z

    move-result v1

    if-nez v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast$1;->b:Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;

    invoke-static {}, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->a(Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast$1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "old_input"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 145
    const-string v1, ""

    invoke-static {v1}, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
