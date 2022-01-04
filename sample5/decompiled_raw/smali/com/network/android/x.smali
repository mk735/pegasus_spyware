.class public final Lcom/network/android/x;
.super Lorg/xml/sax/helpers/DefaultHandler;


# static fields
.field public static A:Ljava/util/Vector;

.field public static B:Ljava/util/Vector;

.field public static C:Ljava/util/Vector;

.field public static D:Ljava/lang/Object;

.field private static N:Ljava/util/Set;

.field private static O:Landroid/os/Handler;

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field public static v:I

.field public static w:I

.field public static x:Ljava/util/Vector;

.field public static y:Ljava/util/Vector;

.field public static z:Ljava/util/Vector;


# instance fields
.field private E:Ljava/lang/String;

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Lcom/network/k/a/a;

.field private M:Landroid/content/Context;

.field public a:I

.field public b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "3"

    sput-object v0, Lcom/network/android/x;->s:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/network/android/x;->t:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/network/android/x;->u:Ljava/lang/String;

    sput v1, Lcom/network/android/x;->v:I

    sput v1, Lcom/network/android/x;->w:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/network/android/x;->x:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/network/android/x;->y:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/network/android/x;->z:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/network/android/x;->A:Ljava/util/Vector;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/network/android/x;->N:Ljava/util/Set;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/network/android/x;->B:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/network/android/x;->C:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/network/android/x;->D:Ljava/lang/Object;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MO commandHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/network/android/x;->O:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/network/android/x;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/network/android/x;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/network/android/x;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/network/android/x;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/network/android/x;->f:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/network/android/x;->g:Z

    iput-boolean v1, p0, Lcom/network/android/x;->h:Z

    iput-boolean v1, p0, Lcom/network/android/x;->i:Z

    iput-boolean v1, p0, Lcom/network/android/x;->j:Z

    iput-boolean v1, p0, Lcom/network/android/x;->k:Z

    iput-boolean v1, p0, Lcom/network/android/x;->l:Z

    iput-boolean v1, p0, Lcom/network/android/x;->m:Z

    iput-boolean v1, p0, Lcom/network/android/x;->n:Z

    iput-boolean v1, p0, Lcom/network/android/x;->o:Z

    iput-boolean v1, p0, Lcom/network/android/x;->p:Z

    iput-boolean v1, p0, Lcom/network/android/x;->q:Z

    iput-boolean v1, p0, Lcom/network/android/x;->r:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/network/android/x;->E:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/network/android/x;->F:Z

    iput-boolean v1, p0, Lcom/network/android/x;->G:Z

    iput-boolean v1, p0, Lcom/network/android/x;->H:Z

    iput-boolean v1, p0, Lcom/network/android/x;->I:Z

    iput-boolean v1, p0, Lcom/network/android/x;->J:Z

    iput-boolean v1, p0, Lcom/network/android/x;->K:Z

    new-instance v0, Lcom/network/k/a/a;

    invoke-direct {v0}, Lcom/network/k/a/a;-><init>()V

    iput-object v0, p0, Lcom/network/android/x;->L:Lcom/network/k/a/a;

    iput-object p1, p0, Lcom/network/android/x;->M:Landroid/content/Context;

    sget-object v0, Lcom/network/android/x;->x:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    sget-object v0, Lcom/network/android/x;->z:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    sget-object v0, Lcom/network/android/x;->y:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    sget-object v1, Lcom/network/android/x;->D:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ProvisionContectHandler clear commandSet, size="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/network/android/x;->N:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/network/android/x;->N:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/network/android/x;->B:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    sget-object v0, Lcom/network/android/x;->A:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    sget-object v0, Lcom/network/android/x;->C:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/network/android/x;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/network/android/x;->M:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Ljava/util/Vector;
    .locals 1

    sget-object v0, Lcom/network/android/x;->y:Ljava/util/Vector;

    return-object v0
.end method

