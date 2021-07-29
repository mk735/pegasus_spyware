.class public Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;
.super Ljava/lang/Object;
.source "InputStreamRequestEntity.java"

# interfaces
.implements Lorg/apache/commons/httpclient/methods/RequestEntity;


# static fields
.field public static final CONTENT_LENGTH_AUTO:I = -0x2

.field static a:Ljava/lang/Class;

.field private static final b:Lorg/apache/commons/logging/Log;


# instance fields
.field private c:J

.field private d:Ljava/io/InputStream;

.field private e:[B

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.methods.InputStreamRequestEntity"

    invoke-static {v0}, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->a:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->b:Lorg/apache/commons/logging/Log;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->a:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "content"    # Ljava/io/InputStream;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 1
    .param p1, "content"    # Ljava/io/InputStream;
    .param p2, "contentLength"    # J

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;-><init>(Ljava/io/InputStream;JLjava/lang/String;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JLjava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/io/InputStream;
    .param p2, "contentLength"    # J
    .param p4, "contentType"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->e:[B

    .line 107
    if-nez p1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->d:Ljava/io/InputStream;

    .line 111
    iput-wide p2, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->c:J

    .line 112
    iput-object p4, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->f:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/io/InputStream;
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    .line 83
    const-wide/16 v0, -0x2

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;-><init>(Ljava/io/InputStream;JLjava/lang/String;)V

    .line 84
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 55
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->d:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 186
    iget-wide v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->c:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->e:[B

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->e:[B

    if-eqz v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    iget-wide v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->c:J

    return-wide v0

    .line 187
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x1000

    new-array v1, v1, [B

    :goto_1
    iget-object v2, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->d:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->b:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v4, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->e:[B

    iput-object v4, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->d:Ljava/io/InputStream;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->c:J

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->e:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->d:Ljava/io/InputStream;

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->e:[B

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->c:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->f:Ljava/lang/String;

    return-object v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->e:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeRequest(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v2, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->d:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 167
    const/16 v2, 0x1000

    new-array v1, v2, [B

    .line 168
    .local v1, "tmp":[B
    const/4 v0, 0x0

    .line 170
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->d:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-ltz v0, :cond_1

    .line 171
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 174
    .end local v0    # "i":I
    .end local v1    # "tmp":[B
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->e:[B

    if-eqz v2, :cond_2

    .line 175
    iget-object v2, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->e:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 179
    :cond_1
    return-void

    .line 177
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Content must be set before entity is written"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
