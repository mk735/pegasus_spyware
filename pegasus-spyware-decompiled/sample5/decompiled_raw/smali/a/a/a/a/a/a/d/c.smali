.class public La/a/a/a/a/a/d/c;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/a/a/a/d/b;


# instance fields
.field private a:Z

.field private b:Ljava/io/DataOutputStream;

.field private c:Ljava/io/ByteArrayOutputStream;

.field private d:Ljava/io/FileOutputStream;

.field private e:Ljava/io/File;

.field private f:Ljava/io/File;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/util/Properties;

.field private l:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, La/a/a/a/a/a/d/c;->a:Z

    iput v0, p0, La/a/a/a/a/a/d/c;->i:I

    iput v0, p0, La/a/a/a/a/a/d/c;->j:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, La/a/a/a/a/a/d/c;->l:J

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/d/c;->k:Ljava/util/Properties;

    const-string v0, "org.eclipse.paho.client.mqttv3.trace"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "user.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mqtt-trace.properties"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, La/a/a/a/a/a/d/c;->e:Ljava/io/File;

    :goto_0
    invoke-direct {p0}, La/a/a/a/a/a/d/c;->a()Z

    return-void

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, La/a/a/a/a/a/d/c;->e:Ljava/io/File;

    goto :goto_0
.end method

.method private a()Z
    .locals 8

    const/4 v1, 0x1

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, La/a/a/a/a/a/d/c;->e:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, La/a/a/a/a/a/d/c;->e:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iget-wide v4, p0, La/a/a/a/a/a/d/c;->l:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, p0, La/a/a/a/a/a/d/c;->k:Ljava/util/Properties;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, La/a/a/a/a/a/d/c;->e:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    iget-object v2, p0, La/a/a/a/a/a/d/c;->e:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, La/a/a/a/a/a/d/c;->l:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, La/a/a/a/a/a/d/c;->k:Ljava/util/Properties;

    const-string v3, "org.eclipse.paho.client.mqttv3.trace.outputName"

    const-string v4, "user.dir"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, La/a/a/a/a/a/d/c;->f:Ljava/io/File;

    iget-object v2, p0, La/a/a/a/a/a/d/c;->f:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, La/a/a/a/a/a/d/c;->k:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->clear()V

    iput-wide v6, p0, La/a/a/a/a/a/d/c;->l:J

    iput-boolean v0, p0, La/a/a/a/a/a/d/c;->a:Z

    :goto_0
    return v0

    :catch_0
    move-exception v1

    iget-object v1, p0, La/a/a/a/a/a/d/c;->k:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->clear()V

    iput-wide v6, p0, La/a/a/a/a/a/d/c;->l:J

    iput-boolean v0, p0, La/a/a/a/a/a/d/c;->a:Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, La/a/a/a/a/a/d/c;->k:Ljava/util/Properties;

    const-string v3, "org.eclipse.paho.client.mqttv3.trace.count"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, La/a/a/a/a/a/d/c;->g:I

    iget-object v2, p0, La/a/a/a/a/a/d/c;->k:Ljava/util/Properties;

    const-string v3, "org.eclipse.paho.client.mqttv3.trace.limit"

    const-string v4, "5000000"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, La/a/a/a/a/a/d/c;->h:I

    invoke-direct {p0}, La/a/a/a/a/a/d/c;->b()V

    iget-object v2, p0, La/a/a/a/a/a/d/c;->d:Ljava/io/FileOutputStream;

    if-nez v2, :cond_1

    iget-object v1, p0, La/a/a/a/a/a/d/c;->k:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->clear()V

    iput-wide v6, p0, La/a/a/a/a/a/d/c;->l:J

    iput-boolean v0, p0, La/a/a/a/a/a/d/c;->a:Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/d/c;->c:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v2, p0, La/a/a/a/a/a/d/c;->c:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, La/a/a/a/a/a/d/c;->b:Ljava/io/DataOutputStream;

    iput-boolean v1, p0, La/a/a/a/a/a/d/c;->a:Z

    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, La/a/a/a/a/a/d/c;->a:Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, La/a/a/a/a/a/d/c;->k:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->clear()V

    iput-wide v6, p0, La/a/a/a/a/a/d/c;->l:J

    iput-boolean v0, p0, La/a/a/a/a/a/d/c;->a:Z

    goto :goto_0
.end method

