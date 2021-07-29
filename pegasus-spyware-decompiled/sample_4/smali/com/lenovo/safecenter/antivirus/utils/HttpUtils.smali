.class public Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static b:I = 0x0

.field public static count:I = 0x0

.field public static final down_success:I = 0x2

.field public static hasVirus:Z = false

.field public static isDowning:Z = false

.field public static isInstall:Z = false

.field public static isOpen:Z = false

.field public static isfrom:Z = false

.field public static isupdating:Z = false

.field public static final net_disconnect:I = 0x1

.field public static final server_disconnect:I = 0x0

.field public static usenet:Ljava/lang/String; = null

.field public static final version_isNew:I = 0x3


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/update/UpdateInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    sput v1, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->count:I

    .line 49
    sput-boolean v1, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->isOpen:Z

    .line 50
    sput-boolean v1, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->hasVirus:Z

    .line 51
    sput-boolean v1, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->isDowning:Z

    .line 52
    sput-boolean v1, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->isupdating:Z

    .line 53
    sput-boolean v1, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->isfrom:Z

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->usenet:Ljava/lang/String;

    .line 55
    const/4 v0, 0x1

    sput v0, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->b:I

    .line 57
    sput-boolean v1, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->isInstall:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->a:Ljava/util/List;

    return-void
.end method

.method public static FormetFileSize(J)Ljava/lang/String;
    .locals 7
    .param p0, "fileS"    # J

    .prologue
    .line 379
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "#.00"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 380
    .local v0, "df":Ljava/text/DecimalFormat;
    const-wide/16 v2, 0x400

    cmp-long v2, p0, v2

    if-gez v2, :cond_0

    .line 382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v3, p0

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "B"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, "fileSizeString":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 383
    .end local v1    # "fileSizeString":Ljava/lang/String;
    :cond_0
    const-wide/32 v2, 0x100000

    cmp-long v2, p0, v2

    if-gez v2, :cond_1

    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v3, p0

    const-wide/high16 v5, 0x4090000000000000L    # 1024.0

    div-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "fileSizeString":Ljava/lang/String;
    goto :goto_0

    .line 385
    .end local v1    # "fileSizeString":Ljava/lang/String;
    :cond_1
    const-wide/32 v2, 0x40000000

    cmp-long v2, p0, v2

    if-gez v2, :cond_2

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v3, p0

    const-wide/high16 v5, 0x4130000000000000L    # 1048576.0

    div-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "fileSizeString":Ljava/lang/String;
    goto :goto_0

    .line 388
    .end local v1    # "fileSizeString":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v3, p0

    const-wide/high16 v5, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "fileSizeString":Ljava/lang/String;
    goto :goto_0
.end method

.method public static UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 508
    const-string v2, "virusversionconfig"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 509
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 510
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 511
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 512
    return-void
.end method

