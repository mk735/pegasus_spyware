.class public Lcom/lenovo/safecenter/utils/httpApi/ApiResponseFactory;
.super Ljava/lang/Object;
.source "ApiResponseFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/InputStream;Landroid/content/Context;)Ljava/lang/Object;
    .locals 14
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v4, Lcom/lenovo/safecenter/adapter/DaoImpl;

    new-instance v11, Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-direct {v11, p1}, Lcom/lenovo/safecenter/adapter/DbAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, v11}, Lcom/lenovo/safecenter/adapter/DaoImpl;-><init>(Lcom/lenovo/safecenter/adapter/DbAdapter;)V

    .line 148
    .local v4, "di":Lcom/lenovo/safecenter/adapter/DaoImpl;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 149
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v11, "utf-8"

    invoke-interface {v9, p0, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 150
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    .line 151
    .local v6, "eventType":I
    const-string v11, "yincc"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " eventType == "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v7, 0x0

    .line 153
    .local v7, "mInsert":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v1, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v10, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 157
    .local v3, "dfprefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 158
    .local v5, "edit":Landroid/content/SharedPreferences$Editor;
    :goto_0
    const/4 v11, 0x1

    if-eq v6, v11, :cond_a

    .line 159
    packed-switch v6, :pswitch_data_0

    .line 235
    :cond_0
    :goto_1
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    goto :goto_0

    .line 161
    :pswitch_0
    const-string v11, "lastinlist"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 163
    const/4 v7, 0x1

    .line 165
    :cond_1
    const-string v11, "expiredlist"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 166
    const/4 v7, 0x0

    .line 168
    :cond_2
    const-string v11, "lastintag"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 170
    const-string v11, "safe_url_safepay_last_flag"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 172
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 174
    :cond_3
    const-string v11, "expiredtag"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 177
    const-string v11, "safe_url_safepay_exp_flag"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 181
    :cond_4
    const-string v11, "oneapk"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 182
    const/4 v0, 0x0

    .local v0, "appname":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "packagename":Ljava/lang/String;
    const/4 v2, 0x0

    .line 184
    .local v2, "certmd5":Ljava/lang/String;
    :cond_5
    :goto_2
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v11

    const/4 v12, 0x3

    if-eq v11, v12, :cond_8

    .line 185
    const-string v11, "appname"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 186
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 188
    :cond_6
    const-string v11, "packagename"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 189
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 191
    :cond_7
    const-string v11, "certmd5"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 192
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 195
    :cond_8
    if-eqz v7, :cond_9

    .line 196
    invoke-virtual {v4, v0, v8, v2}, Lcom/lenovo/safecenter/adapter/DaoImpl;->insterForNet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 198
    :cond_9
    invoke-virtual {v4, v8}, Lcom/lenovo/safecenter/adapter/DaoImpl;->deleByPackageNameForSafeApp(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 243
    .end local v0    # "appname":Ljava/lang/String;
    .end local v2    # "certmd5":Ljava/lang/String;
    .end local v8    # "packagename":Ljava/lang/String;
    :cond_a
    const-string v11, "yincc"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " analsys white.size == "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " black.size == "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-static {v10, v1, p1}, Lcom/lenovo/safecenter/notificationintercept/UrlOptionUtils;->updateNativeUrl(Ljava/util/List;Ljava/util/List;Landroid/content/Context;)V

    .line 246
    const-string v11, "ad_switch"

    const/4 v12, 0x0

    invoke-interface {v3, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 247
    invoke-static {p1}, Lcom/lenovo/safecenter/notificationintercept/UrlOptionUtils;->updateHostsUrl(Landroid/content/Context;)Z

    .line 249
    :cond_b
    return-object v10

    .line 159
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 8
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 254
    const/4 v4, 0x0

    .line 255
    .local v4, "result":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 256
    const/4 v5, 0x0

    .line 274
    :goto_0
    return-object v5

    .line 258
    :cond_0
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 259
    .local v0, "buffer":[B
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 260
    .local v3, "ostream":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 263
    .local v2, "len":I
    :goto_1
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 264
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 269
    :catch_0
    move-exception v1

    .line 270
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "wu0wu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseSafeBrowserHomepageFlag e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    move-object v5, v4

    .line 274
    goto :goto_0

    .line 266
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    .line 267
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 268
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private static b(Ljava/io/InputStream;)Ljava/util/HashMap;
    .locals 10
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 280
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 282
    .local v4, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 283
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v6, "UTF-8"

    invoke-interface {v3, p0, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 284
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 285
    .local v1, "event":I
    const/4 v5, 0x0

    .line 286
    .local v5, "tag":I
    :goto_0
    if-eq v1, v9, :cond_7

    .line 287
    packed-switch v1, :pswitch_data_0

    .line 322
    :cond_0
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 289
    :pswitch_0
    const-string v6, "lastinimages"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 290
    const/4 v5, 0x1

    .line 292
    :cond_1
    const-string v6, "expiredimages"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 293
    const/4 v5, 0x2

    .line 295
    :cond_2
    const-string v6, "id"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 296
    if-ne v5, v9, :cond_8

    .line 297
    const-string v6, "id"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_3
    :goto_2
    const-string v6, "imageurl"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 303
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, "imageurl":Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/safecenter/utils/httpApi/ApiResponseFactory;->replaceAMP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 305
    const-string v6, "imageurl"

    invoke-virtual {v4, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v6, "wu0wu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<<<parseHolidayImgSyncResult imageurl="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .end local v2    # "imageurl":Ljava/lang/String;
    :cond_4
    const-string v6, "starttime"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 310
    const-string v6, "starttime"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_5
    const-string v6, "endtime"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 313
    const-string v6, "endtime"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    :cond_6
    const-string v6, "version"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 316
    const-string v6, "version"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 325
    .end local v1    # "event":I
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tag":I
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 328
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    return-object v4

    .line 298
    .restart local v1    # "event":I
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "tag":I
    :cond_8
    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 299
    :try_start_1
    const-string v6, "expiredId"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 287
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static getResponse(Landroid/content/Context;ILorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # I
    .param p2, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 27
    const/4 v2, 0x0

    .line 28
    .local v2, "result":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 30
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 31
    packed-switch p1, :pswitch_data_0

    .line 57
    .end local v2    # "result":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 33
    .restart local v2    # "result":Ljava/lang/Object;
    :pswitch_0
    invoke-static {v1}, Lcom/lenovo/safecenter/utils/httpApi/ApiResponseFactory;->b(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v2

    .line 34
    .local v2, "result":Ljava/util/HashMap;
    goto :goto_0

    .line 36
    .local v2, "result":Ljava/lang/Object;
    :pswitch_1
    move-object v2, v1

    .line 37
    .local v2, "result":Ljava/io/InputStream;
    goto :goto_0

    .line 39
    .local v2, "result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {v1}, Lcom/lenovo/safecenter/utils/httpApi/ApiResponseFactory;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "result":Ljava/lang/String;
    goto :goto_0

    .line 42
    .local v2, "result":Ljava/lang/Object;
    :pswitch_3
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    const-string v4, "utf-8"

    invoke-interface {v6, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const-string v4, "yincc"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " eventType == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    :goto_1
    const/4 v10, 0x1

    if-eq v5, v10, :cond_8

    packed-switch v5, :pswitch_data_1

    :cond_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_1

    :pswitch_4
    const-string v5, "lastinlist"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    const-string v5, "expiredlist"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x0

    :cond_2
    const-string v5, "lastintag"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v5, "safe_url_black_last_flag"

    invoke-interface {v9, v5, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    const-string v5, "expiredtag"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v5, "safe_url_black_exp_flag"

    invoke-interface {v9, v5, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    const-string v5, "blackurls"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    const-string v10, ""

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    if-eqz v4, :cond_6

    const/4 v5, 0x0

    :goto_2
    array-length v11, v10

    if-ge v5, v11, :cond_0

    const-string v11, ""

    aget-object v12, v10, v5

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    aget-object v11, v10, v5

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    :goto_3
    array-length v11, v10

    if-ge v5, v11, :cond_0

    const-string v11, ""

    aget-object v12, v10, v5

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    aget-object v11, v10, v5

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    const-string v4, "yincc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " analsys white.size == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " black.size == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3, v7, p0}, Lcom/lenovo/safecenter/notificationintercept/UrlOptionUtils;->updateNativeUrl(Ljava/util/List;Ljava/util/List;Landroid/content/Context;)V

    const-string v4, "ad_switch"

    const/4 v5, 0x0

    invoke-interface {v8, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {p0}, Lcom/lenovo/safecenter/notificationintercept/UrlOptionUtils;->updateHostsUrl(Landroid/content/Context;)Z

    .local v3, "result":Ljava/util/ArrayList;
    :cond_9
    move-object v2, v3

    .line 43
    goto/16 :goto_0

    .line 45
    .end local v3    # "result":Ljava/util/ArrayList;
    :pswitch_5
    invoke-static {v1, p0}, Lcom/lenovo/safecenter/utils/httpApi/ApiResponseFactory;->a(Ljava/io/InputStream;Landroid/content/Context;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto/16 :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "yincc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getResponse Error === "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 42
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
    .end packed-switch
.end method

.method public static replaceAMP(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 332
    const-string v0, "amp;"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    const-string v0, "amp;"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 335
    :cond_0
    return-object p0
.end method
