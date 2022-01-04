.class final Lcom/lenovo/safecenter/antivirus/support/dowmdataService$1;
.super Landroid/os/Handler;
.source "dowmdataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/antivirus/support/dowmdataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$1;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 27
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 29
    :pswitch_0
    sput-boolean v6, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->isDowning:Z

    .line 30
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 32
    .local v0, "result":I
    if-ne v0, v4, :cond_1

    .line 34
    const-string v2, "virus_state"

    const-string v3, "3"

    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$1;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-static {v2, v3, v4}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 35
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$1;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$1;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/qv_base.amf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v7, v7}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->setUpdateIntent(Ljava/lang/String;II)V

    .line 49
    :goto_1
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$1;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-static {v2, v6}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->a(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;Z)Z

    .line 50
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$1;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->a(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$1;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->b(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$1;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->c(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;)Lcom/tencent/tmsecure/module/update/UpdateManager;

    .line 53
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$1;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-static {v2, v9}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->a(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;Ljava/util/List;)Ljava/util/List;

    .line 55
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 56
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$1;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->stopSelf()V

    goto :goto_0

    .line 36
    :cond_1
    if-ne v0, v8, :cond_2

    .line 38
    const-string v2, "virus_state"

    const-string v3, "3"

    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$1;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-static {v2, v3, v4}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 41
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$1;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$1;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/qv_base.amf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v7}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->setUpdateIntent(Ljava/lang/String;II)V

    goto :goto_1

    .line 45
    :cond_2
    const-string v2, "virus_state"

    const-string v3, "0"

    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$1;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-static {v2, v3, v4}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 46
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$1;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$1;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/qv_base.amf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v8, v7}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->setUpdateIntent(Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 65
    .end local v0    # "result":I
    :pswitch_1
    sput-boolean v6, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->isDowning:Z

    .line 66
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 67
    .local v1, "resultQuery":I
    if-ne v1, v4, :cond_3

    .line 69
    const-string v2, "virus_state"

    const-string v3, "3"

    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$1;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-static {v2, v3, v4}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 70
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$1;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-virtual {v2, v7}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->setQueryIntent(I)V

    .line 83
    :goto_2
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$1;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-static {v2, v6}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->b(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;Z)Z

    .line 84
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$1;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->a(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$1;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->b(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$1;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->c(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;)Lcom/tencent/tmsecure/module/update/UpdateManager;

    .line 87
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$1;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-static {v2, v9}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->a(Lcom/lenovo/safecenter/antivirus/support/dowmdataService;Ljava/util/List;)Ljava/util/List;

    .line 89
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 90
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$1;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->stopSelf()V

    goto/16 :goto_0

    .line 71
    :cond_3
    if-ne v1, v8, :cond_4

    .line 73
    const-string v2, "virus_state"

    const-string v3, "2"

    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$1;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-static {v2, v3, v4}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 74
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$1;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-virtual {v2, v6}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->setQueryIntent(I)V

    goto :goto_2

    .line 79
    :cond_4
    const-string v2, "virus_state"

    const-string v3, "0"

    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$1;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-static {v2, v3, v4}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 80
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/support/dowmdataService$1;->a:Lcom/lenovo/safecenter/antivirus/support/dowmdataService;

    invoke-virtual {v2, v8}, Lcom/lenovo/safecenter/antivirus/support/dowmdataService;->setQueryIntent(I)V

    goto :goto_2

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
