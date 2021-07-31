.class final Ltms/ex;
.super Ljava/lang/Object;


# static fields
.field private static e:Ltms/ex;


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/os/Bundle;

.field private d:Z

.field private f:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltms/ex;->d:Z

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltms/ex;->f:Landroid/content/Context;

    invoke-direct {p0}, Ltms/ex;->c()V

    iget-object v0, p0, Ltms/ex;->f:Landroid/content/Context;

    const-string v1, "qv_base.amf"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ltms/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltms/ex;->f:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/tmsecure/module/qscanner/AmScanner;->loadAmfHeader(Landroid/content/Context;Ljava/lang/String;)LQQPIM/VirusClientInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LQQPIM/VirusClientInfo;->getTimestamp()I

    move-result v1

    iget v2, p0, Ltms/ex;->b:I

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, LQQPIM/VirusClientInfo;->getVersion()I

    move-result v1

    iget v2, p0, Ltms/ex;->a:I

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-virtual {v0}, LQQPIM/VirusClientInfo;->getTimestamp()I

    move-result v1

    iput v1, p0, Ltms/ex;->b:I

    invoke-virtual {v0}, LQQPIM/VirusClientInfo;->getVersion()I

    move-result v0

    iput v0, p0, Ltms/ex;->a:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Ltms/ex;->c:Landroid/os/Bundle;

    :cond_1
    iget-object v0, p0, Ltms/ex;->c:Landroid/os/Bundle;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Ltms/ex;->c:Landroid/os/Bundle;

    :cond_2
    return-void
.end method

.method public static declared-synchronized a()Ltms/ex;
    .locals 2

    const-class v1, Ltms/ex;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltms/ex;->e:Ltms/ex;

    if-nez v0, :cond_0

    new-instance v0, Ltms/ex;

    invoke-direct {v0}, Ltms/ex;-><init>()V

    sput-object v0, Ltms/ex;->e:Ltms/ex;

    :cond_0
    sget-object v0, Ltms/ex;->e:Ltms/ex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()V
    .locals 6

    const/4 v1, 0x0

    const-class v3, Ltms/ex;

    monitor-enter v3

    :try_start_0
    sget-object v0, Ltms/ex;->e:Ltms/ex;

    if-eqz v0, :cond_1

    sget-object v0, Ltms/ex;->e:Ltms/ex;

    iget-boolean v2, v0, Ltms/ex;->d:Z

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Ltms/ex;->e:Ltms/ex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    return-void

    :cond_2
    :try_start_1
    iget-object v2, v0, Ltms/ex;->f:Landroid/content/Context;

    const-string v4, "qscan.cache"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    :try_start_2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iget v4, v0, Ltms/ex;->a:I

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v0, Ltms/ex;->b:I

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, v0, Ltms/ex;->c:Landroid/os/Bundle;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    iget-object v0, v0, Ltms/ex;->f:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lcom/tencent/tccdb/TccCryptor;->encrypt(Landroid/content/Context;[B[B)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_4
    :goto_3
    if-eqz v1, :cond_0

    :try_start_7
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_5

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_5
    :goto_5
    if-eqz v1, :cond_6

    :try_start_9
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_6
    throw v0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method private c()V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Ltms/ex;->f:Landroid/content/Context;

    const-string v2, "qscan.cache"

    invoke-virtual {v0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_3
    const-string v4, "QScanCacheManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_1
    :goto_3
    if-eqz v1, :cond_2

    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_2
    return-void

    :cond_3
    :try_start_6
    iget-object v0, p0, Ltms/ex;->f:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lcom/tencent/tccdb/TccCryptor;->decrypt(Landroid/content/Context;[B[B)[B

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltms/ex;->a:I

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltms/ex;->b:I

    iget-object v0, p0, Ltms/ex;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Ltms/ex;->c:Landroid/os/Bundle;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v3, :cond_4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_5
    if-eqz v2, :cond_5

    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_5
    :goto_6
    if-eqz v1, :cond_2

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_7
    if-eqz v3, :cond_6

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :cond_6
    :goto_8
    if-eqz v2, :cond_7

    :try_start_a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    :cond_7
    :goto_9
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_8
    throw v0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_7

    :catch_7
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_1

    :catch_8
    move-exception v0

    move-object v2, v1

    goto/16 :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;JI)Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object v0, p0, Ltms/ex;->c:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    if-eqz p2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;-><init>()V

    iget-object v2, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    iget-object v2, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->version:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->version:Ljava/lang/String;

    iget v2, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->versionCode:I

    iput v2, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->versionCode:I

    iget-object v2, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->certMd5:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->certMd5:Ljava/lang/String;

    iget v2, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->size:I

    iput v2, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->size:I

    iput p5, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->apkType:I

    iput-object p2, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->path:Ljava/lang/String;

    iget v2, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    iput v2, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    iget v2, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->advice:I

    iput v2, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->advice:I

    iget v2, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->malwareid:I

    iput v2, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->malwareid:I

    iget-object v2, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->label:Ljava/lang/String;

    iget-object v2, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->url:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->url:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tmsecure/module/qscanner/ApkKey;Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Ltms/ex;->c:Landroid/os/Bundle;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltms/ex;->c:Landroid/os/Bundle;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltms/ex;->d:Z

    :cond_0
    return-void
.end method