.method public static c()I
    .locals 2

    sget-object v1, Lcom/network/android/x;->D:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/network/android/x;->N:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic d()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/network/android/x;->N:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 2

    sget-object v0, Lcom/network/android/x;->N:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "addHttpCommandsToCommandQueue commandSet is empty"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "addHttpCommandsToCommandQueue post"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/network/android/x;->O:Landroid/os/Handler;

    new-instance v1, Lcom/network/android/y;

    invoke-direct {v1, p0}, Lcom/network/android/y;-><init>(Lcom/network/android/x;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final characters([CII)V
    .locals 2

    iget-boolean v0, p0, Lcom/network/android/x;->o:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/network/android/x;->A:Ljava/util/Vector;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/network/android/x;->q:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/network/android/x;->C:Ljava/util/Vector;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/network/android/x;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ParseResponseCommands endElement localName "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v0, "cmd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/network/android/x;->D:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/network/android/x;->N:Ljava/util/Set;

    iget-object v2, p0, Lcom/network/android/x;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/network/i/a;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v3, p0, Lcom/network/android/x;->g:Z

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    const-string v0, "settingsCmd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/network/android/x;->h:Z

    goto :goto_0

    :cond_2
    const-string v0, "addrs"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/network/android/x;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "ParseResponseCommands ADDRS endelement"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/network/android/x;->k:Z

    goto :goto_0

    :cond_3
    const-string v0, "addr"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/network/android/x;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "ParseResponseCommands ADDR endelement"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/network/android/x;->l:Z

    goto :goto_0

    :cond_4
    const-string v0, "callerIds"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/network/android/x;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "ParseResponseCommands CALLER_IDS endelement"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/network/android/x;->m:Z

    goto :goto_0

    :cond_5
    const-string v0, "callerId"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/network/android/x;->m:Z

    if-eqz v0, :cond_0

    const-string v0, "ParseResponseCommands CALLER_ID endelement"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/network/android/x;->o:Z

    goto :goto_0

    :cond_6
    const-string v0, "messageFilters"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "ParseResponseCommands messagefilters endelement"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/network/android/x;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "ParseResponseCommands messagefilters isSettingsBlocking endelement"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/network/android/x;->i:Z

    goto :goto_0

    :cond_7
    const-string v0, "messageFilter"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "ParseResponseCommands messagefilter endelement"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/network/android/x;->i:Z

    if-eqz v0, :cond_0

    const-string v0, "ParseResponseCommands messagefilters isSettingsBlocking endelement"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/network/android/x;->j:Z

    goto/16 :goto_0

    :cond_8
    const-string v0, "moSms"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/network/android/x;->p:Z

    if-eqz v0, :cond_9

    const-string v0, "ParseResponseCommands MO_SMS isSettingsMoSmss endelement"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/network/android/x;->q:Z

    goto/16 :goto_0

    :cond_9
    iget-boolean v0, p0, Lcom/network/android/x;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "ParseResponseCommands MO_SMS isSettingsCommand endelement"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/network/android/x;->p:Z

    goto/16 :goto_0

    :cond_a
    const-string v0, "mqttSrv"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/network/android/x;->h:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/network/android/x;->n:Z

    goto/16 :goto_0

    :cond_b
    const-string v0, "dumpCmd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/network/android/x;->g:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/network/android/x;->r:Z

    goto/16 :goto_0

    :cond_c
    const-string v0, "camCmd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/network/android/x;->g:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/network/android/x;->J:Z

    goto/16 :goto_0

    :cond_d
    const-string v0, "emailAttCmd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/network/android/x;->g:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/network/android/x;->K:Z

    goto/16 :goto_0

    :cond_e
    const-string v0, "ParseResponseCommands endelement nothing"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 11

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ParseResponseCommands startElement localName "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v3, "response"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "code"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/network/android/x;->a:I

    const-string v0, "message"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/network/android/x;->b:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "token"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "id"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/network/android/x;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startElement exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v3, "configuration"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/network/android/x;->F:Z

    const-string v0, "revision"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/network/android/x;->s:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v3, "command"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/network/android/x;->g:Z

    goto :goto_0

    :cond_4
    const-string v3, "monitor"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/network/android/x;->G:Z

    invoke-static {}, Lcom/network/k/a/a;->a()V

    goto :goto_0

    :cond_5
    const-string v3, "dump"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/network/android/x;->I:Z

    goto :goto_0

    :cond_6
    const-string v3, "action"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/network/android/x;->H:Z

    goto :goto_0

    :cond_7
    const-string v3, "upgrade"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_9

    :try_start_2
    const-string v0, "url"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/network/android/x;->t:Ljava/lang/String;

    const-string v0, "pVersion"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/network/android/x;->u:Ljava/lang/String;

    const-string v0, "t1"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/network/android/x;->v:I

    const-string v0, "t2"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/network/android/x;->w:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ParseResponseCommands startElement found upgrade. data. url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/network/android/x;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " t1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/network/android/x;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " t2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/network/android/x;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/network/android/x;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/h/j;->a()Z

    move-result v0

    if-nez v0, :cond_8

    sget v0, Lcom/network/android/x;->v:I

    if-lez v0, :cond_8

    sget v0, Lcom/network/android/x;->w:I

    if-ltz v0, :cond_8

    sget-object v0, Lcom/network/android/x;->t:Ljava/lang/String;

    sget v1, Lcom/network/android/x;->v:I

    sget v2, Lcom/network/android/x;->w:I

    invoke-static {}, Lcom/network/android/agent/NetworkApp;->a()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/network/android/x;->u:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/network/h/j;->a(Ljava/lang/String;IILandroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ParseResponseCommands startElement Exception- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    const/16 v1, 0x5e

    const-string v2, "LOG_UPGRADE_PARAM_ARE_INVALID"

    invoke-static {v0, v1, v2}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x1

    const/16 v1, 0x5e

    :try_start_4
    const-string v2, "LOG_UPGRADE_PARAM_ARE_INVALID"

    invoke-static {v0, v1, v2}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :cond_9
    :try_start_5
    const-string v3, "cmds"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v0, "mode"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/network/android/x;->g:Z

    goto/16 :goto_0

    :cond_a
    const-string v3, "settingsCmd"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-boolean v3, p0, Lcom/network/android/x;->g:Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :try_start_6
    iput-boolean v3, p0, Lcom/network/android/x;->h:Z

    const-string v3, "ack"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "selfDestructTime"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_c

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/network/b/b;->a(Ljava/lang/Integer;)V

    :goto_1
    sget-object v3, Lcom/network/android/a/c;->a:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v3, "roamingBehaviour"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getIndex(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_b

    const-string v3, "roamingBehaviour"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_d

    :goto_2
    invoke-static {v0}, Lcom/network/b/b;->a(Z)V

    invoke-static {v3}, Lcom/network/b/b;->g(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ParseResponseCommands Roaming behavior "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/b/b;->y()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " => "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/network/b/b;->d()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :cond_b
    const-string v0, "pollInterval"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "debugLevel"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/network/b/b;->A:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ParseResponseCommands found wantedDebugLevel: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/network/b/b;->A:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ParseResponseCommands found maxTimeWithNoCommunication: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/b/b;->K()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ParseResponseCommands PollingManager pollingInterval seconds: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/network/android/x;->M:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/network/g/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_3
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/network/b/b;->b(Z)V

    invoke-static {v1}, Lcom/network/android/c/a/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/network/android/x;->M:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/b/b;->c(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ParseResponseCommands mqtt exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    const/16 v2, 0x1a

    const-string v3, "LOG_CHANGE_SETTING_REQ_FAILED"

    invoke-static {v1}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/16 v2, -0x3cae

    const-string v3, ""

    invoke-static {v1}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    :cond_c
    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit8 v3, v3, 0x3c

    :try_start_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/network/b/b;->a(Ljava/lang/Integer;)V

    goto/16 :goto_1

    :cond_d
    move v0, v2

    goto/16 :goto_2

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ParseResponseCommands PollingManager pollingInterval NO pollingInterval: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    :cond_f
    :try_start_9
    const-string v0, "addrs"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/network/android/x;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "ParseResponseCommands ADDRS"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/network/android/x;->k:Z

    goto/16 :goto_0

    :cond_10
    const-string v0, "addr"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/network/android/x;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "ParseResponseCommands ADDR"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/network/android/x;->l:Z

    const-string v0, "host"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "port"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/network/android/x;->z:Ljava/util/Vector;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/support.aspx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_11
    const-string v0, "callerIds"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "ParseResponseCommands CALLER_IDS"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/network/android/x;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/network/android/x;->m:Z

    goto/16 :goto_0

    :cond_12
    const-string v0, "callerId"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/network/android/x;->m:Z

    if-eqz v0, :cond_0

    const-string v0, "ParseResponseCommands CALLER_ID"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/network/android/x;->o:Z

    goto/16 :goto_0

    :cond_13
    const-string v0, "messageFilters"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "ParseResponseCommands messagefilters"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/network/android/x;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/network/android/x;->i:Z

    const-string v0, "ParseResponseCommands messagefilters isSettingsCommand"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    const-string v0, "messageFilter"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "ParseResponseCommands messagefilter"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/network/android/x;->i:Z

    if-eqz v0, :cond_0

    const-string v0, "ParseResponseCommands messagefilter isSettingsBlocking"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/network/android/x;->j:Z

    const-string v0, "type"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "expression"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ParseResponseCommands messagefilter type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , exp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v2, "sms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ParseResponseCommands add ussd exp:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/network/android/x;->x:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_15
    const-string v2, "ussd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ParseResponseCommands add ussd exp:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/network/android/x;->y:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_16
    const-string v2, "both"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ParseResponseCommands add ussd exp:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/network/android/x;->y:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_17
    const-string v0, "moSms"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/network/android/x;->p:Z

    if-eqz v0, :cond_18

    const-string v0, "ParseResponseCommands MO_SMS isSettingsMoSmss"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/network/android/x;->q:Z

    goto/16 :goto_0

    :cond_18
    iget-boolean v0, p0, Lcom/network/android/x;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "ParseResponseCommands MO_SMS isSettingsCommand"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/network/android/x;->p:Z

    goto/16 :goto_0

    :cond_19
    const-string v0, "mqttSrv"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/network/android/x;->h:Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :try_start_a
    iput-boolean v0, p0, Lcom/network/android/x;->n:Z

    const-string v0, "password"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "username"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "idPref"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "qos"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "kaTimer"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "recCount"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "con"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "recInt"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "host"

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "port"

    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v10}, Lcom/network/b/b;->b(Z)V

    invoke-static {v0}, Lcom/network/b/b;->c(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/network/b/b;->b(I)V

    invoke-static {v1}, Lcom/network/b/b;->d(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/network/b/b;->e(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/network/b/b;->h(I)V

    invoke-static {v4}, Lcom/network/b/b;->i(I)V

    invoke-static {v5}, Lcom/network/b/b;->j(I)V

    invoke-static {v7}, Lcom/network/b/b;->k(I)V

    invoke-static {v8}, Lcom/network/b/b;->g(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/network/b/b;->f(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ParseResponseCommands found MQTT Password: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " username: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ParseResponseCommands found MQTT idPref: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " qos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ParseResponseCommands found MQTT kaTimer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " recInt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/network/android/x;->M:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/b/b;->c(Landroid/content/Context;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/network/media/CoreReceiver;->b:Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ParseResponseCommands mqtt exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    const/16 v1, 0x65

    const-string v2, "MOSQ_ERR_INVAL"

    invoke-static {v0, v1, v2}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    goto/16 :goto_0

    :cond_1a
    const-string v0, "dumpCmd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    move-result v0

    if-eqz v0, :cond_1b

    :try_start_c
    iget-boolean v0, p0, Lcom/network/android/x;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/network/android/x;->r:Z

    const-string v0, "ack"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/network/android/a/c;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v0, "dataTypes"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ParseResponseCommands found dump command. running with bitwise "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/network/media/f;->a(I)V

    invoke-static {v1}, Lcom/network/media/f;->a(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    :try_start_d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ParseResponseCommands dump command exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    const/16 v2, 0x7d3

    const-string v3, "LOG_FAIL_BIG_DUMP"

    invoke-static {v1}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    const/16 v2, -0x3cae

    const-string v3, ""

    invoke-static {v1}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1b
    const-string v0, "camCmd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    move-result v0

    if-eqz v0, :cond_1c

    :try_start_e
    iget-boolean v0, p0, Lcom/network/android/x;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/network/android/x;->J:Z

    const-string v0, "ack"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/network/android/a/c;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v0, "source"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "res"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ParseResponseCommands Camera. running with Source bitwise "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resolution "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/network/android/x;->M:Landroid/content/Context;

    invoke-static {v3, v1, v0, v2}, Lcom/network/media/a;->a(Landroid/content/Context;Ljava/lang/String;II)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    :try_start_f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ParseResponseCommands dump command exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    const/16 v2, 0x19

    const-string v3, "LOG_CAMERA_SNAPSHOT_FAILED"

    invoke-static {v1}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/16 v2, -0x3cae

    const-string v3, ""

    invoke-static {v1}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1c
    const-string v0, "emailAttCmd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0

    move-result v0

    if-eqz v0, :cond_1f

    :try_start_10
    iget-boolean v0, p0, Lcom/network/android/x;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/network/android/x;->K:Z

    const-string v0, "ack"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/network/android/a/c;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v0, "emailRecordId"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "attRecordId"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ParseResponseCommands get email attachment attRecordId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", emailRecordId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    if-eqz v1, :cond_1d

    invoke-static {v1}, Lcom/network/android/c/a/b;->a(Ljava/lang/String;)V

    :cond_1d
    iget-object v3, p0, Lcom/network/android/x;->M:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/android/r;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "getAttachmentFileCommandGmailThread"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    new-instance v5, Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v5, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/network/android/t;

    invoke-direct {v4, v0, v2, v3, v1}, Lcom/network/android/t;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v0

    :try_start_11
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ParseResponseCommands dump command exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    const/16 v2, 0x78

    const-string v3, "GET_ATTACHMENT_FAIL"

    invoke-static {v1}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/16 v2, -0x3cae

    const-string v3, ""

    invoke-static {v1}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_0

    goto/16 :goto_0

    :cond_1e
    :try_start_12
    sget-object v4, Lcom/network/android/agent/NetworkApp;->a:Landroid/os/Handler;

    new-instance v5, Lcom/network/android/u;

    invoke-direct {v5, v0, v2, v3, v1}, Lcom/network/android/u;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_6

    goto/16 :goto_0

    :cond_1f
    :try_start_13
    const-string v0, "ParseResponseCommands NOTHING"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_0

    goto/16 :goto_0
.end method
