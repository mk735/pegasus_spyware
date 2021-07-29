.class final Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$13;
.super Ljava/lang/Thread;
.source "LeSafeMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)V
    .locals 0

    .prologue
    .line 796
    iput-object p1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$13;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    .line 798
    new-instance v1, Lcom/lenovo/safecenter/adapter/DbAdapter;

    iget-object v8, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$13;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-virtual {v8}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/lenovo/safecenter/adapter/DbAdapter;-><init>(Landroid/content/Context;)V

    .line 800
    .local v1, "db":Lcom/lenovo/safecenter/adapter/DbAdapter;
    :try_start_0
    invoke-virtual {v1}, Lcom/lenovo/safecenter/adapter/DbAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    .line 801
    invoke-virtual {v1}, Lcom/lenovo/safecenter/adapter/DbAdapter;->close()V

    .line 802
    new-instance v2, Lcom/lenovo/safecenter/adapter/DaoImpl;

    new-instance v8, Lcom/lenovo/safecenter/adapter/DbAdapter;

    iget-object v9, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$13;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-virtual {v9}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/lenovo/safecenter/adapter/DbAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v8}, Lcom/lenovo/safecenter/adapter/DaoImpl;-><init>(Lcom/lenovo/safecenter/adapter/DbAdapter;)V

    .line 804
    .local v2, "di":Lcom/lenovo/safecenter/adapter/DaoImpl;
    invoke-virtual {v2}, Lcom/lenovo/safecenter/adapter/DaoImpl;->queryCount()I

    move-result v8

    if-gtz v8, :cond_0

    .line 805
    const-string v8, "ydp"

    const-string v9, "create sayment database!!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v8, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$13;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-virtual {v8}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060001

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 809
    .local v6, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    const-string v8, "/data/data/com.lenovo.safecenter/databases/safepayment.db"

    const/4 v9, 0x0

    invoke-direct {v5, v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 812
    .local v5, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v8

    new-array v0, v8, [B

    .line 813
    .local v0, "buffer":[B
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    .line 814
    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 815
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 816
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 847
    .end local v0    # "buffer":[B
    .end local v2    # "di":Lcom/lenovo/safecenter/adapter/DaoImpl;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-void

    .line 817
    .restart local v2    # "di":Lcom/lenovo/safecenter/adapter/DaoImpl;
    .restart local v6    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 818
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 823
    .end local v2    # "di":Lcom/lenovo/safecenter/adapter/DaoImpl;
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    .line 825
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v8, "ydp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sqlite version error:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/data/com.lenovo.safecenter/databases"

    const-string v9, "safepayment.db"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    .local v7, "safepayment":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 830
    iget-object v8, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$13;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-virtual {v8}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060001

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    .line 832
    .restart local v6    # "is":Ljava/io/InputStream;
    const-string v8, "ydp"

    const-string v9, "database copy"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    new-instance v5, Ljava/io/FileOutputStream;

    const-string v8, "/data/data/com.lenovo.safecenter/databases/safepayment.db"

    const/4 v9, 0x0

    invoke-direct {v5, v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 836
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v8

    new-array v0, v8, [B

    .line 837
    .restart local v0    # "buffer":[B
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    .line 838
    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 839
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 840
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 841
    const-string v8, "ydp"

    const-string v9, "database copy  end"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 842
    .end local v0    # "buffer":[B
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "safepayment":Ljava/io/File;
    :catch_2
    move-exception v4

    .line 843
    .local v4, "e1":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 844
    const-string v8, "ydp"

    const-string v9, "database copy  error"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 819
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "e1":Ljava/lang/Exception;
    .restart local v2    # "di":Lcom/lenovo/safecenter/adapter/DaoImpl;
    .restart local v6    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v3

    .line 820
    .local v3, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0
.end method