.method static synthetic a(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 42
    sput p0, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->b:I

    return p0
.end method

.method public static execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 499
    const-string v1, "virusversionconfig"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 500
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "longtime"    # Ljava/lang/String;

    .prologue
    .line 523
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 524
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 525
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 526
    .local v2, "time":Ljava/lang/String;
    return-object v2
.end method

.method public static getDateALL(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "longtime"    # Ljava/lang/String;

    .prologue
    .line 531
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 532
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 533
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 534
    .local v2, "time":Ljava/lang/String;
    return-object v2
.end method

.method public static initVirusVersion(Landroid/content/Context;)V
    .locals 6
    .param p0, "cxt"    # Landroid/content/Context;

    .prologue
    .line 541
    :try_start_0
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 542
    .local v2, "properties":Ljava/util/Properties;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 543
    const-string v4, "viruseversion"

    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 544
    .local v3, "virusVersion":Ljava/lang/String;
    const-string v4, "expireversion"

    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 545
    .local v1, "expireVersion":Ljava/lang/String;
    const-string v4, "lastintag"

    invoke-static {v4, v3, p0}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 546
    const-string v4, "expiredtag"

    invoke-static {v4, v1, p0}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    .end local v1    # "expireVersion":Ljava/lang/String;
    .end local v2    # "properties":Ljava/util/Properties;
    .end local v3    # "virusVersion":Ljava/lang/String;
    :goto_0
    return-void

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isSameDate(Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 7
    .param p0, "date1"    # Ljava/lang/Long;
    .param p1, "date2"    # Ljava/lang/Long;

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x1

    .line 575
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 576
    .local v0, "cal1":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 577
    .local v1, "cal2":Ljava/util/Calendar;
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 578
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 579
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    sub-int v2, v4, v5

    .line 580
    .local v2, "subYear":I
    if-nez v2, :cond_0

    .line 582
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 585
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static parseXML(Ljava/io/InputStream;Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .param p0, "inStream"    # Ljava/io/InputStream;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    .line 394
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v5, "expireList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v7, "memolist":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;>;"
    const/4 v1, 0x0

    .line 399
    .local v1, "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 400
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v10, "UTF-8"

    invoke-interface {v8, p0, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 401
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 402
    .local v4, "event":I
    const/4 v9, 0x0

    .local v9, "tag":I
    move-object v2, v1

    .line 403
    .end local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .local v2, "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :goto_0
    if-eq v4, v13, :cond_e

    .line 404
    packed-switch v4, :pswitch_data_0

    move-object v1, v2

    .line 484
    .end local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :cond_0
    :goto_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move-object v2, v1

    .end local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    goto :goto_0

    .line 407
    :pswitch_0
    :try_start_1
    const-string v10, "lastinviruses"

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 408
    const-string v10, "lastintag"

    const/4 v11, 0x0

    invoke-interface {v8, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, p1}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 409
    const-string v10, "lastVirusUpdateTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, p1}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 410
    const/4 v9, 0x1

    .line 413
    :cond_1
    const-string v10, "expiredviruses"

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 414
    const-string v10, "expiredtag"

    const/4 v11, 0x0

    invoke-interface {v8, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, p1}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 415
    const/4 v9, 0x2

    .line 418
    :cond_2
    const-string v10, "memolist"

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 419
    const/4 v9, 0x3

    .line 422
    :cond_3
    const-string v10, "onememo"

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 424
    new-instance v1, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;

    invoke-direct {v1}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;-><init>()V

    .end local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    move-object v2, v1

    .line 426
    .end local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :cond_4
    const-string v10, "onevirus"

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 428
    new-instance v1, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;

    invoke-direct {v1}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 430
    .end local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :goto_2
    :try_start_2
    const-string v10, "virusname"

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 432
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setName(Ljava/lang/String;)V

    .line 434
    :cond_5
    const-string v10, "packagename"

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 437
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setPkgName(Ljava/lang/String;)V

    .line 439
    :cond_6
    const-string v10, "packagesha1"

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 441
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setPkgSha1(Ljava/lang/String;)V

    .line 443
    :cond_7
    const-string v10, "certmd5"

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 445
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setCertmd5(Ljava/lang/String;)V

    .line 447
    :cond_8
    const-string v10, "vid"

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 449
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setType(Ljava/lang/String;)V

    .line 451
    :cond_9
    const-string v10, "description"

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 453
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setVirusDesc(Ljava/lang/String;)V

    .line 457
    :cond_a
    const-string v10, "filesize"

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 459
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setFilesize(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 489
    .end local v4    # "event":I
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "tag":I
    :catch_0
    move-exception v3

    .line 490
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 492
    .end local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_4
    return-object v6

    .line 463
    .restart local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v4    # "event":I
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9    # "tag":I
    :pswitch_1
    :try_start_3
    const-string v10, "onevirus"

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 465
    if-ne v9, v13, :cond_d

    .line 467
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 472
    :cond_b
    :goto_5
    const/4 v1, 0x0

    .line 474
    .end local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :goto_6
    :try_start_4
    const-string v10, "onememo"

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 476
    const/4 v10, 0x3

    if-ne v9, v10, :cond_c

    .line 478
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 480
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 468
    .end local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :cond_d
    const/4 v10, 0x2

    if-ne v9, v10, :cond_b

    .line 470
    :try_start_5
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 489
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    goto :goto_3

    .line 486
    .end local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :cond_e
    new-instance v0, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    invoke-direct {v0, p1}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;-><init>(Landroid/content/Context;)V

    .line 487
    .local v0, "db":Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;
    invoke-virtual {v0, v6, v5, v7}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->add2(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    .end local v0    # "db":Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;
    :cond_f
    move-object v1, v2

    .end local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    goto :goto_6

    .end local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :cond_10
    move-object v1, v2

    .end local v2    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    goto/16 :goto_2

    .line 404
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static removeConfig(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 515
    const-string v2, "virusversionconfig"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 516
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 517
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 518
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 519
    return-void
.end method

.method public static sendGETRequest_virus(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 558
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    const-string v4, "http://sss.lenovomm.com/sss/1.0/viruscount"

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 559
    .local v2, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 560
    .local v1, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.connection.timeout"

    const/16 v6, 0x1388

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 561
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.socket.timeout"

    const/16 v6, 0x1388

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 562
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 563
    .local v3, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 564
    const-string v4, "virusnetadd"

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p0}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 565
    const-string v4, "virusnetaddtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p0}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    .end local v1    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v2    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_0
    return-void

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public updateVirus(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const-class v1, Lcom/tencent/tmsecure/module/update/UpdateManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/update/UpdateManager;

    .line 112
    .local v0, "mUpdateManager":Lcom/tencent/tmsecure/module/update/UpdateManager;
    const/16 v1, 0x8

    new-instance v2, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils$1;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils$1;-><init>(Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/update/UpdateManager;->check(ILcom/tencent/tmsecure/module/update/ICheckListener;)V

    .line 141
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->a:Ljava/util/List;

    new-instance v2, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils$2;

    invoke-direct {v2, p0, p1}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils$2;-><init>(Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/update/UpdateManager;->update(Ljava/util/List;Lcom/tencent/tmsecure/module/update/IUpdateListener;)V

    .line 175
    :cond_0
    sget v1, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->b:I

    return v1
.end method

.method public updateVirusQuery(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 295
    const-class v1, Lcom/tencent/tmsecure/module/update/UpdateManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/update/UpdateManager;

    .line 297
    .local v0, "mUpdateManager":Lcom/tencent/tmsecure/module/update/UpdateManager;
    const/16 v1, 0x8

    new-instance v2, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils$3;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils$3;-><init>(Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/update/UpdateManager;->check(ILcom/tencent/tmsecure/module/update/ICheckListener;)V

    .line 332
    sget v1, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->b:I

    return v1
.end method