.method private b()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, La/a/a/a/a/a/d/c;->d:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/d/c;->d:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iput-object v5, p0, La/a/a/a/a/a/d/c;->d:Ljava/io/FileOutputStream;

    :cond_0
    iput v4, p0, La/a/a/a/a/a/d/c;->j:I

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, La/a/a/a/a/a/d/c;->f:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mqtt-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, La/a/a/a/a/a/d/c;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".trc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, La/a/a/a/a/a/d/c;->d:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    iput-boolean v4, p0, La/a/a/a/a/a/d/c;->a:Z

    iput-object v5, p0, La/a/a/a/a/a/d/c;->d:Ljava/io/FileOutputStream;

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(La/a/a/a/a/a/d/d;)V
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, La/a/a/a/a/a/d/c;->b:Ljava/io/DataOutputStream;

    iget-short v2, p1, La/a/a/a/a/a/d/d;->a:S

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v1, p0, La/a/a/a/a/a/d/c;->b:Ljava/io/DataOutputStream;

    iget-wide v2, p1, La/a/a/a/a/a/d/d;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-byte v1, p1, La/a/a/a/a/a/d/d;->c:B

    iget-object v2, p1, La/a/a/a/a/a/d/d;->h:[Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, La/a/a/a/a/a/d/d;->h:[Ljava/lang/Object;

    array-length v2, v2

    if-lez v2, :cond_0

    or-int/lit8 v1, v1, 0x20

    int-to-byte v1, v1

    :cond_0
    iget-object v2, p1, La/a/a/a/a/a/d/d;->g:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    or-int/lit8 v1, v1, 0x40

    int-to-byte v1, v1

    :cond_1
    iget-object v2, p0, La/a/a/a/a/a/d/c;->b:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v1, p0, La/a/a/a/a/a/d/c;->b:Ljava/io/DataOutputStream;

    iget-short v2, p1, La/a/a/a/a/a/d/d;->d:S

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v1, p0, La/a/a/a/a/a/d/c;->b:Ljava/io/DataOutputStream;

    iget-object v2, p1, La/a/a/a/a/a/d/d;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p1, La/a/a/a/a/a/d/d;->h:[Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, p1, La/a/a/a/a/a/d/d;->h:[Ljava/lang/Object;

    array-length v1, v1

    if-lez v1, :cond_2

    iget-object v1, p0, La/a/a/a/a/a/d/c;->b:Ljava/io/DataOutputStream;

    iget-object v2, p1, La/a/a/a/a/a/d/d;->h:[Ljava/lang/Object;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    move v1, v0

    :goto_0
    iget-object v2, p1, La/a/a/a/a/a/d/d;->h:[Ljava/lang/Object;

    array-length v2, v2

    if-lt v1, v2, :cond_7

    :cond_2
    iget-object v1, p1, La/a/a/a/a/a/d/d;->g:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    iget-object v1, p1, La/a/a/a/a/a/d/d;->g:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    iget-object v2, p0, La/a/a/a/a/a/d/c;->b:Ljava/io/DataOutputStream;

    array-length v3, v1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, La/a/a/a/a/a/d/c;->b:Ljava/io/DataOutputStream;

    iget-object v3, p1, La/a/a/a/a/a/d/d;->g:Ljava/lang/Throwable;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :goto_1
    array-length v2, v1

    if-lt v0, v2, :cond_9

    :cond_3
    iget v0, p0, La/a/a/a/a/a/d/c;->g:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    iget v0, p0, La/a/a/a/a/a/d/c;->j:I

    iget-object v1, p0, La/a/a/a/a/a/d/c;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, La/a/a/a/a/a/d/c;->h:I

    if-le v0, v1, :cond_5

    iget v0, p0, La/a/a/a/a/a/d/c;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/a/a/a/d/c;->i:I

    iget v0, p0, La/a/a/a/a/a/d/c;->i:I

    iget v1, p0, La/a/a/a/a/a/d/c;->g:I

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    iput v0, p0, La/a/a/a/a/a/d/c;->i:I

    :cond_4
    invoke-direct {p0}, La/a/a/a/a/a/d/c;->b()V

    :cond_5
    iget-object v0, p0, La/a/a/a/a/a/d/c;->d:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_6

    iget v0, p0, La/a/a/a/a/a/d/c;->j:I

    iget-object v1, p0, La/a/a/a/a/a/d/c;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, La/a/a/a/a/a/d/c;->j:I

    iget-object v0, p0, La/a/a/a/a/a/d/c;->c:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, La/a/a/a/a/a/d/c;->d:Ljava/io/FileOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    iget-object v0, p0, La/a/a/a/a/a/d/c;->d:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    :cond_6
    iget-object v0, p0, La/a/a/a/a/a/d/c;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :cond_7
    :try_start_1
    iget-object v2, p1, La/a/a/a/a/a/d/d;->h:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eqz v2, :cond_8

    iget-object v2, p0, La/a/a/a/a/a/d/c;->b:Ljava/io/DataOutputStream;

    iget-object v3, p1, La/a/a/a/a/a/d/d;->h:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    iget-object v2, p0, La/a/a/a/a/a/d/c;->b:Ljava/io/DataOutputStream;

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, La/a/a/a/a/a/d/c;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_9
    :try_start_3
    iget-object v2, p0, La/a/a/a/a/a/d/c;->b:Ljava/io/DataOutputStream;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4

    iget-boolean v0, p0, La/a/a/a/a/a/d/c;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "on"

    iget-object v1, p0, La/a/a/a/a/a/d/c;->k:Ljava/util/Properties;

    const-string v2, "org.eclipse.paho.client.mqttv3.trace.client.*.status"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "on"

    iget-object v1, p0, La/a/a/a/a/a/d/c;->k:Ljava/util/Properties;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "org.eclipse.paho.client.mqttv3.trace.client."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
