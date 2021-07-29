.class final Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$e;
.super Lorg/apache/commons/httpclient/HttpConnection;
.source "MultiThreadedHttpConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field public b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lorg/apache/commons/httpclient/HostConfiguration;)V
    .locals 2
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;

    .prologue
    .line 1145
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpConnection;-><init>(Lorg/apache/commons/httpclient/HostConfiguration;)V

    .line 1139
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->c()Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$e;->b:Ljava/lang/ref/WeakReference;

    .line 1146
    return-void
.end method
