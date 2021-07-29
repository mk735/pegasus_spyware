.class final Lcom/lenovo/safecenter/platform/BootBroadcast$1;
.super Ljava/lang/Thread;
.source "BootBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/platform/BootBroadcast;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/lenovo/safecenter/platform/BootBroadcast;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/platform/BootBroadcast;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/lenovo/safecenter/platform/BootBroadcast$1;->b:Lcom/lenovo/safecenter/platform/BootBroadcast;

    iput-object p2, p0, Lcom/lenovo/safecenter/platform/BootBroadcast$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 103
    iget-object v4, p0, Lcom/lenovo/safecenter/platform/BootBroadcast$1;->b:Lcom/lenovo/safecenter/platform/BootBroadcast;

    iget-object v5, p0, Lcom/lenovo/safecenter/platform/BootBroadcast$1;->a:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/lenovo/safecenter/platform/BootBroadcast;->a(Lcom/lenovo/safecenter/platform/BootBroadcast;Landroid/content/Context;)V

    .line 104
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_0

    .line 106
    iget-object v4, p0, Lcom/lenovo/safecenter/platform/BootBroadcast$1;->b:Lcom/lenovo/safecenter/platform/BootBroadcast;

    new-instance v5, Lcom/lenovo/safecenter/adapter/DaoImpl;

    new-instance v6, Lcom/lenovo/safecenter/adapter/DbAdapter;

    iget-object v7, p0, Lcom/lenovo/safecenter/platform/BootBroadcast$1;->a:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/lenovo/safecenter/adapter/DbAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v5, v6}, Lcom/lenovo/safecenter/adapter/DaoImpl;-><init>(Lcom/lenovo/safecenter/adapter/DbAdapter;)V

    invoke-static {v4, v5}, Lcom/lenovo/safecenter/platform/BootBroadcast;->a(Lcom/lenovo/safecenter/platform/BootBroadcast;Lcom/lenovo/safecenter/adapter/DaoImpl;)Lcom/lenovo/safecenter/adapter/DaoImpl;

    .line 107
    iget-object v4, p0, Lcom/lenovo/safecenter/platform/BootBroadcast$1;->b:Lcom/lenovo/safecenter/platform/BootBroadcast;

    invoke-static {v4}, Lcom/lenovo/safecenter/platform/BootBroadcast;->a(Lcom/lenovo/safecenter/platform/BootBroadcast;)Lcom/lenovo/safecenter/adapter/DaoImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/safecenter/adapter/DaoImpl;->queryCount()I

    move-result v4

    if-gtz v4, :cond_0

    .line 108
    const-string v4, "ydp"

    const-string v5, "create sayment database!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v4, p0, Lcom/lenovo/safecenter/platform/BootBroadcast$1;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 111
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v4, "/data/data/com.lenovo.safecenter/databases/safepayment.db"

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 112
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v4

    new-array v0, v4, [B

    .line 113
    .local v0, "buffer":[B
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    .line 114
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 115
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 116
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    .end local v0    # "buffer":[B
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-void

    .line 117
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 119
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 120
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
