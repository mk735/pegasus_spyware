.class final Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast$1;
.super Ljava/lang/Thread;
.source "InputMethodChangeBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast$1;->b:Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;

    iput-object p2, p0, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 38
    iget-object v5, p0, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast$1;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 39
    .local v2, "is":Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 42
    .local v3, "localBufferedReader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "buffer":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 43
    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 44
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, "temp":[Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/safecenter/support/SecurityService;->mSIL()Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, v4, v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    .end local v0    # "buffer":Ljava/lang/String;
    .end local v4    # "temp":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 54
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 48
    .restart local v0    # "buffer":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 49
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
