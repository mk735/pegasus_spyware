.class public Lcom/lenovo/feedback2/agent/CrashHandler;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private a:Lcom/lenovo/feedback2/agent/AgentContext;

.field private b:Lcom/lenovo/feedback2/agent/FeedBackAgent$AgentHandler;

.field private c:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Lcom/lenovo/feedback2/agent/AgentContext;Lcom/lenovo/feedback2/agent/FeedBackAgent$AgentHandler;)V
    .locals 2
    .param p1, "context"    # Lcom/lenovo/feedback2/agent/AgentContext;
    .param p2, "handler"    # Lcom/lenovo/feedback2/agent/FeedBackAgent$AgentHandler;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/lenovo/feedback2/agent/CrashHandler;->a:Lcom/lenovo/feedback2/agent/AgentContext;

    .line 25
    iput-object p2, p0, Lcom/lenovo/feedback2/agent/CrashHandler;->b:Lcom/lenovo/feedback2/agent/FeedBackAgent$AgentHandler;

    .line 27
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/feedback2/agent/CrashHandler;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 28
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 30
    const-string v0, "FeedBackAgent"

    const-string v1, "CrashHandler start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 10
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 36
    :try_start_0
    iget-object v6, p0, Lcom/lenovo/feedback2/agent/CrashHandler;->a:Lcom/lenovo/feedback2/agent/AgentContext;

    invoke-virtual {v6}, Lcom/lenovo/feedback2/agent/AgentContext;->getFeedBackService()Lcom/lenovo/feedback2/service/IFeedBackService;

    move-result-object v4

    .line 37
    .local v4, "service":Lcom/lenovo/feedback2/service/IFeedBackService;
    if-nez v4, :cond_1

    .line 38
    const-string v6, "FeedBackAgent"

    const-string v7, "CrashHandler::uncaughtException null service"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v4    # "service":Lcom/lenovo/feedback2/service/IFeedBackService;
    :cond_0
    :goto_0
    return-void

    .line 42
    .restart local v4    # "service":Lcom/lenovo/feedback2/service/IFeedBackService;
    :cond_1
    iget-object v6, p0, Lcom/lenovo/feedback2/agent/CrashHandler;->a:Lcom/lenovo/feedback2/agent/AgentContext;

    invoke-virtual {v6}, Lcom/lenovo/feedback2/agent/AgentContext;->getApplicationInfo()Lcom/lenovo/feedback2/agent/ApplicationInfo;

    move-result-object v2

    .line 43
    .local v2, "info":Lcom/lenovo/feedback2/agent/ApplicationInfo;
    if-nez v2, :cond_3

    .line 44
    const-string v6, "FeedBackAgent"

    const-string v7, "CrashHandler::uncaughtException null application info"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    .end local v2    # "info":Lcom/lenovo/feedback2/agent/ApplicationInfo;
    .end local v4    # "service":Lcom/lenovo/feedback2/service/IFeedBackService;
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "FeedBackAgent"

    const-string v7, "CrashHandler catch exception "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/lenovo/feedback2/agent/CrashHandler;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v6, :cond_0

    .line 71
    iget-object v6, p0, Lcom/lenovo/feedback2/agent/CrashHandler;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v6, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 48
    .restart local v2    # "info":Lcom/lenovo/feedback2/agent/ApplicationInfo;
    .restart local v4    # "service":Lcom/lenovo/feedback2/service/IFeedBackService;
    :cond_3
    :try_start_1
    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    new-instance v8, Ljava/io/PrintWriter;

    invoke-direct {v8, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object v6, p2

    :goto_2
    if-nez v6, :cond_4

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V

    .line 49
    .local v5, "stacktraceAsString":Ljava/lang/String;
    const-string v6, "FeedBackAgent"

    const-string v7, "CrashHandler::uncaughtException getStackTrace"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v0, Lcom/lenovo/feedback2/message/BasicMessageBuilder;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Lcom/lenovo/feedback2/message/BasicMessageBuilder;-><init>(I)V

    .line 53
    .local v0, "builder":Lcom/lenovo/feedback2/message/BasicMessageBuilder;
    sget-object v6, Lcom/lenovo/feedback2/message/protocol/V_1;->StackTrace:Lcom/lenovo/feedback2/message/protocol/V_1;

    invoke-virtual {v0, v6, v5}, Lcom/lenovo/feedback2/message/BasicMessageBuilder;->addString(Ljava/lang/Enum;Ljava/lang/String;)Lcom/lenovo/feedback2/message/BasicMessageBuilder;

    move-result-object v6

    .line 54
    sget-object v7, Lcom/lenovo/feedback2/message/protocol/V_1;->AppName:Lcom/lenovo/feedback2/message/protocol/V_1;

    invoke-virtual {v2}, Lcom/lenovo/feedback2/agent/ApplicationInfo;->getAppName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/feedback2/message/BasicMessageBuilder;->addString(Ljava/lang/Enum;Ljava/lang/String;)Lcom/lenovo/feedback2/message/BasicMessageBuilder;

    move-result-object v6

    .line 55
    sget-object v7, Lcom/lenovo/feedback2/message/protocol/V_1;->PackageName:Lcom/lenovo/feedback2/message/protocol/V_1;

    invoke-virtual {v2}, Lcom/lenovo/feedback2/agent/ApplicationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/feedback2/message/BasicMessageBuilder;->addString(Ljava/lang/Enum;Ljava/lang/String;)Lcom/lenovo/feedback2/message/BasicMessageBuilder;

    move-result-object v6

    .line 56
    sget-object v7, Lcom/lenovo/feedback2/message/protocol/V_1;->VersionCode:Lcom/lenovo/feedback2/message/protocol/V_1;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/lenovo/feedback2/agent/ApplicationInfo;->getVersionCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/feedback2/message/BasicMessageBuilder;->addString(Ljava/lang/Enum;Ljava/lang/String;)Lcom/lenovo/feedback2/message/BasicMessageBuilder;

    move-result-object v6

    .line 57
    sget-object v7, Lcom/lenovo/feedback2/message/protocol/V_1;->VersionName:Lcom/lenovo/feedback2/message/protocol/V_1;

    invoke-virtual {v2}, Lcom/lenovo/feedback2/agent/ApplicationInfo;->getVersionName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/feedback2/message/BasicMessageBuilder;->addString(Ljava/lang/Enum;Ljava/lang/String;)Lcom/lenovo/feedback2/message/BasicMessageBuilder;

    move-result-object v6

    .line 58
    invoke-virtual {v6}, Lcom/lenovo/feedback2/message/BasicMessageBuilder;->build()Lcom/lenovo/feedback2/message/Message;

    move-result-object v3

    .line 60
    .local v3, "message":Lcom/lenovo/feedback2/message/Message;
    const-string v6, "FeedBackAgent"

    const-string v7, "CrashHandler::uncaughtException send stack trace message to service"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-interface {v4, v3}, Lcom/lenovo/feedback2/service/IFeedBackService;->send(Lcom/lenovo/feedback2/message/Message;)Lcom/lenovo/feedback2/message/Message;

    .line 63
    iget-object v6, p0, Lcom/lenovo/feedback2/agent/CrashHandler;->b:Lcom/lenovo/feedback2/agent/FeedBackAgent$AgentHandler;

    if-eqz v6, :cond_2

    .line 64
    iget-object v6, p0, Lcom/lenovo/feedback2/agent/CrashHandler;->b:Lcom/lenovo/feedback2/agent/FeedBackAgent$AgentHandler;

    invoke-virtual {v6}, Lcom/lenovo/feedback2/agent/FeedBackAgent$AgentHandler;->unbind()V

    goto :goto_1

    .line 48
    .end local v0    # "builder":Lcom/lenovo/feedback2/message/BasicMessageBuilder;
    .end local v3    # "message":Lcom/lenovo/feedback2/message/Message;
    .end local v5    # "stacktraceAsString":Ljava/lang/String;
    :cond_4
    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_2
.end method
