.class final Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$6;
.super Ljava/lang/Object;
.source "LeSafeMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1241
    iput-object p1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$6;->b:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    iput-object p2, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$6;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    .line 1245
    iget-object v6, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$6;->a:Ljava/lang/Object;

    if-nez v6, :cond_0

    .line 1270
    :goto_0
    return-void

    .line 1248
    :cond_0
    iget-object v5, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$6;->a:Ljava/lang/Object;

    check-cast v5, Ljava/io/InputStream;

    .line 1249
    .local v5, "result":Ljava/io/InputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 1250
    .local v0, "buffer":[B
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1251
    .local v4, "ostream":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 1253
    .local v3, "len":I
    :goto_1
    :try_start_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    .line 1254
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1266
    :catch_0
    move-exception v1

    .line 1267
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1268
    const-string v6, "wu0wu"

    const-string v7, "IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1257
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$6;->b:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    const-string v7, "holiday_img.jpg"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 1260
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 1261
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1262
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 1263
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1264
    const-string v6, "d"

    const-string v7, "wu0wu"

    const-string v8, "handleHolidayImgDownload onSuccess..."

    invoke-static {v6, v7, v8}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
