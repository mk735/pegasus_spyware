.class public final La/a/a/a/a/e;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/a/a/c;


# static fields
.field private static final d:Ljava/io/FilenameFilter;


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/io/File;

.field private c:La/a/a/a/a/a/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/a/a/a/a/f;

    invoke-direct {v0}, La/a/a/a/a/f;-><init>()V

    sput-object v0, La/a/a/a/a/e;->d:Ljava/io/FilenameFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "user.dir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, La/a/a/a/a/e;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/a/a/a/a/e;->b:Ljava/io/File;

    iput-object v0, p0, La/a/a/a/a/e;->c:La/a/a/a/a/a/i;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, La/a/a/a/a/e;->a:Ljava/io/File;

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 6

    const/4 v1, 0x0

    new-instance v0, La/a/a/a/a/g;

    invoke-direct {v0, p0}, La/a/a/a/a/g;-><init>(La/a/a/a/a/e;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    return-void

    :cond_0
    new-instance v3, Ljava/io/File;

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aget-object v4, v2, v0

    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    aget-object v4, v2, v0

    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/e;->b:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, La/a/a/a/a/l;

    invoke-direct {v0}, La/a/a/a/a/l;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private e()[Ljava/io/File;
    .locals 2

    invoke-direct {p0}, La/a/a/a/a/e;->d()V

    iget-object v0, p0, La/a/a/a/a/e;->b:Ljava/io/File;

    sget-object v1, La/a/a/a/a/e;->d:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, La/a/a/a/a/l;

    invoke-direct {v0}, La/a/a/a/a/l;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)La/a/a/a/a/k;
    .locals 5

    invoke-direct {p0}, La/a/a/a/a/e;->d()V

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, La/a/a/a/a/e;->b:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".msg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v2

    new-array v3, v2, [B

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    new-instance v0, La/a/a/a/a/a/n;

    array-length v1, v3

    invoke-direct {v0, p1, v3, v1}, La/a/a/a/a/a/n;-><init>(Ljava/lang/String;[BI)V

    return-object v0

    :cond_0
    sub-int v4, v2, v0

    invoke-virtual {v1, v3, v0, v4}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, La/a/a/a/a/l;

    invoke-direct {v1, v0}, La/a/a/a/a/l;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a()V
    .locals 3

    invoke-direct {p0}, La/a/a/a/a/e;->d()V

    iget-object v0, p0, La/a/a/a/a/e;->c:La/a/a/a/a/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/e;->c:La/a/a/a/a/a/i;

    invoke-virtual {v0}, La/a/a/a/a/a/i;->a()V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, La/a/a/a/a/e;->b:Ljava/io/File;

    const-string v2, ".lck"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object v0, p0, La/a/a/a/a/e;->b:Ljava/io/File;

    sget-object v1, La/a/a/a/a/e;->d:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    iget-object v0, p0, La/a/a/a/a/e;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/a/e;->b:Ljava/io/File;

    return-void
.end method

.method public final a(Ljava/lang/String;La/a/a/a/a/k;)V
    .locals 6

    invoke-direct {p0}, La/a/a/a/a/e;->d()V

    new-instance v1, Ljava/io/File;

    iget-object v0, p0, La/a/a/a/a/e;->b:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".msg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v0, p0, La/a/a/a/a/e;->b:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".msg.bup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-interface {p2}, La/a/a/a/a/k;->a()[B

    move-result-object v3

    invoke-interface {p2}, La/a/a/a/a/k;->c()I

    move-result v4

    invoke-interface {p2}, La/a/a/a/a/k;->b()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-interface {p2}, La/a/a/a/a/k;->d()[B

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, La/a/a/a/a/k;->d()[B

    move-result-object v3

    invoke-interface {p2}, La/a/a/a/a/k;->f()I

    move-result v4

    invoke-interface {p2}, La/a/a/a/a/k;->e()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    :cond_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_3
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v3, La/a/a/a/a/l;

    invoke-direct {v3, v0}, La/a/a/a/a/l;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_4
    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, La/a/a/a/a/e;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/e;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, La/a/a/a/a/l;

    invoke-direct {v0}, La/a/a/a/a/l;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, La/a/a/a/a/e;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, La/a/a/a/a/e;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, La/a/a/a/a/l;

    invoke-direct {v0}, La/a/a/a/a/l;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, La/a/a/a/a/e;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, La/a/a/a/a/l;

    invoke-direct {v0}, La/a/a/a/a/l;-><init>()V

    throw v0

    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_4

    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_6

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, La/a/a/a/a/e;->a:Ljava/io/File;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, La/a/a/a/a/e;->b:Ljava/io/File;

    iget-object v0, p0, La/a/a/a/a/e;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, La/a/a/a/a/e;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_3
    :try_start_0
    new-instance v0, La/a/a/a/a/a/i;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, La/a/a/a/a/e;->b:Ljava/io/File;

    const-string v4, ".lck"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v2}, La/a/a/a/a/a/i;-><init>(Ljava/io/File;)V

    iput-object v0, p0, La/a/a/a/a/e;->c:La/a/a/a/a/a/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, La/a/a/a/a/e;->b:Ljava/io/File;

    invoke-direct {p0, v0}, La/a/a/a/a/e;->a(Ljava/io/File;)V

    return-void

    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, La/a/a/a/a/e;->a(C)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, La/a/a/a/a/e;->a(C)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v0, La/a/a/a/a/l;

    invoke-direct {v0, v1}, La/a/a/a/a/l;-><init>(B)V

    throw v0
.end method

.method public final b()Ljava/util/Enumeration;
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, La/a/a/a/a/e;->d()V

    invoke-direct {p0}, La/a/a/a/a/e;->e()[Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/util/Vector;

    array-length v0, v2

    invoke-direct {v3, v0}, Ljava/util/Vector;-><init>(I)V

    move v0, v1

    :goto_0
    array-length v4, v2

    if-lt v0, v4, :cond_0

    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0

    :cond_0
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, La/a/a/a/a/e;->d()V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, La/a/a/a/a/e;->b:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".msg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    invoke-direct {p0}, La/a/a/a/a/e;->d()V

    invoke-direct {p0}, La/a/a/a/a/e;->e()[Ljava/io/File;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 4

    invoke-direct {p0}, La/a/a/a/a/e;->d()V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, La/a/a/a/a/e;->b:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".msg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method
