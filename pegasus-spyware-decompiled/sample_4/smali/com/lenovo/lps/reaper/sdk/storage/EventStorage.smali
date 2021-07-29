.class public final Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;
.super Ljava/lang/Object;
.source "EventStorage.java"


# instance fields
.field private a:Lcom/lenovo/lps/reaper/sdk/api/EventDao;

.field private b:Lcom/lenovo/lps/reaper/sdk/api/CustomParameterManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/api/CustomParameterManager;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/api/CustomParameterManager;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->b:Lcom/lenovo/lps/reaper/sdk/api/CustomParameterManager;

    return-void
.end method


# virtual methods
.method public final addEvent(Lcom/lenovo/lps/reaper/sdk/api/Event;)V
    .locals 1
    .param p1, "event"    # Lcom/lenovo/lps/reaper/sdk/api/Event;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->a:Lcom/lenovo/lps/reaper/sdk/api/EventDao;

    invoke-interface {v0, p1}, Lcom/lenovo/lps/reaper/sdk/api/EventDao;->saveEvent(Lcom/lenovo/lps/reaper/sdk/api/Event;)V

    .line 58
    return-void
.end method

.method public final clearCustomParameter()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->b:Lcom/lenovo/lps/reaper/sdk/api/CustomParameterManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/api/CustomParameterManager;->clear()V

    .line 65
    return-void
.end method

.method public final countEvent()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->a:Lcom/lenovo/lps/reaper/sdk/api/EventDao;

    invoke-interface {v0}, Lcom/lenovo/lps/reaper/sdk/api/EventDao;->countEvent()I

    move-result v0

    return v0
.end method

.method public final deleteEvents([Lcom/lenovo/lps/reaper/sdk/api/Event;)V
    .locals 1
    .param p1, "events"    # [Lcom/lenovo/lps/reaper/sdk/api/Event;

    .prologue
    .line 105
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->a:Lcom/lenovo/lps/reaper/sdk/api/EventDao;

    invoke-interface {v0, p1}, Lcom/lenovo/lps/reaper/sdk/api/EventDao;->deleteEvents([Lcom/lenovo/lps/reaper/sdk/api/Event;)Z

    .line 108
    :cond_0
    return-void
.end method

.method public final fetchEvents()[Lcom/lenovo/lps/reaper/sdk/api/Event;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->a:Lcom/lenovo/lps/reaper/sdk/api/EventDao;

    invoke-interface {v0}, Lcom/lenovo/lps/reaper/sdk/api/EventDao;->getEvents()[Lcom/lenovo/lps/reaper/sdk/api/Event;

    move-result-object v0

    return-object v0
.end method

.method public final fetchEvents(I)[Lcom/lenovo/lps/reaper/sdk/api/Event;
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->a:Lcom/lenovo/lps/reaper/sdk/api/EventDao;

    invoke-interface {v0, p1}, Lcom/lenovo/lps/reaper/sdk/api/EventDao;->getEvents(I)[Lcom/lenovo/lps/reaper/sdk/api/Event;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomParamManager()Lcom/lenovo/lps/reaper/sdk/api/CustomParameterManager;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->b:Lcom/lenovo/lps/reaper/sdk/api/CustomParameterManager;

    return-object v0
.end method

.method public final initialize()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->a:Lcom/lenovo/lps/reaper/sdk/api/EventDao;

    invoke-interface {v0}, Lcom/lenovo/lps/reaper/sdk/api/EventDao;->activeSession()V

    .line 72
    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->a:Lcom/lenovo/lps/reaper/sdk/api/EventDao;

    invoke-interface {v0}, Lcom/lenovo/lps/reaper/sdk/api/EventDao;->countEvent()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setEventDao(Lcom/lenovo/lps/reaper/sdk/api/EventDao;)V
    .locals 0
    .param p1, "eventDao"    # Lcom/lenovo/lps/reaper/sdk/api/EventDao;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->a:Lcom/lenovo/lps/reaper/sdk/api/EventDao;

    .line 96
    return-void
.end method

.method public final setParam(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->b:Lcom/lenovo/lps/reaper/sdk/api/CustomParameterManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/lps/reaper/sdk/api/CustomParameterManager;->setCustomParameter(ILjava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public final truncate(J)V
    .locals 2
    .param p1, "size"    # J

    .prologue
    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->a:Lcom/lenovo/lps/reaper/sdk/api/EventDao;

    invoke-interface {v1, p1, p2}, Lcom/lenovo/lps/reaper/sdk/api/EventDao;->truncate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
