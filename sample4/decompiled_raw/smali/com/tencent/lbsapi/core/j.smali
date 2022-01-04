.class public Lcom/tencent/lbsapi/core/j;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/lbsapi/core/QLBSEngine;

.field private b:Lcom/tencent/lbsapi/a/f;

.field private c:Lcom/tencent/lbsapi/QLBSNotification;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/Context;

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/lbsapi/QLBSNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    iput-object v0, p0, Lcom/tencent/lbsapi/core/j;->b:Lcom/tencent/lbsapi/a/f;

    iput-object v0, p0, Lcom/tencent/lbsapi/core/j;->c:Lcom/tencent/lbsapi/QLBSNotification;

    iput-object v0, p0, Lcom/tencent/lbsapi/core/j;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/lbsapi/core/j;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/lbsapi/core/j;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/lbsapi/core/j;->g:Landroid/content/Context;

    iput-object v0, p0, Lcom/tencent/lbsapi/core/j;->h:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-direct {v0, p1, p2}, Lcom/tencent/lbsapi/core/QLBSEngine;-><init>(Landroid/content/Context;Lcom/tencent/lbsapi/QLBSNotification;)V

    iput-object v0, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    new-instance v0, Lcom/tencent/lbsapi/a/f;

    new-instance v1, Lcom/tencent/lbsapi/core/a;

    invoke-direct {v1, p0}, Lcom/tencent/lbsapi/core/a;-><init>(Lcom/tencent/lbsapi/core/j;)V

    invoke-direct {v0, v1}, Lcom/tencent/lbsapi/a/f;-><init>(Lcom/tencent/lbsapi/a/b;)V

    iput-object v0, p0, Lcom/tencent/lbsapi/core/j;->b:Lcom/tencent/lbsapi/a/f;

    iput-object p1, p0, Lcom/tencent/lbsapi/core/j;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/lbsapi/core/j;->c:Lcom/tencent/lbsapi/QLBSNotification;

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    iput-object p3, p0, Lcom/tencent/lbsapi/core/j;->d:Ljava/lang/String;

    if-nez p4, :cond_1

    const-string p4, ""

    :cond_1
    iput-object p4, p0, Lcom/tencent/lbsapi/core/j;->e:Ljava/lang/String;

    if-nez p5, :cond_2

    const-string p5, ""

    :cond_2
    iput-object p5, p0, Lcom/tencent/lbsapi/core/j;->f:Ljava/lang/String;

    new-instance v0, Lcom/tencent/lbsapi/core/b;

    invoke-direct {v0, p0, p2}, Lcom/tencent/lbsapi/core/b;-><init>(Lcom/tencent/lbsapi/core/j;Lcom/tencent/lbsapi/QLBSNotification;)V

    iput-object v0, p0, Lcom/tencent/lbsapi/core/j;->h:Landroid/os/Handler;

    return-void
.end method

