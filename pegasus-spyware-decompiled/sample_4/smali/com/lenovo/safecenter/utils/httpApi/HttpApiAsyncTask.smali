.class public Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;
.super Landroid/os/AsyncTask;
.source "HttpApiAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final BUSSINESS_ERROR:I = 0x262

.field public static final TIMEOUT_ERROR:I = 0x258


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;

.field private d:Ljava/lang/Object;

.field private e:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;Ljava/lang/Object;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # I
    .param p3, "listener"    # Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;
    .param p4, "params"    # Ljava/lang/Object;

    .prologue
    const/16 v3, 0x1388

    .line 31
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->a:Landroid/content/Context;

    .line 33
    iput p2, p0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->b:I

    .line 34
    iput-object p3, p0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->c:Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;

    .line 35
    iput-object p4, p0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->d:Ljava/lang/Object;

    .line 36
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->e:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 37
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->e:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.connection.timeout"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 39
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->e:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.socket.timeout"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 40
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 19
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/16 v10, 0x258

    .line 44
    iget-object v7, p0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/lenovo/safecenter/utils/WflUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 45
    const-string v7, "wu0wu"

    const-string v8, "<<<HttpApiAsyncTask doInBackground no net can used...>>>"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v5, 0x0

    .line 90
    :goto_0
    return-object v5

    .line 49
    :cond_0
    iget v7, p0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->b:I

    const/16 v8, 0x3e7

    if-ne v7, v8, :cond_1

    .line 51
    iget-object v7, p0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/lenovo/safecenter/AppsManager/DownApkManager;->parseNewApk(Landroid/content/Context;)V

    .line 53
    iget-object v7, p0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/lenovo/safecenter/AppsManager/DownApkManager;->praseTop100(Landroid/content/Context;)V

    .line 54
    iget v7, p0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->b:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 56
    :cond_1
    const-string v7, "wu0wu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<<<HttpApiAsyncTask doInBackground >>> mRequestAction="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->b:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    sget-object v7, Lcom/lenovo/safecenter/utils/httpApi/LeSafeAPI;->API_URLS:[Ljava/lang/String;

    iget v8, p0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->b:I

    aget-object v3, v7, v8

    .line 60
    .local v3, "requestUrl":Ljava/lang/String;
    iget-object v7, p0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->a:Landroid/content/Context;

    iget v8, p0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->b:I

    iget-object v9, p0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->d:Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/lenovo/safecenter/utils/httpApi/ApiRequestFactory;->getRequestEntity(Landroid/content/Context;ILjava/lang/Object;)Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 64
    .local v2, "requestEntity":Lorg/apache/http/HttpEntity;
    const/4 v5, 0x0

    .line 65
    .local v5, "result":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 66
    .local v4, "response":Lorg/apache/http/HttpResponse;
    iget v7, p0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->b:I

    iget-object v8, p0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->d:Ljava/lang/Object;

    invoke-static {v3, v7, v2, v8}, Lcom/lenovo/safecenter/utils/httpApi/ApiRequestFactory;->getRequest(Ljava/lang/String;ILorg/apache/http/HttpEntity;Ljava/lang/Object;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v1

    .line 70
    .local v1, "request":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    const-string v7, "wu0wu"

    const-string v8, "<<<HttpApiAsyncTask doInBackground >>> start mClient.execute "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v7, p0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->e:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v7, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 73
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 75
    .local v6, "statusCode":I
    const-string v7, "wu0wu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<<<HttpApiAsyncTask doInBackground >>> requestUrl "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " statusCode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/16 v7, 0xc8

    if-eq v7, v6, :cond_2

    .line 80
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_0

    .line 82
    :cond_2
    iget-object v7, p0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->a:Landroid/content/Context;

    iget v8, p0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->b:I

    invoke-static {v7, v8, v4}, Lcom/lenovo/safecenter/utils/httpApi/ApiResponseFactory;->getResponse(Landroid/content/Context;ILorg/apache/http/HttpResponse;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 84
    goto/16 :goto_0

    .line 85
    .end local v6    # "statusCode":I
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 87
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_0

    .line 88
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 89
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 90
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 96
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->c:Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;

    if-nez v1, :cond_0

    .line 121
    :goto_0
    return-void

    .line 104
    :cond_0
    if-nez p1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->c:Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;

    iget v2, p0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->b:I

    const/16 v3, 0x262

    invoke-interface {v1, v2, v3}, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;->onError(II)V

    goto :goto_0

    .line 107
    :cond_1
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    move-object v0, p1

    .line 108
    check-cast v0, Ljava/lang/Integer;

    .line 109
    .local v0, "statusCode":Ljava/lang/Integer;
    iget v1, p0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->b:I

    if-nez v1, :cond_2

    .line 110
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x130

    if-eq v1, v2, :cond_3

    .line 111
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->c:Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;

    iget v2, p0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->b:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;->onError(II)V

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_3

    .line 115
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->c:Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;

    iget v2, p0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->b:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;->onError(II)V

    goto :goto_0

    .line 119
    .end local v0    # "statusCode":Ljava/lang/Integer;
    :cond_3
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->c:Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;

    iget v2, p0, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask;->b:I

    invoke-interface {v1, v2, p1}, Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;->onSuccess(ILjava/lang/Object;)V

    .line 120
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0
.end method
