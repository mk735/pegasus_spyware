.class public final Lcom/lenovo/lps/reaper/sdk/api/Event;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field private a:J

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:J

.field private f:J

.field private g:J

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:J

.field private q:[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;


# direct methods
.method public constructor <init>(JILjava/lang/String;IJJJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "sessionId"    # I
    .param p4, "account"    # Ljava/lang/String;
    .param p5, "randomVal"    # I
    .param p6, "timestampFirst"    # J
    .param p8, "timestampPre"    # J
    .param p10, "timestampCur"    # J
    .param p12, "timestampEvent"    # J
    .param p14, "visits"    # I
    .param p15, "category"    # Ljava/lang/String;
    .param p16, "action"    # Ljava/lang/String;
    .param p17, "label"    # Ljava/lang/String;
    .param p18, "value"    # I
    .param p19, "networkStauts"    # I
    .param p20, "userId"    # Ljava/lang/String;
    .param p21, "userIdClass"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->a:J

    .line 121
    iput p3, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->b:I

    .line 122
    iput-object p4, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->c:Ljava/lang/String;

    .line 123
    iput p5, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->d:I

    .line 124
    iput p14, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->h:I

    .line 125
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->i:Ljava/lang/String;

    .line 126
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->j:Ljava/lang/String;

    .line 127
    if-nez p17, :cond_0

    const-string p17, ""

    .end local p17    # "label":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->k:Ljava/lang/String;

    .line 128
    move/from16 v0, p18

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->l:I

    .line 129
    move/from16 v0, p19

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->m:I

    .line 130
    if-nez p20, :cond_1

    const-string p20, ""

    .end local p20    # "userId":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->n:Ljava/lang/String;

    .line 131
    if-nez p21, :cond_2

    const-string p21, ""

    .end local p21    # "userIdClass":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->o:Ljava/lang/String;

    .line 132
    move/from16 v0, p19

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->m:I

    .line 133
    iput-wide p6, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->e:J

    .line 134
    iput-wide p8, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->f:J

    .line 135
    iput-wide p10, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->g:J

    .line 136
    iput-wide p12, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->p:J

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "value"    # I

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->c:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->i:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->j:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->k:Ljava/lang/String;

    .line 81
    iput p5, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->l:I

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->p:J

    .line 83
    return-void
.end method


# virtual methods
.method public final getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomParameters()[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->q:[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->a:J

    return-wide v0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworkStatus()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->m:I

    return v0
.end method

.method public final getRandomVal()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->d:I

    return v0
.end method

.method public final getSessionId()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->b:I

    return v0
.end method

.method public final getTimestampCur()J
    .locals 2

    .prologue
    .line 213
    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->g:J

    return-wide v0
.end method

.method public final getTimestampEvent()J
    .locals 2

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->p:J

    return-wide v0
.end method

.method public final getTimestampFirst()J
    .locals 2

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->e:J

    return-wide v0
.end method

.method public final getTimestampPre()J
    .locals 2

    .prologue
    .line 209
    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->f:J

    return-wide v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserIdClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->l:I

    return v0
.end method

.method public final getVisits()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->h:I

    return v0
.end method

.method public final setAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->c:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public final setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->j:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public final setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->i:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public final setCustomParameters([Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;)V
    .locals 3
    .param p1, "customParameters"    # [Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;

    .prologue
    .line 179
    array-length v1, p1

    new-array v1, v1, [Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;

    iput-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->q:[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;

    .line 180
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->q:[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;

    new-instance v2, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;

    invoke-direct {v2}, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;-><init>()V

    aput-object v2, v1, v0

    .line 182
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->q:[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->setIndex(I)V

    .line 183
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->q:[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->setName(Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->q:[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->setValue(Ljava/lang/String;)V

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_0
    return-void
.end method

.method public final setId(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 253
    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->a:J

    .line 254
    return-void
.end method

.method public final setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->k:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public final setNetworkStatus(I)V
    .locals 0
    .param p1, "networkStatus"    # I

    .prologue
    .line 301
    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->m:I

    .line 302
    return-void
.end method

.method public final setRandomVal(I)V
    .locals 0
    .param p1, "randomVal"    # I

    .prologue
    .line 265
    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->d:I

    .line 266
    return-void
.end method

.method public final setSessionId(I)V
    .locals 0
    .param p1, "sessionId"    # I

    .prologue
    .line 257
    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->b:I

    .line 258
    return-void
.end method

.method public final setTimestampCur(J)V
    .locals 0
    .param p1, "timestampCur"    # J

    .prologue
    .line 277
    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->g:J

    .line 278
    return-void
.end method

.method public final setTimestampEvent(J)V
    .locals 0
    .param p1, "timestampEvent"    # J

    .prologue
    .line 305
    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->p:J

    .line 306
    return-void
.end method

.method public final setTimestampFirst(J)V
    .locals 0
    .param p1, "timestampFirst"    # J

    .prologue
    .line 269
    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->e:J

    .line 270
    return-void
.end method

.method public final setTimestampPre(J)V
    .locals 0
    .param p1, "timestampPre"    # J

    .prologue
    .line 273
    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->f:J

    .line 274
    return-void
.end method

.method public final setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 297
    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->l:I

    .line 298
    return-void
.end method

.method public final setVisits(I)V
    .locals 0
    .param p1, "visits"    # I

    .prologue
    .line 281
    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->h:I

    .line 282
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->a:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toStringFull()Ljava/lang/String;
    .locals 5

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 153
    .local v0, "strBuff":Ljava/lang/StringBuilder;
    const-string v1, "ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SessionID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Visits:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Label:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NetworkStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TimestampFirst:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->e:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TimestampPre:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->f:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TimestampCur:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->g:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TimestampEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->p:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
