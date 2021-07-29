.class public final Ltms/au;
.super Lcom/tencent/tmsecure/common/BaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltms/au$b;,
        Ltms/au$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/tmsecure/module/aresengine/DataIntercepter",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;

.field private c:Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltms/au;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/tmsecure/module/aresengine/DataIntercepter",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltms/au;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    return-object v0
.end method

.method public final a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/DataIntercepter",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ltms/au;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final a(I)V
    .locals 5

    const/high16 v4, 0x10000000

    if-eqz p1, :cond_0

    const-string v0, "#"

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:**67*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :pswitch_0
    const-string v0, "00000000000"

    goto :goto_0

    :pswitch_1
    const-string v0, "13632545744"

    goto :goto_0

    :pswitch_2
    const-string v0, "13826512148"

    goto :goto_0

    :cond_0
    const-string v0, "#"

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "67"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;)V
    .locals 0

    iput-object p1, p0, Ltms/au;->c:Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;

    return-void
.end method

.method public final a(Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Ltms/au;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltms/au;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->a()Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the intercepter named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " had exited"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ltms/au;->b()Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-interface {v3, v0}, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;->check(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mInnterResult:Lcom/tencent/tccdb/MMatchSysResult;

    new-instance v6, LQQPIM/SmsReport;

    invoke-direct {v6}, LQQPIM/SmsReport;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, LQQPIM/SmsReport;->setComment(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    long-to-int v7, v7

    invoke-virtual {v6, v7}, LQQPIM/SmsReport;->setMatchTime(I)V

    iget-object v7, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v6, v7}, LQQPIM/SmsReport;->setSender(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-virtual {v6, v7}, LQQPIM/SmsReport;->setSms(Ljava/lang/String;)V

    iget v7, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    if-ltz v7, :cond_0

    iget v7, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    const/4 v8, 0x2

    if-le v7, v8, :cond_1

    :cond_0
    iput v1, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    :cond_1
    sget-object v7, Ltms/au$b;->a:[[I

    iget v0, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    aget-object v0, v7, v0

    aget v0, v0, v1

    invoke-virtual {v6, v0}, LQQPIM/SmsReport;->setSmsType(I)V

    iget v0, v5, Lcom/tencent/tccdb/MMatchSysResult;->finalAction:I

    invoke-virtual {v6, v0}, LQQPIM/SmsReport;->setUcAction(I)V

    iget v0, v5, Lcom/tencent/tccdb/MMatchSysResult;->actionReason:I

    invoke-virtual {v6, v0}, LQQPIM/SmsReport;->setUcActionReason(I)V

    iget v0, v5, Lcom/tencent/tccdb/MMatchSysResult;->minusMark:I

    invoke-virtual {v6, v0}, LQQPIM/SmsReport;->setUcMinusMark(I)V

    iget v0, v5, Lcom/tencent/tccdb/MMatchSysResult;->contentType:I

    invoke-virtual {v6, v0}, LQQPIM/SmsReport;->setUcContentType(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, LQQPIM/SmsReport;->vecHitRule:Ljava/util/ArrayList;

    iget-object v5, v5, Lcom/tencent/tccdb/MMatchSysResult;->ruleTypeID:[Lcom/tencent/tccdb/MRuleTypeID;

    array-length v7, v5

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_2

    aget-object v8, v5, v0

    new-instance v9, LQQPIM/RuleTypeID;

    iget v10, v8, Lcom/tencent/tccdb/MRuleTypeID;->ruleType:I

    iget v8, v8, Lcom/tencent/tccdb/MRuleTypeID;->ruleID:I

    invoke-direct {v9, v10, v8}, LQQPIM/RuleTypeID;-><init>(II)V

    iget-object v8, v6, LQQPIM/SmsReport;->vecHitRule:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->reportSms(Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public final b()Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;
    .locals 1

    iget-object v0, p0, Ltms/au;->b:Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;

    return-object v0
.end method

.method public final c()Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;
    .locals 2

    iget-object v0, p0, Ltms/au;->c:Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The AresEngineManager\'s Factor can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ltms/au;->c:Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;

    return-object v0
.end method

.method public final getSingletonType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ltms/au$b;

    invoke-direct {v0, p1}, Ltms/au$b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltms/au;->b:Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;

    new-instance v0, Ltms/au$a;

    invoke-direct {v0, p0}, Ltms/au$a;-><init>(Ltms/au;)V

    invoke-static {v0}, Lcom/tencent/tmsecure/common/SDKClient;->addMessageHandler(Lcom/tencent/tmsecure/common/MessageHandler;)Z

    const-string v0, "rule_store.sys"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ltms/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
