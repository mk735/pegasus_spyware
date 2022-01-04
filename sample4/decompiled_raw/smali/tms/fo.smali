.class public final Ltms/fo;
.super Lcom/tencent/tmsecure/common/BaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltms/fo$a;,
        Ltms/fo$b;,
        Ltms/fo$c;
    }
.end annotation


# static fields
.field static final synthetic a:Z

.field private static final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/pm/PackageManager;

.field private d:Ljava/lang/String;

.field private e:Lcom/tencent/tmsecure/module/plugin/IContext;

.field private f:Lcom/tencent/tmsecure/module/plugin/AbsPluginControler;

.field private g:Ljava/lang/ClassLoader;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/tmsecure/module/plugin/PluginEntity;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ltms/fo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltms/fo;->a:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltms/fo;->i:Ljava/util/HashMap;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    const-class v0, Lcom/tencent/tmsecure/module/plugin/IPluginInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Ltms/fo;->g:Ljava/lang/ClassLoader;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltms/fo;->h:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/tencent/tmsecure/module/plugin/PluginEntity;
    .locals 11

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Ltms/fo;->b:Landroid/content/Context;

    const-string v1, "plugins_dex"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltms/fo;->c:Landroid/content/pm/PackageManager;

    const/16 v3, 0x40

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v2

    :cond_0
    new-instance v3, Ltms/fo$b;

    invoke-direct {v3, p0, p1}, Ltms/fo$b;-><init>(Ltms/fo;Ljava/lang/String;)V

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "plugin_class"

    invoke-static {v3, v1, v4}, Ltms/fo;->a(Lcom/tencent/tmsecure/module/plugin/IContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "plugin_name"

    invoke-static {v3, v5, v4}, Ltms/fo;->a(Lcom/tencent/tmsecure/module/plugin/IContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "plugin_version"

    invoke-static {v3, v6, v4}, Ltms/fo;->a(Lcom/tencent/tmsecure/module/plugin/IContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    new-instance v7, Ldalvik/system/DexClassLoader;

    const/4 v8, 0x0

    iget-object v9, p0, Ltms/fo;->g:Ljava/lang/ClassLoader;

    invoke-direct {v7, p1, v0, v8, v9}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-virtual {v7, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/plugin/IPluginInterface;

    iget-object v1, p0, Ltms/fo;->e:Lcom/tencent/tmsecure/module/plugin/IContext;

    iget-object v7, p0, Ltms/fo;->f:Lcom/tencent/tmsecure/module/plugin/AbsPluginControler;

    invoke-interface {v0, v1, v3, v7}, Lcom/tencent/tmsecure/module/plugin/IPluginInterface;->onCreate(Lcom/tencent/tmsecure/module/plugin/IContext;Lcom/tencent/tmsecure/module/plugin/IContext;Lcom/tencent/tmsecure/module/plugin/AbsPluginControler;)V

    new-instance v1, Lcom/tencent/tmsecure/module/plugin/PluginEntity;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/plugin/PluginEntity;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iput-object v4, v1, Lcom/tencent/tmsecure/module/plugin/PluginEntity;->mPluginPkgName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/tmsecure/module/plugin/PluginEntity;->mPluginFilePath:Ljava/lang/String;

    iput-object v5, v1, Lcom/tencent/tmsecure/module/plugin/PluginEntity;->mPluginName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/tencent/tmsecure/module/plugin/PluginEntity;->mPluginVerion:I

    iput-object v0, v1, Lcom/tencent/tmsecure/module/plugin/PluginEntity;->mPluginInterface:Lcom/tencent/tmsecure/module/plugin/IPluginInterface;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v0, v1

    :goto_1
    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_2
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_3
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_4
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_2

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method private static a(Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Ltms/ae;->c([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_2
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_2
    :goto_4
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_5
    if-eqz v2, :cond_3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_3
    :goto_6
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_1
.end method

.method private static a(Lcom/tencent/tmsecure/module/plugin/IContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lcom/tencent/tmsecure/module/plugin/IContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Ltms/fo;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Ltms/fo;->h:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Ltms/fo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ltms/fo;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Ltms/fo;->i:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/tencent/tmsecure/module/plugin/AbsPluginControler;
    .locals 1

    iget-object v0, p0, Ltms/fo;->f:Lcom/tencent/tmsecure/module/plugin/AbsPluginControler;

    return-object v0
.end method

.method public final a(Lcom/tencent/tmsecure/module/plugin/AbsPluginDatabaseFactor;)Lcom/tencent/tmsecure/module/plugin/IPluginDatabase;
    .locals 2

    new-instance v0, Ltms/dz;

    iget-object v1, p0, Ltms/fo;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Ltms/dz;-><init>(Landroid/content/Context;Lcom/tencent/tmsecure/module/plugin/AbsPluginDatabaseFactor;)V

    return-object v0
.end method

.method public final a(I)Lcom/tencent/tmsecure/module/plugin/PluginEntity;
    .locals 5

    iget-object v2, p0, Ltms/fo;->h:Ljava/util/Map;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Ltms/fo;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/plugin/PluginEntity;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/plugin/PluginEntity;->getKey()I

    move-result v4

    if-ne v4, p1, :cond_0

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tmsecure/module/plugin/AbsPluginControler;)V
    .locals 0

    iput-object p1, p0, Ltms/fo;->f:Lcom/tencent/tmsecure/module/plugin/AbsPluginControler;

    return-void
.end method

.method public final declared-synchronized b()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/plugin/PluginEntity;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ltms/fo;->j:Z

    if-nez v0, :cond_2

    iget-object v1, p0, Ltms/fo;->h:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/io/File;

    const-string v2, "plugin_dir"

    invoke-static {v2}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ltms/ee;

    invoke-direct {v2, p0}, Ltms/ee;-><init>(Ltms/fo;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v0, v2

    if-lez v0, :cond_1

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Ltms/fo;->a(Ljava/lang/String;)Lcom/tencent/tmsecure/module/plugin/PluginEntity;

    move-result-object v6

    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    if-eqz v6, :cond_0

    iget-object v5, p0, Ltms/fo;->h:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Ltms/fo;->j:Z

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ltms/fo;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getSingletonType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Ltms/fo;->b:Landroid/content/Context;

    iget-object v0, p0, Ltms/fo;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Ltms/fo;->c:Landroid/content/pm/PackageManager;

    new-instance v0, Ltms/fo$a;

    invoke-direct {v0, p0}, Ltms/fo$a;-><init>(Ltms/fo;)V

    iput-object v0, p0, Ltms/fo;->e:Lcom/tencent/tmsecure/module/plugin/IContext;

    :try_start_0
    iget-object v0, p0, Ltms/fo;->c:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Ltms/fo;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ltms/fo;->a(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltms/fo;->d:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v0, Ltms/fo;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ltms/fo;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method
