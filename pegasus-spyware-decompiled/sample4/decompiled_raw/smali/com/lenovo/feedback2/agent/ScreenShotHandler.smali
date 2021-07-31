.class public Lcom/lenovo/feedback2/agent/ScreenShotHandler;
.super Ljava/lang/Object;
.source "ScreenShotHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/feedback2/agent/ScreenShotHandler$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/lenovo/feedback2/agent/a;

.field private c:Lcom/lenovo/feedback2/agent/AgentContext;

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "FeedBackAgent"

    sput-object v0, Lcom/lenovo/feedback2/agent/ScreenShotHandler;->a:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/feedback2/agent/AgentContext;J)V
    .locals 1
    .param p1, "agentContext"    # Lcom/lenovo/feedback2/agent/AgentContext;
    .param p2, "id"    # J

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/lenovo/feedback2/agent/a;

    invoke-direct {v0}, Lcom/lenovo/feedback2/agent/a;-><init>()V

    iput-object v0, p0, Lcom/lenovo/feedback2/agent/ScreenShotHandler;->b:Lcom/lenovo/feedback2/agent/a;

    .line 26
    iput-object p1, p0, Lcom/lenovo/feedback2/agent/ScreenShotHandler;->c:Lcom/lenovo/feedback2/agent/AgentContext;

    .line 27
    iput-wide p2, p0, Lcom/lenovo/feedback2/agent/ScreenShotHandler;->d:J

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/lenovo/feedback2/agent/ScreenShotHandler;)J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/lenovo/feedback2/agent/ScreenShotHandler;->d:J

    return-wide v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/lenovo/feedback2/agent/ScreenShotHandler;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/feedback2/agent/ScreenShotHandler;)Lcom/lenovo/feedback2/agent/AgentContext;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/feedback2/agent/ScreenShotHandler;->c:Lcom/lenovo/feedback2/agent/AgentContext;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 34
    :try_start_0
    iget-object v7, p0, Lcom/lenovo/feedback2/agent/ScreenShotHandler;->c:Lcom/lenovo/feedback2/agent/AgentContext;

    invoke-virtual {v7}, Lcom/lenovo/feedback2/agent/AgentContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 35
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 36
    sget-object v7, Lcom/lenovo/feedback2/agent/ScreenShotHandler;->a:Ljava/lang/String;

    const-string v8, "ScreenShotHandler::run null context"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 40
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v7, p0, Lcom/lenovo/feedback2/agent/ScreenShotHandler;->c:Lcom/lenovo/feedback2/agent/AgentContext;

    invoke-virtual {v7}, Lcom/lenovo/feedback2/agent/AgentContext;->getFeedBackService()Lcom/lenovo/feedback2/service/IFeedBackService;

    move-result-object v4

    .line 41
    .local v4, "feedbackService":Lcom/lenovo/feedback2/service/IFeedBackService;
    if-nez v4, :cond_1

    .line 42
    sget-object v7, Lcom/lenovo/feedback2/agent/ScreenShotHandler;->a:Ljava/lang/String;

    const-string v8, "ScreenShotHandler::run null feedbackService"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    .end local v0    # "context":Landroid/content/Context;
    .end local v4    # "feedbackService":Lcom/lenovo/feedback2/service/IFeedBackService;
    :catch_0
    move-exception v3

    .line 72
    .local v3, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/lenovo/feedback2/agent/ScreenShotHandler;->a:Ljava/lang/String;

    const-string v8, "ScreenShotHandler::run catch exception"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 46
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v4    # "feedbackService":Lcom/lenovo/feedback2/service/IFeedBackService;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v6, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 48
    .local v6, "packageName":Ljava/lang/String;
    const-wide/16 v7, 0x1f4

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 50
    const/4 v2, 0x0

    .line 51
    .local v2, "decorView":Landroid/view/View;
    const/4 v1, 0x0

    .line 53
    .local v1, "count":I
    :goto_1
    iget-object v7, p0, Lcom/lenovo/feedback2/agent/ScreenShotHandler;->b:Lcom/lenovo/feedback2/agent/a;

    iget-object v7, p0, Lcom/lenovo/feedback2/agent/ScreenShotHandler;->b:Lcom/lenovo/feedback2/agent/a;

    invoke-virtual {v7}, Lcom/lenovo/feedback2/agent/a;->a()[Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Lcom/lenovo/feedback2/agent/a;->a([Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 55
    if-eqz v2, :cond_2

    .line 56
    sget-object v7, Lcom/lenovo/feedback2/agent/ScreenShotHandler;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "get a decorView in "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v5, Lcom/lenovo/feedback2/agent/ScreenShotHandler$a;

    invoke-direct {v5, p0, v2, v6, v0}, Lcom/lenovo/feedback2/agent/ScreenShotHandler$a;-><init>(Lcom/lenovo/feedback2/agent/ScreenShotHandler;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;)V

    .line 70
    .local v5, "handler":Lcom/lenovo/feedback2/agent/ScreenShotHandler$a;
    invoke-virtual {v2, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 60
    .end local v5    # "handler":Lcom/lenovo/feedback2/agent/ScreenShotHandler$a;
    :cond_2
    const/4 v7, 0x1

    if-le v1, v7, :cond_3

    .line 61
    sget-object v7, Lcom/lenovo/feedback2/agent/ScreenShotHandler;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "null decorView in "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    :cond_3
    const-wide/16 v7, 0x3e8

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 52
    goto :goto_1
.end method
