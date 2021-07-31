.class final Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout$1;
.super Ljava/lang/Object;
.source "CpuAndMemeoryLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->startThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;


# direct methods
.method constructor <init>(Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout$1;->a:Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/16 v10, 0x64

    .line 99
    const-string v6, "CpuAndMemeoryLayout"

    const-string v7, "---> run()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    iget-object v6, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout$1;->a:Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;

    invoke-static {v6}, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->a(Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 101
    const-string v6, "CpuAndMemeoryLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ---> run() content"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v5, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;

    invoke-direct {v5}, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;-><init>()V

    .line 104
    .local v5, "mt":Lcom/lenovo/performancecenter/coreui/util/MemoryTools;
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 106
    .local v4, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/lenovo/performancecenter/coreui/util/Utils;->readCpuUsage()I

    move-result v1

    .line 108
    .local v1, "cpuUseReal":I
    int-to-double v6, v1

    const-wide v8, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v6, v8

    double-to-int v0, v6

    .line 110
    .local v0, "cpuUse":I
    const-string v6, "CpuAndMemeoryLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cpuUse == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    if-le v0, v10, :cond_2

    .line 114
    const/16 v0, 0x64

    .line 119
    :cond_0
    :goto_1
    const/4 v6, 0x0

    iput v6, v4, Landroid/os/Message;->what:I

    .line 121
    iput v0, v4, Landroid/os/Message;->arg1:I

    .line 124
    invoke-virtual {v5}, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;->getSystemMeminfo()I

    move-result v3

    .line 125
    .local v3, "memoryUse":I
    const-string v6, "CpuAndMemeoryLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "memoryUse == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    if-le v3, v10, :cond_3

    .line 127
    const/16 v3, 0x64

    .line 133
    :cond_1
    :goto_2
    iput v3, v4, Landroid/os/Message;->arg2:I

    .line 134
    iget-object v6, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout$1;->a:Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;

    invoke-static {v6}, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->b(Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;)Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout$a;

    move-result-object v6

    const-wide/16 v7, 0xc8

    invoke-virtual {v6, v4, v7, v8}, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 136
    :try_start_0
    iget-object v6, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout$1;->a:Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;

    invoke-static {v6}, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->c(Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;)I

    move-result v6

    const/4 v7, 0x3

    if-gt v6, v7, :cond_4

    .line 137
    iget-object v6, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout$1;->a:Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;

    invoke-static {v6}, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->d(Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;)Ljava/lang/Thread;

    const-wide/16 v6, 0x5dc

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 138
    iget-object v6, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout$1;->a:Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;

    invoke-static {v6}, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->e(Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 143
    :catch_0
    move-exception v2

    .line 144
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 115
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "memoryUse":I
    :cond_2
    if-gez v0, :cond_0

    .line 116
    const/4 v0, 0x1

    goto :goto_1

    .line 128
    .restart local v3    # "memoryUse":I
    :cond_3
    if-gez v3, :cond_1

    .line 129
    const/4 v3, 0x1

    goto :goto_2

    .line 140
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout$1;->a:Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;

    invoke-static {v6}, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->d(Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;)Ljava/lang/Thread;

    const-wide/16 v6, 0x1388

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 147
    .end local v0    # "cpuUse":I
    .end local v1    # "cpuUseReal":I
    .end local v3    # "memoryUse":I
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "mt":Lcom/lenovo/performancecenter/coreui/util/MemoryTools;
    :cond_5
    return-void
.end method
