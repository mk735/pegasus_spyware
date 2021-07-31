.class public final Lledroid/utils/AndroidResourceFile;
.super Ljava/lang/Object;
.source "AndroidResourceFile.java"


# instance fields
.field private a:I

.field private b:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lledroid/utils/AndroidResourceFile;->a:I

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lledroid/utils/AndroidResourceFile;->b:Landroid/content/res/Resources;

    .line 14
    iput-object p1, p0, Lledroid/utils/AndroidResourceFile;->b:Landroid/content/res/Resources;

    .line 15
    iput p2, p0, Lledroid/utils/AndroidResourceFile;->a:I

    .line 16
    return-void
.end method


# virtual methods
.method public final getLength()I
    .locals 4

    .prologue
    .line 19
    const/4 v1, 0x0

    .line 21
    .local v1, "inStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v2, p0, Lledroid/utils/AndroidResourceFile;->b:Landroid/content/res/Resources;

    iget v3, p0, Lledroid/utils/AndroidResourceFile;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 27
    invoke-static {v1}, Lledroid/utils/FileUtils;->closeIOCloseable(Ljava/io/Closeable;)V

    :goto_0
    return v2

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    invoke-static {v1}, Lledroid/utils/FileUtils;->closeIOCloseable(Ljava/io/Closeable;)V

    const/4 v2, -0x1

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lledroid/utils/FileUtils;->closeIOCloseable(Ljava/io/Closeable;)V

    throw v2
.end method

.method public final writeTo(Ljava/io/File;)Z
    .locals 3
    .param p1, "to"    # Ljava/io/File;

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 38
    .local v0, "inStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v1, p0, Lledroid/utils/AndroidResourceFile;->b:Landroid/content/res/Resources;

    iget v2, p0, Lledroid/utils/AndroidResourceFile;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lledroid/utils/AndroidResourceFile;->b:Landroid/content/res/Resources;

    iget v2, p0, Lledroid/utils/AndroidResourceFile;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, p1}, Lledroid/utils/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 41
    invoke-static {v0}, Lledroid/utils/FileUtils;->closeIOCloseable(Ljava/io/Closeable;)V

    return v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lledroid/utils/FileUtils;->closeIOCloseable(Ljava/io/Closeable;)V

    throw v1
.end method

.method public final writeTo(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lledroid/utils/AndroidResourceFile;->writeTo(Ljava/io/File;)Z

    move-result v0

    return v0
.end method
