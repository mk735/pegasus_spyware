.class final Lcom/lenovo/safecenter/support/SecurityService$3$1;
.super Ljava/lang/Thread;
.source "SecurityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/support/SecurityService$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/support/SecurityService$3;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/support/SecurityService$3;)V
    .locals 0

    .prologue
    .line 580
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SecurityService$3$1;->a:Lcom/lenovo/safecenter/support/SecurityService$3;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    .line 581
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService$3$1;->a:Lcom/lenovo/safecenter/support/SecurityService$3;

    iget-object v0, v0, Lcom/lenovo/safecenter/support/SecurityService$3;->a:Lcom/lenovo/safecenter/support/SecurityService;

    iget-object v0, v0, Lcom/lenovo/safecenter/support/SecurityService;->di:Lcom/lenovo/safecenter/adapter/DaoImpl;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/DaoImpl;->queryCount()I

    move-result v0

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_1

    .line 582
    const-string v0, "ydp"

    const-string v1, "create sayment database!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService$3$1;->a:Lcom/lenovo/safecenter/support/SecurityService$3;

    iget-object v0, v0, Lcom/lenovo/safecenter/support/SecurityService$3;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/SecurityService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    .line 584
    .local v8, "is":Ljava/io/InputStream;
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 587
    .local v9, "localBufferedReader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "buffer":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 588
    const-string v0, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 589
    const-string v0, ","

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 590
    .local v10, "temp":[Ljava/lang/String;
    const-string v0, "ydp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inster.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService$3$1;->a:Lcom/lenovo/safecenter/support/SecurityService$3;

    iget-object v0, v0, Lcom/lenovo/safecenter/support/SecurityService$3;->a:Lcom/lenovo/safecenter/support/SecurityService;

    iget-object v0, v0, Lcom/lenovo/safecenter/support/SecurityService;->di:Lcom/lenovo/safecenter/adapter/DaoImpl;

    const/4 v1, 0x0

    aget-object v1, v10, v1

    const/4 v2, 0x1

    aget-object v2, v10, v2

    const/4 v3, 0x2

    aget-object v3, v10, v3

    const/4 v4, 0x3

    aget-object v4, v10, v4

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/safecenter/adapter/DaoImpl;->insterForSafeApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 596
    .end local v6    # "buffer":Ljava/lang/String;
    .end local v10    # "temp":[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 598
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 602
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v9    # "localBufferedReader":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService$3$1;->a:Lcom/lenovo/safecenter/support/SecurityService$3;

    iget-object v0, v0, Lcom/lenovo/safecenter/support/SecurityService$3;->a:Lcom/lenovo/safecenter/support/SecurityService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.safecenter.boot.safeinput"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SecurityService;->sendBroadcast(Landroid/content/Intent;)V

    .line 603
    return-void

    .line 594
    .restart local v6    # "buffer":Ljava/lang/String;
    .restart local v8    # "is":Ljava/io/InputStream;
    .restart local v9    # "localBufferedReader":Ljava/io/BufferedReader;
    :cond_2
    :try_start_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 595
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
