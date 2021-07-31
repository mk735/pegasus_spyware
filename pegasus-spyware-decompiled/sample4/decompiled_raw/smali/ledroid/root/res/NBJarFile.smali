.class public final Lledroid/root/res/NBJarFile;
.super Ljava/lang/Object;
.source "NBJarFile.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/io/File;

.field private d:Lledroid/utils/AndroidResourceFile;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/io/File;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "nbResid"    # I
    .param p3, "placedDir"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lledroid/root/res/NBJarFile;->a:I

    .line 13
    iput-object v1, p0, Lledroid/root/res/NBJarFile;->b:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lledroid/root/res/NBJarFile;->d:Lledroid/utils/AndroidResourceFile;

    .line 20
    new-instance v0, Lledroid/utils/AndroidResourceFile;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lledroid/utils/AndroidResourceFile;-><init>(Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lledroid/root/res/NBJarFile;->d:Lledroid/utils/AndroidResourceFile;

    .line 21
    iput-object p3, p0, Lledroid/root/res/NBJarFile;->c:Ljava/io/File;

    .line 22
    invoke-virtual {p0}, Lledroid/root/res/NBJarFile;->updateIfNeed()V

    .line 23
    return-void
.end method


# virtual methods
.method public final getAbsolutePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lledroid/root/res/NBJarFile;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getDexPath(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "version"    # I

    .prologue
    .line 31
    if-nez p2, :cond_0

    const-string v0, ""

    .line 32
    .local v0, "ver":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/dalvik-cache/data@data@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@files@nb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jar@classes.dex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 31
    .end local v0    # "ver":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getNbJarFileVersion(Ljava/io/File;)I
    .locals 1
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 36
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lledroid/root/res/NBJarFile;->getNbJarFileVersion(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getNbJarFileVersion(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-string v1, ".jar"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "nb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 43
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 46
    .end local v0    # "split":[Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public final getNewVersionCode()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lledroid/root/res/NBJarFile;->a:I

    return v0
.end method

.method public final updateIfNeed()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 50
    iget-object v4, p0, Lledroid/root/res/NBJarFile;->c:Ljava/io/File;

    new-instance v5, Lledroid/root/res/NBJarFile$1;

    invoke-direct {v5, p0}, Lledroid/root/res/NBJarFile$1;-><init>(Lledroid/root/res/NBJarFile;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 74
    .local v1, "listNbJars":[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-nez v4, :cond_2

    .line 75
    :cond_0
    iput v8, p0, Lledroid/root/res/NBJarFile;->a:I

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lledroid/root/res/NBJarFile;->c:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/nb"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jar"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lledroid/root/res/NBJarFile;->b:Ljava/lang/String;

    .line 77
    iget-object v4, p0, Lledroid/root/res/NBJarFile;->d:Lledroid/utils/AndroidResourceFile;

    iget-object v5, p0, Lledroid/root/res/NBJarFile;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lledroid/utils/AndroidResourceFile;->writeTo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    const-string v4, "Ledroid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Place ledroid service file to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lledroid/root/res/NBJarFile;->c:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " fialed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_1
    :goto_0
    return-void

    .line 80
    :cond_2
    array-length v4, v1

    if-ne v4, v7, :cond_3

    .line 81
    aget-object v4, v1, v6

    invoke-virtual {p0, v4}, Lledroid/root/res/NBJarFile;->getNbJarFileVersion(Ljava/io/File;)I

    move-result v4

    iput v4, p0, Lledroid/root/res/NBJarFile;->a:I

    .line 82
    aget-object v4, v1, v6

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lledroid/root/res/NBJarFile;->b:Ljava/lang/String;

    goto :goto_0

    .line 83
    :cond_3
    array-length v4, v1

    if-le v4, v7, :cond_1

    .line 84
    aget-object v2, v1, v6

    .line 85
    .local v2, "newFile":Ljava/io/File;
    invoke-virtual {p0, v2}, Lledroid/root/res/NBJarFile;->getNbJarFileVersion(Ljava/io/File;)I

    move-result v4

    iput v4, p0, Lledroid/root/res/NBJarFile;->a:I

    .line 87
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_6

    .line 88
    aget-object v4, v1, v0

    invoke-virtual {p0, v4}, Lledroid/root/res/NBJarFile;->getNbJarFileVersion(Ljava/io/File;)I

    move-result v3

    .line 89
    .local v3, "rVersion":I
    iget v4, p0, Lledroid/root/res/NBJarFile;->a:I

    if-ge v4, v3, :cond_5

    .line 90
    iput v3, p0, Lledroid/root/res/NBJarFile;->a:I

    .line 91
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 92
    aget-object v2, v1, v0

    .line 87
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 93
    :cond_5
    iget v4, p0, Lledroid/root/res/NBJarFile;->a:I

    if-le v4, v3, :cond_4

    .line 94
    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 97
    .end local v3    # "rVersion":I
    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lledroid/root/res/NBJarFile;->b:Ljava/lang/String;

    goto :goto_0
.end method
