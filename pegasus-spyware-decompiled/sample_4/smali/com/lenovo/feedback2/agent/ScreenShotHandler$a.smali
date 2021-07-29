.class final Lcom/lenovo/feedback2/agent/ScreenShotHandler$a;
.super Ljava/lang/Object;
.source "ScreenShotHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/feedback2/agent/ScreenShotHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/feedback2/agent/ScreenShotHandler;

.field private b:Landroid/view/View;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/lenovo/feedback2/agent/ScreenShotHandler;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lenovo/feedback2/agent/ScreenShotHandler$a;->a:Lcom/lenovo/feedback2/agent/ScreenShotHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p2, p0, Lcom/lenovo/feedback2/agent/ScreenShotHandler$a;->b:Landroid/view/View;

    .line 85
    iput-object p3, p0, Lcom/lenovo/feedback2/agent/ScreenShotHandler$a;->c:Ljava/lang/String;

    .line 86
    iput-object p4, p0, Lcom/lenovo/feedback2/agent/ScreenShotHandler$a;->d:Landroid/content/Context;

    .line 87
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3
    .param p0, "description"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-static {}, Lcom/lenovo/feedback2/agent/ScreenShotHandler;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ViewCacheHandler catch err : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    .line 92
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/feedback2/agent/ScreenShotHandler$a;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/feedback2/agent/ScreenShotHandler$a;->c:Ljava/lang/String;

    invoke-static {}, Lcom/lenovo/feedback2/agent/ScreenShotHandler;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ViewCacheHandler take screen shot"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/view/View;->buildDrawingCache(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/lenovo/feedback2/agent/ScreenShotHandler$a;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/lenovo/feedback2/agent/ScreenShotHandler$a;->b:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/lenovo/feedback2/agent/ScreenShotHandler$a;->b:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-lt v4, v6, :cond_0

    if-ge v3, v5, :cond_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/lenovo/feedback2/agent/ScreenShotHandler;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ViewCacheHandler compress begin"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\u622a\u56fe\u538b\u7f29\u6210PNG\u56fe\u7247\u65f6\u5931\u8d25"

    invoke-static {v1}, Lcom/lenovo/feedback2/agent/ScreenShotHandler$a;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 96
    :goto_1
    return-void

    .line 92
    :cond_1
    :try_start_3
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/lenovo/feedback2/agent/ScreenShotHandler$a;->b:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v3, v3, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    sub-int/2addr v6, v3

    invoke-static {v1, v4, v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget-object v3, p0, Lcom/lenovo/feedback2/agent/ScreenShotHandler$a;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/feedback2/agent/ApplicationInfoCollector;->collectAppInfo(Landroid/content/Context;)Lcom/lenovo/feedback2/agent/ApplicationInfo;

    move-result-object v3

    new-instance v4, Lcom/lenovo/feedback2/message/BasicMessageBuilder;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/lenovo/feedback2/message/BasicMessageBuilder;-><init>(I)V

    sget-object v5, Lcom/lenovo/feedback2/message/protocol/V_1;->BroadCastId:Lcom/lenovo/feedback2/message/protocol/V_1;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/lenovo/feedback2/agent/ScreenShotHandler$a;->a:Lcom/lenovo/feedback2/agent/ScreenShotHandler;

    invoke-static {v7}, Lcom/lenovo/feedback2/agent/ScreenShotHandler;->a(Lcom/lenovo/feedback2/agent/ScreenShotHandler;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/feedback2/message/BasicMessageBuilder;->addString(Ljava/lang/Enum;Ljava/lang/String;)Lcom/lenovo/feedback2/message/BasicMessageBuilder;

    move-result-object v4

    sget-object v5, Lcom/lenovo/feedback2/message/protocol/V_1;->AppName:Lcom/lenovo/feedback2/message/protocol/V_1;

    invoke-virtual {v3}, Lcom/lenovo/feedback2/agent/ApplicationInfo;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/feedback2/message/BasicMessageBuilder;->addString(Ljava/lang/Enum;Ljava/lang/String;)Lcom/lenovo/feedback2/message/BasicMessageBuilder;

    move-result-object v4

    sget-object v5, Lcom/lenovo/feedback2/message/protocol/V_1;->PackageName:Lcom/lenovo/feedback2/message/protocol/V_1;

    invoke-virtual {v3}, Lcom/lenovo/feedback2/agent/ApplicationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/feedback2/message/BasicMessageBuilder;->addString(Ljava/lang/Enum;Ljava/lang/String;)Lcom/lenovo/feedback2/message/BasicMessageBuilder;

    move-result-object v4

    sget-object v5, Lcom/lenovo/feedback2/message/protocol/V_1;->VersionCode:Lcom/lenovo/feedback2/message/protocol/V_1;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/lenovo/feedback2/agent/ApplicationInfo;->getVersionCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/feedback2/message/BasicMessageBuilder;->addString(Ljava/lang/Enum;Ljava/lang/String;)Lcom/lenovo/feedback2/message/BasicMessageBuilder;

    move-result-object v4

    sget-object v5, Lcom/lenovo/feedback2/message/protocol/V_1;->VersionName:Lcom/lenovo/feedback2/message/protocol/V_1;

    invoke-virtual {v3}, Lcom/lenovo/feedback2/agent/ApplicationInfo;->getVersionName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/feedback2/message/BasicMessageBuilder;->addString(Ljava/lang/Enum;Ljava/lang/String;)Lcom/lenovo/feedback2/message/BasicMessageBuilder;

    move-result-object v4

    sget-object v5, Lcom/lenovo/feedback2/message/protocol/V_1;->Pic:Lcom/lenovo/feedback2/message/protocol/V_1;

    invoke-virtual {v4, v5, v1}, Lcom/lenovo/feedback2/message/BasicMessageBuilder;->addBinary(Ljava/lang/Enum;[B)Lcom/lenovo/feedback2/message/BasicMessageBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/feedback2/message/BasicMessageBuilder;->build()Lcom/lenovo/feedback2/message/Message;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/feedback2/agent/ScreenShotHandler;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ViewCacheHandler build message : id = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/lenovo/feedback2/agent/ScreenShotHandler$a;->a:Lcom/lenovo/feedback2/agent/ScreenShotHandler;

    invoke-static {v6}, Lcom/lenovo/feedback2/agent/ScreenShotHandler;->a(Lcom/lenovo/feedback2/agent/ScreenShotHandler;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " appname = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/lenovo/feedback2/agent/ApplicationInfo;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/lenovo/feedback2/agent/ScreenShotHandler;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ViewCacheHandler send pic message"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/lenovo/feedback2/agent/ScreenShotHandler$a;->a:Lcom/lenovo/feedback2/agent/ScreenShotHandler;

    invoke-static {v3}, Lcom/lenovo/feedback2/agent/ScreenShotHandler;->b(Lcom/lenovo/feedback2/agent/ScreenShotHandler;)Lcom/lenovo/feedback2/agent/AgentContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/feedback2/agent/AgentContext;->getFeedBackService()Lcom/lenovo/feedback2/service/IFeedBackService;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3, v1}, Lcom/lenovo/feedback2/service/IFeedBackService;->send(Lcom/lenovo/feedback2/message/Message;)Lcom/lenovo/feedback2/message/Message;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/lenovo/feedback2/agent/ScreenShotHandler;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ViewCacheHandler exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_6
    invoke-static {}, Lcom/lenovo/feedback2/agent/ScreenShotHandler;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ViewCacheHandler null service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_7
    invoke-static {}, Lcom/lenovo/feedback2/agent/ScreenShotHandler;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ViewCacheHandler::takeScreenShot \u4f20\u9001\u56fe\u7247\u81f3FeedBackService\u5931\u8d25"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, "\u4f20\u9001\u56fe\u7247\u81f3FeedBackService\u5931\u8d25"

    invoke-static {v1}, Lcom/lenovo/feedback2/agent/ScreenShotHandler$a;->a(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
.end method
