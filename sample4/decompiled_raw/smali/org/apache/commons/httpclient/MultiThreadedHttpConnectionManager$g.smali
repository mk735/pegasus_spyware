.class final Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;
.super Ljava/lang/Object;
.source "MultiThreadedHttpConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# instance fields
.field public a:Ljava/lang/Thread;

.field public b:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;

.field public c:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1056
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1066
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;->c:Z

    return-void
.end method

.method constructor <init>(B)V
    .locals 0

    .prologue
    .line 1056
    invoke-direct {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$g;-><init>()V

    return-void
.end method