.method private a(IILjava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const-string v2, "requestId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ErrorCode"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ErrorInfo"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/lbsapi/core/j;->h:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/lbsapi/core/j;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/lbsapi/core/j;IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->c:Lcom/tencent/lbsapi/QLBSNotification;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/lbsapi/core/j;->a(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/lbsapi/core/j;I[B)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->c:Lcom/tencent/lbsapi/QLBSNotification;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v1}, Lcom/qq/jce/wup/UniPacket;-><init>()V

    const-string v0, "utf-8"

    invoke-virtual {v1, v0}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/lbsapi/core/j;->e:Ljava/lang/String;

    invoke-static {p2, v0, v2}, Lcom/tencent/lbsapi/core/d;->b([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, -0x2

    const-string v1, "wup\u56de\u5305\u89e3\u6790\u5f02\u5e38"

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/lbsapi/core/j;->a(IILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1, v0}, Lcom/qq/jce/wup/UniPacket;->decode([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v0, "RspHeader"

    invoke-virtual {v1, v0}, Lcom/qq/jce/wup/UniPacket;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLBSAPIProtocol/RspHeader;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LLBSAPIProtocol/RspHeader;->getEResult()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, LLBSAPIProtocol/RspHeader;->getEResult()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, -0x3

    const-string v1, "LBS\u540e\u53f0\u7cfb\u7edf\u5f02\u5e38"

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/lbsapi/core/j;->a(IILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, -0x7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/tencent/lbsapi/core/j;->a(IILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, -0x2

    :try_start_3
    const-string v1, "wup\u56de\u5305\u89e3\u6790\u5f02\u5e38"

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/lbsapi/core/j;->a(IILjava/lang/String;)V

    goto :goto_0

    :sswitch_0
    const/4 v0, -0x4

    const-string v1, "LBS\u540e\u53f0\u7cfb\u7edf\u65e0\u6cd5\u6839\u636e\u8f93\u5165\u5b9a\u4f4d"

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/lbsapi/core/j;->a(IILjava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const/4 v0, -0x5

    const-string v1, "LBS\u540e\u53f0\u9274\u6743\u5931\u8d25"

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/lbsapi/core/j;->a(IILjava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const/4 v0, -0x6

    const-string v1, "\u8f93\u5165\u6761\u4ef6\u4e0d\u8db3"

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/lbsapi/core/j;->a(IILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, -0x2

    const-string v1, "wup\u56de\u5305\u89e3\u6790\u5f02\u5e38"

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/lbsapi/core/j;->a(IILjava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/qq/jce/wup/UniPacket;->getFuncName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ReqGetPosition"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "RspGetPosition"

    invoke-virtual {v1, v0}, Lcom/qq/jce/wup/UniPacket;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLBSAPIProtocol/RspGetPosition;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const-string v3, "requestId"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    const-string v3, "RspGetPosition"

    invoke-virtual {v0}, LLBSAPIProtocol/RspGetPosition;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :goto_1
    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    iput v0, v1, Landroid/os/Message;->what:I

    const-string v0, "ErrorInfo"

    const-string v3, "wup\u56de\u5305\u89e3\u6790\u5f02\u5e38"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ErrorCode"

    const/4 v3, -0x2

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/qq/jce/wup/UniPacket;->getFuncName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ReqGetPoiList"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "RspGetPoiList"

    invoke-virtual {v1, v0}, Lcom/qq/jce/wup/UniPacket;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLBSAPIProtocol/RspGetPoiList;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const-string v3, "requestId"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v0, :cond_6

    const/4 v3, 0x2

    iput v3, v1, Landroid/os/Message;->what:I

    const-string v3, "RspGetPoiList"

    invoke-virtual {v0}, LLBSAPIProtocol/RspGetPoiList;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :goto_2
    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    iput v0, v1, Landroid/os/Message;->what:I

    const-string v0, "ErrorInfo"

    const-string v3, "wup\u56de\u5305\u89e3\u6790\u5f02\u5e38"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ErrorCode"

    const/4 v3, -0x2

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Lcom/qq/jce/wup/UniPacket;->getFuncName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ReqSearchNearPoiList"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "RspSearchNearPoiList"

    invoke-virtual {v1, v0}, Lcom/qq/jce/wup/UniPacket;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLBSAPIProtocol/RspSearchNearPoiList;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const-string v3, "requestId"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v0, :cond_8

    const/4 v3, 0x3

    iput v3, v1, Landroid/os/Message;->what:I

    const-string v3, "RspSearchNearPoiList"

    invoke-virtual {v0}, LLBSAPIProtocol/RspSearchNearPoiList;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :goto_3
    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    iput v0, v1, Landroid/os/Message;->what:I

    const-string v0, "ErrorInfo"

    const-string v3, "wup\u56de\u5305\u89e3\u6790\u5f02\u5e38"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ErrorCode"

    const/4 v3, -0x2

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    :cond_9
    const/4 v0, -0x2

    const-string v1, "wup\u56de\u5305\u89e3\u6790\u5f02\u5e38"

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/lbsapi/core/j;->a(IILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_0
        0xc9 -> :sswitch_1
        0xca -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/lbsapi/core/j;->g:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->a()V

    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->f()V

    iput-object v1, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    :cond_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->b:Lcom/tencent/lbsapi/a/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->b:Lcom/tencent/lbsapi/a/f;

    invoke-virtual {v0}, Lcom/tencent/lbsapi/a/f;->b()V

    iput-object v1, p0, Lcom/tencent/lbsapi/core/j;->b:Lcom/tencent/lbsapi/a/f;

    :cond_1
    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->h:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/tencent/lbsapi/core/j;->h:Landroid/os/Handler;

    :cond_2
    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v0, p1}, Lcom/tencent/lbsapi/core/QLBSEngine;->a(I)Z

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v0, p1}, Lcom/tencent/lbsapi/core/QLBSEngine;->a(Z)V

    return-void
.end method

.method public a(ILjava/lang/String;I)Z
    .locals 10

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->j()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    new-instance v2, LLBSAPIProtocol/ReqHeader;

    invoke-direct {v2}, LLBSAPIProtocol/ReqHeader;-><init>()V

    invoke-virtual {v2, p2}, LLBSAPIProtocol/ReqHeader;->setStrUin(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, LLBSAPIProtocol/ReqHeader;->setEUinType(I)V

    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, LLBSAPIProtocol/ReqHeader;->setStrAuthName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, LLBSAPIProtocol/ReqHeader;->setStrAuthPassword(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, LLBSAPIProtocol/ReqHeader;->setEDeviceType(I)V

    new-instance v3, LLBSAPIProtocol/ReqGetPosition;

    invoke-direct {v3}, LLBSAPIProtocol/ReqGetPosition;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v0}, LLBSAPIProtocol/ReqGetPosition;->setVCells(Ljava/util/ArrayList;)V

    invoke-virtual {v3}, LLBSAPIProtocol/ReqGetPosition;->getVCells()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v4, LLBSAPIProtocol/Cell;

    iget-object v5, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v5}, Lcom/tencent/lbsapi/core/QLBSEngine;->g()I

    move-result v5

    int-to-short v5, v5

    iget-object v6, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v6}, Lcom/tencent/lbsapi/core/QLBSEngine;->h()I

    move-result v6

    int-to-short v6, v6

    iget-object v7, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v7}, Lcom/tencent/lbsapi/core/QLBSEngine;->i()I

    move-result v7

    iget-object v8, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v8}, Lcom/tencent/lbsapi/core/QLBSEngine;->j()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, LLBSAPIProtocol/Cell;-><init>(SSII)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->o()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3}, LLBSAPIProtocol/ReqGetPosition;->getVCells()Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, LLBSAPIProtocol/Cell;

    iget-object v7, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v7}, Lcom/tencent/lbsapi/core/QLBSEngine;->g()I

    move-result v7

    int-to-short v7, v7

    iget-object v8, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v8}, Lcom/tencent/lbsapi/core/QLBSEngine;->h()I

    move-result v8

    int-to-short v8, v8

    iget-object v9, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v9}, Lcom/tencent/lbsapi/core/QLBSEngine;->i()I

    move-result v9

    invoke-direct {v6, v7, v8, v9, v0}, LLBSAPIProtocol/Cell;-><init>(SSII)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v0, LLBSAPIProtocol/GPS;

    iget-object v4, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v4}, Lcom/tencent/lbsapi/core/QLBSEngine;->k()I

    move-result v4

    iget-object v5, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v5}, Lcom/tencent/lbsapi/core/QLBSEngine;->l()I

    move-result v5

    const/4 v6, -0x1

    invoke-direct {v0, v4, v5, v6, v1}, LLBSAPIProtocol/GPS;-><init>(IIII)V

    invoke-virtual {v3, v0}, LLBSAPIProtocol/ReqGetPosition;->setStGps(LLBSAPIProtocol/GPS;)V

    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v0}, LLBSAPIProtocol/ReqGetPosition;->setVMacs(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->s()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-virtual {v3, v0}, LLBSAPIProtocol/ReqGetPosition;->setVMeasures(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, LLBSAPIProtocol/ReqGetPosition;->setStrImei(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->f:Ljava/lang/String;

    invoke-virtual {v3, v0}, LLBSAPIProtocol/ReqGetPosition;->setStrAppUA(Ljava/lang/String;)V

    new-instance v0, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v0}, Lcom/qq/jce/wup/UniPacket;-><init>()V

    const-string v4, "utf-8"

    invoke-virtual {v0, v4}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/qq/jce/wup/UniPacket;->setRequestId(I)V

    const-string v4, "LBS.AddressServer.AddressServantObj"

    invoke-virtual {v0, v4}, Lcom/qq/jce/wup/UniPacket;->setServantName(Ljava/lang/String;)V

    const-string v4, "ReqGetPosition"

    invoke-virtual {v0, v4}, Lcom/qq/jce/wup/UniPacket;->setFuncName(Ljava/lang/String;)V

    const-string v4, "ReqHeader"

    invoke-virtual {v0, v4, v2}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "ReqGetPosition"

    invoke-virtual {v0, v2, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/qq/jce/wup/UniPacket;->encode()[B

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/lbsapi/core/j;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/lbsapi/core/j;->e:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/tencent/lbsapi/core/d;->a([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/tencent/lbsapi/core/j;->b:Lcom/tencent/lbsapi/a/f;

    iget-object v2, p0, Lcom/tencent/lbsapi/core/j;->g:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/lbsapi/core/j;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, v3, v0}, Lcom/tencent/lbsapi/a/f;->a(Landroid/content/Context;ILjava/lang/String;[B)Z

    move-result v0

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public a(ILjava/lang/String;IIIILjava/lang/String;Ljava/util/ArrayList;)Z
    .locals 10

    iget-object v1, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v1}, Lcom/tencent/lbsapi/core/QLBSEngine;->j()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v1}, Lcom/tencent/lbsapi/core/QLBSEngine;->m()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v2, LLBSAPIProtocol/ReqHeader;

    invoke-direct {v2}, LLBSAPIProtocol/ReqHeader;-><init>()V

    invoke-virtual {v2, p2}, LLBSAPIProtocol/ReqHeader;->setStrUin(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, LLBSAPIProtocol/ReqHeader;->setEUinType(I)V

    iget-object v1, p0, Lcom/tencent/lbsapi/core/j;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, LLBSAPIProtocol/ReqHeader;->setStrAuthName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/lbsapi/core/j;->e:Ljava/lang/String;

    invoke-virtual {v2, v1}, LLBSAPIProtocol/ReqHeader;->setStrAuthPassword(Ljava/lang/String;)V

    new-instance v3, LLBSAPIProtocol/ReqSearchNearPoiList;

    invoke-direct {v3}, LLBSAPIProtocol/ReqSearchNearPoiList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v1}, LLBSAPIProtocol/ReqSearchNearPoiList;->setVCells(Ljava/util/ArrayList;)V

    invoke-virtual {v3}, LLBSAPIProtocol/ReqSearchNearPoiList;->getVCells()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v4, LLBSAPIProtocol/Cell;

    iget-object v5, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v5}, Lcom/tencent/lbsapi/core/QLBSEngine;->g()I

    move-result v5

    int-to-short v5, v5

    iget-object v6, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v6}, Lcom/tencent/lbsapi/core/QLBSEngine;->h()I

    move-result v6

    int-to-short v6, v6

    iget-object v7, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v7}, Lcom/tencent/lbsapi/core/QLBSEngine;->i()I

    move-result v7

    iget-object v8, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v8}, Lcom/tencent/lbsapi/core/QLBSEngine;->j()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, LLBSAPIProtocol/Cell;-><init>(SSII)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v1}, Lcom/tencent/lbsapi/core/QLBSEngine;->o()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3}, LLBSAPIProtocol/ReqSearchNearPoiList;->getVCells()Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, LLBSAPIProtocol/Cell;

    iget-object v7, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v7}, Lcom/tencent/lbsapi/core/QLBSEngine;->g()I

    move-result v7

    int-to-short v7, v7

    iget-object v8, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v8}, Lcom/tencent/lbsapi/core/QLBSEngine;->h()I

    move-result v8

    int-to-short v8, v8

    iget-object v9, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v9}, Lcom/tencent/lbsapi/core/QLBSEngine;->i()I

    move-result v9

    invoke-direct {v6, v7, v8, v9, v1}, LLBSAPIProtocol/Cell;-><init>(SSII)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v1, LLBSAPIProtocol/GPS;

    iget-object v4, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v4}, Lcom/tencent/lbsapi/core/QLBSEngine;->k()I

    move-result v4

    iget-object v5, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v5}, Lcom/tencent/lbsapi/core/QLBSEngine;->l()I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct {v1, v4, v5, v6, v7}, LLBSAPIProtocol/GPS;-><init>(IIII)V

    invoke-virtual {v3, v1}, LLBSAPIProtocol/ReqSearchNearPoiList;->setStGps(LLBSAPIProtocol/GPS;)V

    iget-object v1, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v1}, Lcom/tencent/lbsapi/core/QLBSEngine;->m()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v3, v1}, LLBSAPIProtocol/ReqSearchNearPoiList;->setVMacs(Ljava/util/ArrayList;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v1}, LLBSAPIProtocol/ReqSearchNearPoiList;->setVTypes(Ljava/util/ArrayList;)V

    if-eqz p8, :cond_2

    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v3}, LLBSAPIProtocol/ReqSearchNearPoiList;->getVTypes()Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual {v3, p4}, LLBSAPIProtocol/ReqSearchNearPoiList;->setIRadius(I)V

    invoke-virtual {v3, p5}, LLBSAPIProtocol/ReqSearchNearPoiList;->setIBeginPos(I)V

    move/from16 v0, p6

    invoke-virtual {v3, v0}, LLBSAPIProtocol/ReqSearchNearPoiList;->setIReqNum(I)V

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, LLBSAPIProtocol/ReqSearchNearPoiList;->setStrKeyword(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v1}, Lcom/tencent/lbsapi/core/QLBSEngine;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, LLBSAPIProtocol/ReqSearchNearPoiList;->setStrImei(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/lbsapi/core/j;->f:Ljava/lang/String;

    invoke-virtual {v3, v1}, LLBSAPIProtocol/ReqSearchNearPoiList;->setStrAppUA(Ljava/lang/String;)V

    new-instance v4, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v4}, Lcom/qq/jce/wup/UniPacket;-><init>()V

    const-string v1, "utf-8"

    invoke-virtual {v4, v1}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Lcom/qq/jce/wup/UniPacket;->setRequestId(I)V

    const-string v1, "LBS.AddressServer.AddressServantObj"

    invoke-virtual {v4, v1}, Lcom/qq/jce/wup/UniPacket;->setServantName(Ljava/lang/String;)V

    const-string v1, "ReqSearchNearPoiList"

    invoke-virtual {v4, v1}, Lcom/qq/jce/wup/UniPacket;->setFuncName(Ljava/lang/String;)V

    const-string v1, "ReqHeader"

    invoke-virtual {v4, v1, v2}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "ReqSearchNearPoiList"

    invoke-virtual {v4, v1, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v1}, Lcom/tencent/lbsapi/core/QLBSEngine;->s()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-virtual {v3, v1}, LLBSAPIProtocol/ReqSearchNearPoiList;->setVMeasures(Ljava/util/ArrayList;)V

    invoke-virtual {v4}, Lcom/qq/jce/wup/UniPacket;->encode()[B

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/lbsapi/core/j;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/lbsapi/core/j;->e:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/tencent/lbsapi/core/d;->a([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/tencent/lbsapi/core/j;->b:Lcom/tencent/lbsapi/a/f;

    iget-object v3, p0, Lcom/tencent/lbsapi/core/j;->g:Landroid/content/Context;

    iget-object v4, p0, Lcom/tencent/lbsapi/core/j;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, p1, v4, v1}, Lcom/tencent/lbsapi/a/f;->a(Landroid/content/Context;ILjava/lang/String;[B)Z

    move-result v1

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public a(ILjava/lang/String;IIIILjava/util/ArrayList;I)Z
    .locals 10

    iget-object v1, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v1}, Lcom/tencent/lbsapi/core/QLBSEngine;->j()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v1}, Lcom/tencent/lbsapi/core/QLBSEngine;->m()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v2, LLBSAPIProtocol/ReqHeader;

    invoke-direct {v2}, LLBSAPIProtocol/ReqHeader;-><init>()V

    invoke-virtual {v2, p2}, LLBSAPIProtocol/ReqHeader;->setStrUin(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, LLBSAPIProtocol/ReqHeader;->setEUinType(I)V

    iget-object v1, p0, Lcom/tencent/lbsapi/core/j;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, LLBSAPIProtocol/ReqHeader;->setStrAuthName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/lbsapi/core/j;->e:Ljava/lang/String;

    invoke-virtual {v2, v1}, LLBSAPIProtocol/ReqHeader;->setStrAuthPassword(Ljava/lang/String;)V

    new-instance v3, LLBSAPIProtocol/ReqGetPoiList;

    invoke-direct {v3}, LLBSAPIProtocol/ReqGetPoiList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v1}, LLBSAPIProtocol/ReqGetPoiList;->setVCells(Ljava/util/ArrayList;)V

    invoke-virtual {v3}, LLBSAPIProtocol/ReqGetPoiList;->getVCells()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v4, LLBSAPIProtocol/Cell;

    iget-object v5, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v5}, Lcom/tencent/lbsapi/core/QLBSEngine;->g()I

    move-result v5

    int-to-short v5, v5

    iget-object v6, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v6}, Lcom/tencent/lbsapi/core/QLBSEngine;->h()I

    move-result v6

    int-to-short v6, v6

    iget-object v7, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v7}, Lcom/tencent/lbsapi/core/QLBSEngine;->i()I

    move-result v7

    iget-object v8, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v8}, Lcom/tencent/lbsapi/core/QLBSEngine;->j()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, LLBSAPIProtocol/Cell;-><init>(SSII)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v1}, Lcom/tencent/lbsapi/core/QLBSEngine;->o()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3}, LLBSAPIProtocol/ReqGetPoiList;->getVCells()Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, LLBSAPIProtocol/Cell;

    iget-object v7, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v7}, Lcom/tencent/lbsapi/core/QLBSEngine;->g()I

    move-result v7

    int-to-short v7, v7

    iget-object v8, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v8}, Lcom/tencent/lbsapi/core/QLBSEngine;->h()I

    move-result v8

    int-to-short v8, v8

    iget-object v9, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v9}, Lcom/tencent/lbsapi/core/QLBSEngine;->i()I

    move-result v9

    invoke-direct {v6, v7, v8, v9, v1}, LLBSAPIProtocol/Cell;-><init>(SSII)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v1, LLBSAPIProtocol/GPS;

    iget-object v4, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v4}, Lcom/tencent/lbsapi/core/QLBSEngine;->k()I

    move-result v4

    iget-object v5, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v5}, Lcom/tencent/lbsapi/core/QLBSEngine;->l()I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct {v1, v4, v5, v6, v7}, LLBSAPIProtocol/GPS;-><init>(IIII)V

    invoke-virtual {v3, v1}, LLBSAPIProtocol/ReqGetPoiList;->setStGps(LLBSAPIProtocol/GPS;)V

    iget-object v1, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v1}, Lcom/tencent/lbsapi/core/QLBSEngine;->m()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v3, v1}, LLBSAPIProtocol/ReqGetPoiList;->setVMacs(Ljava/util/ArrayList;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v1}, LLBSAPIProtocol/ReqGetPoiList;->setVTypes(Ljava/util/ArrayList;)V

    if-eqz p7, :cond_2

    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v3}, LLBSAPIProtocol/ReqGetPoiList;->getVTypes()Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual {v3, p4}, LLBSAPIProtocol/ReqGetPoiList;->setIRadius(I)V

    invoke-virtual {v3, p5}, LLBSAPIProtocol/ReqGetPoiList;->setIBeginPos(I)V

    move/from16 v0, p6

    invoke-virtual {v3, v0}, LLBSAPIProtocol/ReqGetPoiList;->setIReqNum(I)V

    move/from16 v0, p8

    invoke-virtual {v3, v0}, LLBSAPIProtocol/ReqGetPoiList;->setESortMethod(I)V

    iget-object v1, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v1}, Lcom/tencent/lbsapi/core/QLBSEngine;->s()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-virtual {v3, v1}, LLBSAPIProtocol/ReqGetPoiList;->setVMeasures(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v1}, Lcom/tencent/lbsapi/core/QLBSEngine;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, LLBSAPIProtocol/ReqGetPoiList;->setStrImei(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/lbsapi/core/j;->f:Ljava/lang/String;

    invoke-virtual {v3, v1}, LLBSAPIProtocol/ReqGetPoiList;->setStrAppUA(Ljava/lang/String;)V

    new-instance v1, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v1}, Lcom/qq/jce/wup/UniPacket;-><init>()V

    const-string v4, "utf-8"

    invoke-virtual {v1, v4}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/qq/jce/wup/UniPacket;->setRequestId(I)V

    const-string v4, "LBS.AddressServer.AddressServantObj"

    invoke-virtual {v1, v4}, Lcom/qq/jce/wup/UniPacket;->setServantName(Ljava/lang/String;)V

    const-string v4, "ReqGetPoiList"

    invoke-virtual {v1, v4}, Lcom/qq/jce/wup/UniPacket;->setFuncName(Ljava/lang/String;)V

    const-string v4, "ReqHeader"

    invoke-virtual {v1, v4, v2}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "ReqGetPoiList"

    invoke-virtual {v1, v2, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/qq/jce/wup/UniPacket;->encode()[B

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/lbsapi/core/j;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/lbsapi/core/j;->e:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/tencent/lbsapi/core/d;->a([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/tencent/lbsapi/core/j;->b:Lcom/tencent/lbsapi/a/f;

    iget-object v3, p0, Lcom/tencent/lbsapi/core/j;->g:Landroid/content/Context;

    iget-object v4, p0, Lcom/tencent/lbsapi/core/j;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, p1, v4, v1}, Lcom/tencent/lbsapi/a/f;->a(Landroid/content/Context;ILjava/lang/String;[B)Z

    move-result v1

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->a()V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v0, p1}, Lcom/tencent/lbsapi/core/QLBSEngine;->b(Z)V

    return-void
.end method

.method public c()[B
    .locals 9

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, LLBSAPIProtocol/DeviceData;

    invoke-direct {v2}, LLBSAPIProtocol/DeviceData;-><init>()V

    new-instance v0, LLBSAPIProtocol/Measure;

    invoke-direct {v0}, LLBSAPIProtocol/Measure;-><init>()V

    invoke-virtual {v2, v0}, LLBSAPIProtocol/DeviceData;->setStCurMeasure(LLBSAPIProtocol/Measure;)V

    invoke-virtual {v2}, LLBSAPIProtocol/DeviceData;->getStCurMeasure()LLBSAPIProtocol/Measure;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3}, LLBSAPIProtocol/Measure;->setVCells(Ljava/util/ArrayList;)V

    invoke-virtual {v2}, LLBSAPIProtocol/DeviceData;->getStCurMeasure()LLBSAPIProtocol/Measure;

    move-result-object v0

    invoke-virtual {v0}, LLBSAPIProtocol/Measure;->getVCells()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v3, LLBSAPIProtocol/Cell;

    iget-object v4, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v4}, Lcom/tencent/lbsapi/core/QLBSEngine;->g()I

    move-result v4

    int-to-short v4, v4

    iget-object v5, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v5}, Lcom/tencent/lbsapi/core/QLBSEngine;->h()I

    move-result v5

    int-to-short v5, v5

    iget-object v6, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v6}, Lcom/tencent/lbsapi/core/QLBSEngine;->i()I

    move-result v6

    iget-object v7, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v7}, Lcom/tencent/lbsapi/core/QLBSEngine;->j()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, LLBSAPIProtocol/Cell;-><init>(SSII)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->o()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2}, LLBSAPIProtocol/DeviceData;->getStCurMeasure()LLBSAPIProtocol/Measure;

    move-result-object v4

    invoke-virtual {v4}, LLBSAPIProtocol/Measure;->getVCells()Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, LLBSAPIProtocol/Cell;

    iget-object v6, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v6}, Lcom/tencent/lbsapi/core/QLBSEngine;->g()I

    move-result v6

    int-to-short v6, v6

    iget-object v7, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v7}, Lcom/tencent/lbsapi/core/QLBSEngine;->h()I

    move-result v7

    int-to-short v7, v7

    iget-object v8, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v8}, Lcom/tencent/lbsapi/core/QLBSEngine;->i()I

    move-result v8

    invoke-direct {v5, v6, v7, v8, v0}, LLBSAPIProtocol/Cell;-><init>(SSII)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v2}, LLBSAPIProtocol/DeviceData;->getStCurMeasure()LLBSAPIProtocol/Measure;

    move-result-object v0

    new-instance v3, LLBSAPIProtocol/GPS;

    iget-object v4, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v4}, Lcom/tencent/lbsapi/core/QLBSEngine;->k()I

    move-result v4

    iget-object v5, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v5}, Lcom/tencent/lbsapi/core/QLBSEngine;->l()I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, LLBSAPIProtocol/GPS;-><init>(IIII)V

    invoke-virtual {v0, v3}, LLBSAPIProtocol/Measure;->setStGps(LLBSAPIProtocol/GPS;)V

    invoke-virtual {v2}, LLBSAPIProtocol/DeviceData;->getStCurMeasure()LLBSAPIProtocol/Measure;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v3}, Lcom/tencent/lbsapi/core/QLBSEngine;->m()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, LLBSAPIProtocol/Measure;->setVMacs(Ljava/util/ArrayList;)V

    invoke-virtual {v2}, LLBSAPIProtocol/DeviceData;->getStCurMeasure()LLBSAPIProtocol/Measure;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v3}, Lcom/tencent/lbsapi/core/QLBSEngine;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, LLBSAPIProtocol/Measure;->setStrExtraInfo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->s()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-virtual {v2, v0}, LLBSAPIProtocol/DeviceData;->setVMeasures(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, LLBSAPIProtocol/DeviceData;->setStrImei(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, LLBSAPIProtocol/DeviceData;->setStrAppUA(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, LLBSAPIProtocol/DeviceData;->setEDeviceType(I)V

    new-instance v0, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v0}, Lcom/qq/jce/wup/UniPacket;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/qq/jce/wup/UniPacket;->setRequestId(I)V

    const-string v3, "utf-8"

    invoke-virtual {v0, v3}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    const-string v3, "LBS.AddressServer.AddressServantObj"

    invoke-virtual {v0, v3}, Lcom/qq/jce/wup/UniPacket;->setServantName(Ljava/lang/String;)V

    const-string v3, "ReqGetPositionApi"

    invoke-virtual {v0, v3}, Lcom/qq/jce/wup/UniPacket;->setFuncName(Ljava/lang/String;)V

    const-string v3, "AuthName"

    iget-object v4, p0, Lcom/tencent/lbsapi/core/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v3}, Lcom/qq/jce/wup/UniPacket;-><init>()V

    const-string v4, "utf-8"

    invoke-virtual {v3, v4}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    const-string v4, "LBS.AddressServer.AddressServantObj"

    invoke-virtual {v3, v4}, Lcom/qq/jce/wup/UniPacket;->setServantName(Ljava/lang/String;)V

    const-string v4, "DeviceData"

    invoke-virtual {v3, v4}, Lcom/qq/jce/wup/UniPacket;->setFuncName(Ljava/lang/String;)V

    const-string v4, "DeviceData"

    invoke-virtual {v3, v4, v2}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/qq/jce/wup/UniPacket;->encode()[B

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/lbsapi/core/j;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/lbsapi/core/j;->e:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/tencent/lbsapi/core/d;->a([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_2

    move-object v0, v1

    goto/16 :goto_1

    :cond_2
    const-string v3, "DeviceDataStr"

    invoke-virtual {v0, v3, v2}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/qq/jce/wup/UniPacket;->encode()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_1
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->b()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->c()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public f()Lcom/tencent/lbsapi/model/QLBSCellInfo;
    .locals 5

    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/lbsapi/model/QLBSCellInfo;

    iget-object v1, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v1}, Lcom/tencent/lbsapi/core/QLBSEngine;->h()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v2}, Lcom/tencent/lbsapi/core/QLBSEngine;->g()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v3}, Lcom/tencent/lbsapi/core/QLBSEngine;->i()I

    move-result v3

    iget-object v4, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v4}, Lcom/tencent/lbsapi/core/QLBSEngine;->j()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/lbsapi/model/QLBSCellInfo;-><init>(IIII)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Lcom/tencent/lbsapi/model/QLBSCellInfo;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->d()Lcom/tencent/lbsapi/model/QLBSCellInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v0}, Lcom/tencent/lbsapi/core/QLBSEngine;->n()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Lcom/tencent/lbsapi/model/QLBSGPSInfo;
    .locals 5

    iget-object v0, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/lbsapi/model/QLBSGPSInfo;

    iget-object v1, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v1}, Lcom/tencent/lbsapi/core/QLBSEngine;->k()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/lbsapi/core/j;->a:Lcom/tencent/lbsapi/core/QLBSEngine;

    invoke-virtual {v2}, Lcom/tencent/lbsapi/core/QLBSEngine;->l()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/lbsapi/model/QLBSGPSInfo;-><init>(IIII)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
