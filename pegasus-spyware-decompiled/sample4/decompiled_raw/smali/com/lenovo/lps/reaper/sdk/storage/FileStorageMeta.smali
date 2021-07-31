.class public Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;
.super Ljava/lang/Object;
.source "FileStorageMeta.java"


# static fields
.field public static final META_BLOCK_SIZE:I = 0x1000

.field private static final k:[C


# instance fields
.field private a:J

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/nio/ByteBuffer;

.field private f:J

.field private g:J

.field private h:J

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "ReaperSDK"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->k:[C

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "capability"    # I

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->a:J

    .line 31
    iput v2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->c:I

    .line 34
    iput v2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->d:I

    .line 37
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->e:Ljava/nio/ByteBuffer;

    .line 67
    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->b:I

    .line 68
    return-void
.end method

.method public constructor <init>(IIIJ)V
    .locals 3
    .param p1, "capability"    # I
    .param p2, "head"    # I
    .param p3, "tail"    # I
    .param p4, "sequence"    # J

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->a:J

    .line 31
    iput v2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->c:I

    .line 34
    iput v2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->d:I

    .line 37
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->e:Ljava/nio/ByteBuffer;

    .line 83
    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->b:I

    .line 84
    iput p2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->c:I

    .line 85
    iput p3, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->d:I

    .line 86
    iput-wide p4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->a:J

    .line 87
    return-void
.end method


# virtual methods
.method public byteBuffer()Ljava/nio/ByteBuffer;
    .locals 7

    .prologue
    .line 141
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 142
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->k:[C

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v4, v0, v2

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    .line 143
    .local v1, "c":Ljava/lang/Character;
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    .end local v1    # "c":Ljava/lang/Character;
    :cond_0
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->e:Ljava/nio/ByteBuffer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 146
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->e:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->c:I

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 147
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->e:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->d:I

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 148
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->e:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->b:I

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 149
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->e:Ljava/nio/ByteBuffer;

    iget-wide v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->a:J

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 150
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->e:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->i:I

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 151
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->e:Ljava/nio/ByteBuffer;

    iget-wide v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->f:J

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 152
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->e:Ljava/nio/ByteBuffer;

    iget-wide v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->g:J

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 153
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->e:Ljava/nio/ByteBuffer;

    iget-wide v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->h:J

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 154
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->e:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->j:I

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 155
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 156
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->e:Ljava/nio/ByteBuffer;

    return-object v4
.end method

.method public empty()Z
    .locals 2

    .prologue
    .line 246
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->c:I

    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public full()Z
    .locals 2

    .prologue
    .line 255
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->c:I

    invoke-virtual {p0, v0}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->next(I)I

    move-result v0

    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTime()J
    .locals 2

    .prologue
    .line 332
    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->h:J

    return-wide v0
.end method

.method public getFirstView()J
    .locals 2

    .prologue
    .line 294
    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->f:J

    return-wide v0
.end method

.method public getPreviousView()J
    .locals 2

    .prologue
    .line 313
    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->g:J

    return-wide v0
.end method

.method public getSessionCounter()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->j:I

    return v0
.end method

.method public getSessionId()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->i:I

    return v0
.end method

.method public head()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->c:I

    return v0
.end method

.method public load(Ljava/nio/ByteBuffer;)Z
    .locals 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 167
    sget-object v2, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->k:[C

    array-length v2, v2

    new-array v5, v2, [C

    move v2, v3

    :goto_0
    sget-object v6, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->k:[C

    array-length v6, v6

    if-ge v2, v6, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v6

    aput-char v6, v5, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    .line 168
    .local v0, "flag":Ljava/lang/String;
    const-string v2, "ReaperSDK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 169
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->reset()V

    .line 197
    :goto_1
    return v3

    .line 172
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 173
    .local v1, "version":I
    if-ge v1, v4, :cond_3

    .line 174
    invoke-virtual {p0, p1, v1, v4}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->upgrade(Ljava/nio/ByteBuffer;II)V

    .line 176
    :cond_3
    if-ne v1, v4, :cond_4

    .line 177
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->c:I

    .line 178
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->d:I

    .line 179
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->b:I

    .line 180
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->a:J

    .line 181
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->i:I

    .line 182
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->f:J

    .line 183
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->g:J

    .line 184
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->h:J

    .line 185
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->j:I

    .line 186
    const-string v2, "FileStorageMeta"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CurrentTime:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->h:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v2, "FileStorageMeta"

    const-string v3, "Loading DB..."

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v2, "FileStorageMeta"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Head:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->c:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v2, "FileStorageMeta"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tail:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->d:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v2, "FileStorageMeta"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Capability:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->b:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v2, "FileStorageMeta"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sequence:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->a:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v2, "FileStorageMeta"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SessionID:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->i:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v2, "FileStorageMeta"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FirstView:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->f:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v2, "FileStorageMeta"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PreviousView:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->g:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v2, "FileStorageMeta"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "visits:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->j:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v3, v4

    .line 197
    goto/16 :goto_1
.end method

.method public next(I)I
    .locals 2
    .param p1, "pointer"    # I

    .prologue
    .line 266
    add-int/lit8 v0, p1, 0x1

    .line 267
    .local v0, "p":I
    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->b:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .end local v0    # "p":I
    :cond_0
    return v0
.end method

.method public nextId()J
    .locals 4

    .prologue
    .line 285
    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->a:J

    return-wide v0
.end method

.method public offer()I
    .locals 3

    .prologue
    .line 113
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->c:I

    invoke-virtual {p0, v0}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->next(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->c:I

    .line 114
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->c:I

    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->d:I

    if-ne v0, v1, :cond_0

    .line 115
    const-string v0, "FileStorageMeta"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drop record at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->d:I

    invoke-virtual {p0, v0}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->next(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->d:I

    .line 118
    :cond_0
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->c:I

    return v0
.end method

.method public pull()I
    .locals 2

    .prologue
    .line 127
    const/4 v0, -0x1

    .line 128
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->d:I

    .line 130
    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->d:I

    invoke-virtual {p0, v1}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->next(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->d:I

    .line 132
    :cond_0
    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 218
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->a:J

    .line 219
    iput v2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->c:I

    .line 220
    iput v2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->d:I

    .line 221
    return-void
.end method

.method public setCurrentTime(J)V
    .locals 0
    .param p1, "currentTime"    # J

    .prologue
    .line 342
    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->h:J

    .line 343
    return-void
.end method

.method public setFirstView(J)V
    .locals 0
    .param p1, "firstView"    # J

    .prologue
    .line 304
    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->f:J

    .line 305
    return-void
.end method

.method public setPreviousView(J)V
    .locals 0
    .param p1, "previousView"    # J

    .prologue
    .line 323
    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->g:J

    .line 324
    return-void
.end method

.method public setSessionCounter(I)V
    .locals 0
    .param p1, "sessionCounter"    # I

    .prologue
    .line 380
    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->j:I

    .line 381
    return-void
.end method

.method public setSessionId(I)V
    .locals 0
    .param p1, "sessionId"    # I

    .prologue
    .line 361
    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->i:I

    .line 362
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 276
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->c:I

    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->d:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->c:I

    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->d:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->c:I

    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->d:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public tail()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->d:I

    return v0
.end method

.method protected upgrade(Ljava/nio/ByteBuffer;II)V
    .locals 0
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "fromVersion"    # I
    .param p3, "toVersion"    # I

    .prologue
    .line 212
    return-void
.end method
