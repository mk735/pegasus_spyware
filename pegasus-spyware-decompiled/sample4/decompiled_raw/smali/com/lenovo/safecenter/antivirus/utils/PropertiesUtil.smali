.class public Lcom/lenovo/safecenter/antivirus/utils/PropertiesUtil;
.super Ljava/lang/Object;
.source "PropertiesUtil.java"


# static fields
.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Lcom/lenovo/safecenter/antivirus/utils/PropertiesUtil;


# instance fields
.field private a:Ljava/util/Properties;

.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "leskey.key"

    sput-object v0, Lcom/lenovo/safecenter/antivirus/utils/PropertiesUtil;->c:Ljava/lang/String;

    .line 25
    const-string v0, "lesprop.dat"

    sput-object v0, Lcom/lenovo/safecenter/antivirus/utils/PropertiesUtil;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/utils/PropertiesUtil;->b:Landroid/content/Context;

    .line 31
    :try_start_0
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/utils/PropertiesUtil;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/lenovo/safecenter/antivirus/utils/PropertiesUtil;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v3}, Lcom/lenovo/safecenter/antivirus/utils/PropertiesUtil;->a(Ljava/io/File;)V

    :cond_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Key;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/utils/PropertiesUtil;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/lenovo/safecenter/antivirus/utils/PropertiesUtil;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v3}, Lcom/lenovo/safecenter/antivirus/utils/PropertiesUtil;->a(Ljava/io/File;)V

    :cond_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v1, v3}, Lcom/lenovo/safecenter/antivirus/utils/PropertiesUtil;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/antivirus/utils/PropertiesUtil;->a:Ljava/util/Properties;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/io/File;)V
    .locals 8
    .param p1, "fileInFilesDir"    # Ljava/io/File;

    .prologue
    .line 113
    const/4 v4, 0x0

    .line 114
    .local v4, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 117
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/utils/PropertiesUtil;->b:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 120
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 121
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/16 v6, 0x400

    :try_start_1
    new-array v0, v6, [B

    .line 123
    .local v0, "buf":[B
    const/4 v5, 0x0

    .line 124
    .local v5, "len":I
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 125
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 127
    .end local v0    # "buf":[B
    .end local v5    # "len":I
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 128
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    if-eqz v4, :cond_0

    .line 132
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 137
    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    .line 139
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 147
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    return-void

    .line 130
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buf":[B
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "len":I
    :cond_2
    if-eqz v4, :cond_3

    .line 132
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 137
    :cond_3
    :goto_4
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-object v2, v3

    .line 142
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 133
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 134
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 140
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 141
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 142
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 133
    .end local v0    # "buf":[B
    .end local v5    # "len":I
    :catch_3
    move-exception v1

    .line 134
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 140
    :catch_4
    move-exception v1

    .line 141
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 130
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v4, :cond_4

    .line 132
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 137
    :cond_4
    :goto_6
    if-eqz v2, :cond_5

    .line 139
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 142
    :cond_5
    :goto_7
    throw v6

    .line 133
    :catch_5
    move-exception v1

    .line 134
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 140
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 141
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 130
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 127
    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "ips"    # Ljava/io/InputStream;
    .param p1, "ops"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 103
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 104
    .local v0, "buf":[B
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 105
    .local v1, "len":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 106
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 107
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_0

    .line 109
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/lenovo/safecenter/antivirus/utils/PropertiesUtil;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const-class v1, Lcom/lenovo/safecenter/antivirus/utils/PropertiesUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/safecenter/antivirus/utils/PropertiesUtil;->e:Lcom/lenovo/safecenter/antivirus/utils/PropertiesUtil;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/lenovo/safecenter/antivirus/utils/PropertiesUtil;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/antivirus/utils/PropertiesUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/safecenter/antivirus/utils/PropertiesUtil;->e:Lcom/lenovo/safecenter/antivirus/utils/PropertiesUtil;

    .line 43
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/antivirus/utils/PropertiesUtil;->e:Lcom/lenovo/safecenter/antivirus/utils/PropertiesUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/utils/PropertiesUtil;->a:Ljava/util/Properties;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/utils/PropertiesUtil;->a:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
