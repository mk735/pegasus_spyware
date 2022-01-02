.class public Lcom/network/android/NetworkMain;
.super Landroid/app/Activity;
.source "NetworkMain.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const-string v2, "/data/data/com.network.android/libsgn.so"

    .line 22
    .local v2, "libPath":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/network/android/NetworkMain;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "libsgn.so"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 23
    .local v1, "iS":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v5

    new-array v0, v5, [B

    .line 24
    .local v0, "buffer":[B
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 25
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 27
    .local v3, "oS":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 29
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 30
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 32
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 33
    .local v4, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 34
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 36
    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v0    # "buffer":[B
    .end local v1    # "iS":Ljava/io/InputStream;
    .end local v3    # "oS":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    :goto_0
    invoke-virtual {p0}, Lcom/network/android/NetworkMain;->finish()V

    .line 49
    return-void

    .line 45
    :catch_0
    move-exception v5

    goto :goto_0

    .line 42
    :catch_1
    move-exception v5

    goto :goto_0

    .line 39
    :catch_2
    move-exception v5

    goto :goto_0
.end method
