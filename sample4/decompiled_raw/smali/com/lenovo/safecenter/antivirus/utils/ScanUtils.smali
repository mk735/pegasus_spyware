.class public Lcom/lenovo/safecenter/antivirus/utils/ScanUtils;
.super Ljava/lang/Object;
.source "ScanUtils.java"


# static fields
.field public static isNetScan_cancel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/safecenter/antivirus/utils/ScanUtils;->isNetScan_cancel:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 31
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 43
    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4

    .line 34
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 35
    .local v2, "info":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 36
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, v2

    .local v3, "length":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 37
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    .line 38
    const/4 v4, 0x1

    goto :goto_0

    .line 36
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static parseXML(Ljava/io/InputStream;Landroid/content/Context;)Ljava/util/List;
    .locals 8
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
    .line 134
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;>;"
    const/4 v0, 0x0

    .line 137
    .local v0, "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 138
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v6, "UTF-8"

    invoke-interface {v5, p0, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 139
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .local v3, "event":I
    move-object v1, v0

    .line 140
    .end local v0    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .local v1, "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :goto_0
    const/4 v6, 0x1

    if-eq v3, v6, :cond_4

    .line 141
    packed-switch v3, :pswitch_data_0

    :cond_0
    move-object v0, v1

    .line 187
    .end local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v0    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :cond_1
    :goto_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move-object v1, v0

    .end local v0    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    goto :goto_0

    .line 143
    :pswitch_0
    :try_start_1
    const-string v6, "apk"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 145
    new-instance v0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;

    invoke-direct {v0}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    .end local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v0    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :goto_2
    :try_start_2
    const-string v6, "virusname"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 149
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setName(Ljava/lang/String;)V

    .line 151
    :cond_2
    const-string v6, "packagename"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 154
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setPkgName(Ljava/lang/String;)V

    .line 168
    :cond_3
    const-string v6, "description"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 170
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setVirusDesc(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 190
    .end local v3    # "event":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v2

    .line 191
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    .end local v0    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    return-object v4

    .line 180
    .restart local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v3    # "event":I
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_1
    :try_start_3
    const-string v6, "apk"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 182
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 183
    const/4 v0, 0x0

    .end local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v0    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    goto :goto_1

    .line 190
    .end local v0    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v0    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    goto :goto_3

    .end local v0    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :cond_5
    move-object v0, v1

    .end local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v0    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    goto :goto_2

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parseXMLGlobal(Ljava/io/InputStream;Landroid/content/Context;)Ljava/util/List;
    .locals 9
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
    .line 306
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;>;"
    const/4 v0, 0x0

    .line 309
    .local v0, "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 310
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v7, "UTF-8"

    invoke-interface {v5, p0, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 311
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .local v3, "event":I
    move-object v1, v0

    .line 312
    .end local v0    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .local v1, "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :goto_0
    const/4 v7, 0x1

    if-eq v3, v7, :cond_5

    .line 313
    packed-switch v3, :pswitch_data_0

    :cond_0
    move-object v0, v1

    .line 351
    .end local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v0    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :cond_1
    :goto_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move-object v1, v0

    .end local v0    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    goto :goto_0

    .line 315
    :pswitch_0
    :try_start_1
    const-string v7, "apk"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 317
    new-instance v0, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;

    invoke-direct {v0}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 319
    .end local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v0    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :goto_2
    :try_start_2
    const-string v7, "virusname"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 321
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setName(Ljava/lang/String;)V

    .line 323
    :cond_2
    const-string v7, "packagename"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 326
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setPkgName(Ljava/lang/String;)V

    .line 329
    :cond_3
    const-string v7, "description"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 331
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setVirusDesc(Ljava/lang/String;)V

    .line 334
    :cond_4
    const-string v7, "pathkey"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 336
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    .line 337
    .local v6, "pathkey":Ljava/lang/String;
    if-eqz v6, :cond_1

    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 338
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->setPathKey(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 354
    .end local v3    # "event":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "pathkey":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 355
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 356
    const/4 v4, 0x0

    .line 358
    .end local v0    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;>;"
    :cond_5
    return-object v4

    .line 344
    .restart local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v3    # "event":I
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;>;"
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_1
    :try_start_3
    const-string v7, "apk"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 346
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 347
    const/4 v0, 0x0

    .end local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v0    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    goto/16 :goto_1

    .line 354
    .end local v0    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v0    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    goto :goto_3

    .end local v0    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :cond_6
    move-object v0, v1

    .end local v1    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .restart local v0    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    goto :goto_2

    .line 313
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public ExecError(Ljava/lang/String;Landroid/content/Context;)V
    .locals 12
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 363
    const-string v10, "viruspkgname"

    invoke-static {v10, p2}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 364
    .local v9, "viruspkgnamelist":Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 366
    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 367
    .local v8, "strs":[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v7, v0, v2

    .line 370
    .local v7, "str1":Ljava/lang/String;
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 372
    .end local v7    # "str1":Ljava/lang/String;
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 374
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 376
    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 380
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 382
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 386
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x2c

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 372
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "str":Ljava/lang/String;
    .local v2, "i$":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 388
    .local v2, "i$":Ljava/util/Iterator;
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    const-string v10, "viruspkgname"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, p2}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 397
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "len$":I
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "strs":[Ljava/lang/String;
    :cond_4
    :goto_3
    return-void

    .line 392
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i":I
    .local v2, "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "strs":[Ljava/lang/String;
    :cond_5
    const-string v10, "viruspkgname"

    const-string v11, ""

    invoke-static {v10, v11, p2}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 393
    const/4 v10, 0x0

    sput-boolean v10, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->hasVirus:Z

    goto :goto_3
.end method

.method public cloudScanGlobal(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;
    .locals 24
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/Appinfo;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/Appinfo;>;"
    const/4 v14, 0x0

    .line 207
    .local v14, "list_v":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;>;"
    const-string v16, "c81e728d9d4c2f636f067f89cc14862c"

    .line 209
    .local v16, "md5Key":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v21

    if-gtz v21, :cond_0

    .line 211
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 302
    :goto_0
    return-object v21

    .line 214
    :cond_0
    const/16 v17, 0x0

    .line 215
    .local v17, "num":I
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    .line 216
    .local v19, "sb":Ljava/lang/StringBuffer;
    const-string v21, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string v22, "<apklist>"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;

    .line 221
    .local v12, "info":Lcom/lenovo/safecenter/antivirus/domain/Appinfo;
    invoke-virtual {v12}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getSHA1()Ljava/lang/String;

    move-result-object v21

    const-string v22, "preload"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-virtual {v12}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getMD5()Ljava/lang/String;

    move-result-object v21

    const-string v22, "preload"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-virtual {v12}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getMD5()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_1

    const-string v21, ""

    invoke-virtual {v12}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getMD5()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    invoke-virtual {v12}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getFilesize()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_1

    const-string v21, ""

    invoke-virtual {v12}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getFilesize()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    invoke-virtual {v12}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getPkgName()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_1

    const-string v21, ""

    invoke-virtual {v12}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getPkgName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 229
    :cond_2
    add-int/lit8 v17, v17, 0x1

    .line 230
    const-string v21, "<apk>"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    invoke-virtual {v12}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getSHA1()Ljava/lang/String;

    move-result-object v21

    const-string v22, "preload"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 233
    const-string v21, "<packagesha1>"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual {v12}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getSHA1()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string v22, "</packagesha1>"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    :goto_2
    invoke-virtual {v12}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getPathKey()I

    move-result v21

    if-eqz v21, :cond_3

    .line 245
    const-string v21, "<pathkey>"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual {v12}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getPathKey()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string v22, "</pathkey>"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    :cond_3
    const-string v21, "</apk>"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 298
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "info":Lcom/lenovo/safecenter/antivirus/domain/Appinfo;
    :catch_0
    move-exception v7

    .line 299
    .local v7, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 300
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0

    .line 237
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v12    # "info":Lcom/lenovo/safecenter/antivirus/domain/Appinfo;
    :cond_4
    :try_start_1
    const-string v21, "<certmd5>"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual {v12}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getMD5()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string v22, "</certmd5>"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    const-string v21, "<filesize>"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual {v12}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getFilesize()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string v22, "</filesize>"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    const-string v21, "<packagename>"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual {v12}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getPkgName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string v22, "</packagename>"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 249
    .end local v12    # "info":Lcom/lenovo/safecenter/antivirus/domain/Appinfo;
    :cond_5
    const-string v21, "</apklist>"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v21, "msg"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v10, Lorg/apache/commons/httpclient/HttpClient;

    invoke-direct {v10}, Lorg/apache/commons/httpclient/HttpClient;-><init>()V

    .line 253
    .local v10, "httpClient":Lorg/apache/commons/httpclient/HttpClient;
    new-instance v18, Lorg/apache/commons/httpclient/methods/PostMethod;

    const-string v21, "http://sss.lenovomm.com/sss/1.0/viruscloudglobal"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/methods/PostMethod;-><init>(Ljava/lang/String;)V

    .line 258
    .local v18, "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 259
    .local v3, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 260
    .local v4, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v9, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v9, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 262
    .local v9, "gos":Ljava/util/zip/GZIPOutputStream;
    const/16 v21, 0x400

    move/from16 v0, v21

    new-array v5, v0, [B

    .line 263
    .local v5, "bytes":[B
    const/4 v13, 0x0

    .line 264
    .local v13, "length":I
    :goto_4
    const/16 v21, 0x0

    array-length v0, v5

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v5, v0, v1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v13

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v13, v0, :cond_6

    .line 266
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v5, v0, v13}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    goto :goto_4

    .line 268
    :cond_6
    invoke-virtual {v9}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 269
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 270
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 271
    new-instance v8, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;

    new-instance v21, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v22, "text/xml"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v8, v0, v1}, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 272
    .local v8, "entity":Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lorg/apache/commons/httpclient/methods/PostMethod;->setRequestEntity(Lorg/apache/commons/httpclient/methods/RequestEntity;)V

    .line 273
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v0, p2

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->usenet:Ljava/lang/String;

    .line 275
    const-string v21, "Content-Encoding"

    const-string v22, "gzip"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/httpclient/methods/PostMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v21, "ticket"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/lenovo/safecenter/antivirus/utils/MD5Util;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/httpclient/methods/PostMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    move-result v20

    .line 280
    .local v20, "status":I
    const-string v21, "msg"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "===statusstatus"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseBodyAsString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/16 v21, 0xc8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 283
    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseBodyAsString()Ljava/lang/String;

    move-result-object v21

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 285
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 286
    .end local v14    # "list_v":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;>;"
    .local v15, "list_v":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;>;"
    :try_start_2
    const-string v21, "msg"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "===statusstatus string is not null"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v14, v15

    .end local v15    # "list_v":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;>;"
    .restart local v14    # "list_v":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;>;"
    :cond_7
    move-object/from16 v21, v14

    .line 302
    goto/16 :goto_0

    .line 290
    :cond_8
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/antivirus/utils/ScanUtils;->parseXMLGlobal(Ljava/io/InputStream;Landroid/content/Context;)Ljava/util/List;

    move-result-object v14

    .line 291
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;

    .line 293
    .local v6, "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    const-string v21, "msg"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "===statusstatus"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v6}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getVirusDesc()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v6}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v6}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getPkgName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 298
    .end local v6    # "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    .end local v14    # "list_v":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;>;"
    .restart local v15    # "list_v":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;>;"
    :catch_1
    move-exception v7

    move-object v14, v15

    .end local v15    # "list_v":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;>;"
    .restart local v14    # "list_v":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;>;"
    goto/16 :goto_3
.end method

.method public netPost(Ljava/util/List;Landroid/content/Context;Lorg/apache/commons/httpclient/methods/PostMethod;)Ljava/util/List;
    .locals 22
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "post"    # Lorg/apache/commons/httpclient/methods/PostMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/Appinfo;",
            ">;",
            "Landroid/content/Context;",
            "Lorg/apache/commons/httpclient/methods/PostMethod;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/Appinfo;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v14, "list_v":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v19

    if-gtz v19, :cond_0

    move-object v15, v14

    .line 130
    .end local v14    # "list_v":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;>;"
    .local v15, "list_v":Ljava/lang/Object;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;>;"
    :goto_0
    return-object v15

    .line 59
    .end local v15    # "list_v":Ljava/lang/Object;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;>;"
    .restart local v14    # "list_v":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;>;"
    :cond_0
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 60
    .local v17, "sb":Ljava/lang/StringBuffer;
    const-string v19, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "<apklist>"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;

    .line 64
    .local v12, "info":Lcom/lenovo/safecenter/antivirus/domain/Appinfo;
    invoke-virtual {v12}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getSHA1()Ljava/lang/String;

    move-result-object v19

    const-string v20, "preload"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 66
    const-string v19, "<apk>"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const-string v19, "<packagesha1>"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual {v12}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getSHA1()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "</packagesha1>"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string v19, "</apk>"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 71
    :cond_1
    const-string v19, "<apk>"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    const-string v19, "<certmd5>"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual {v12}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getMD5()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "</certmd5>"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    const-string v19, "<filesize>"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual {v12}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getFilesize()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "</filesize>"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v19, "<packagename>"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual {v12}, Lcom/lenovo/safecenter/antivirus/domain/Appinfo;->getPkgName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "</packagename>"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v19, "</apk>"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 78
    .end local v12    # "info":Lcom/lenovo/safecenter/antivirus/domain/Appinfo;
    :cond_2
    const-string v19, "</apklist>"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    :try_start_0
    new-instance v10, Lorg/apache/commons/httpclient/HttpClient;

    invoke-direct {v10}, Lorg/apache/commons/httpclient/HttpClient;-><init>()V

    .line 81
    .local v10, "httpClient":Lorg/apache/commons/httpclient/HttpClient;
    if-nez p3, :cond_3

    .line 83
    new-instance v16, Lorg/apache/commons/httpclient/methods/PostMethod;

    const-string v19, "http://sss.lenovomm.com/sss/1.0/viruscloudscan"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/methods/PostMethod;-><init>(Ljava/lang/String;)V

    .end local p3    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .local v16, "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    move-object/from16 p3, v16

    .line 88
    .end local v16    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local p3    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    :cond_3
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 89
    .local v3, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 90
    .local v4, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v9, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v9, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 92
    .local v9, "gos":Ljava/util/zip/GZIPOutputStream;
    const/16 v19, 0x400

    move/from16 v0, v19

    new-array v5, v0, [B

    .line 93
    .local v5, "bytes":[B
    const/4 v13, 0x0

    .line 94
    .local v13, "length":I
    :goto_2
    const/16 v19, 0x0

    array-length v0, v5

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v5, v0, v1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v13

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v13, v0, :cond_5

    .line 96
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v5, v0, v13}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 127
    .end local v3    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "bytes":[B
    .end local v9    # "gos":Ljava/util/zip/GZIPOutputStream;
    .end local v10    # "httpClient":Lorg/apache/commons/httpclient/HttpClient;
    .end local v13    # "length":I
    :catch_0
    move-exception v7

    .line 128
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .end local v7    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_3
    move-object v15, v14

    .line 130
    .restart local v15    # "list_v":Ljava/lang/Object;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;>;"
    goto/16 :goto_0

    .line 98
    .end local v15    # "list_v":Ljava/lang/Object;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;>;"
    .restart local v3    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "bytes":[B
    .restart local v9    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v10    # "httpClient":Lorg/apache/commons/httpclient/HttpClient;
    .restart local v13    # "length":I
    :cond_5
    :try_start_1
    invoke-virtual {v9}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 99
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 100
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 101
    new-instance v8, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;

    new-instance v19, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v20, "text/xml"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v8, v0, v1}, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 102
    .local v8, "entity":Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lorg/apache/commons/httpclient/methods/PostMethod;->setRequestEntity(Lorg/apache/commons/httpclient/methods/RequestEntity;)V

    .line 104
    const-string v19, "Content-Encoding"

    const-string v20, "gzip"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/httpclient/methods/PostMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v19, "ticket"

    const-string v20, "aaabbbccc"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/httpclient/methods/PostMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    move-result v18

    .line 109
    .local v18, "status":I
    const-string v19, "msg"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "===statusstatus"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseBodyAsString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/16 v19, 0xc8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 112
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseBodyAsString()Ljava/lang/String;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 114
    const-string v19, "msg"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "===statusstatus string is not null"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 118
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/antivirus/utils/ScanUtils;->parseXML(Ljava/io/InputStream;Landroid/content/Context;)Ljava/util/List;

    move-result-object v14

    .line 119
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;

    .line 121
    .local v6, "demo":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    const-string v19, "msg"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "===statusstatus"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getVirusDesc()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getPkgName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method
