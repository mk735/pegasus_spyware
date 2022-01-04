.class final Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;
.super Ljava/lang/Object;
.source "MultiThreadedHttpConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public a:Lorg/apache/commons/httpclient/HostConfiguration;

.field public b:Ljava/util/LinkedList;

.field public c:Ljava/util/LinkedList;

.field public d:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1043
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;->b:Ljava/util/LinkedList;

    .line 1046
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;->c:Ljava/util/LinkedList;

    .line 1049
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;->d:I

    return-void
.end method

.method constructor <init>(B)V
    .locals 0

    .prologue
    .line 1038
    invoke-direct {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$c;-><init>()V

    return-void
.end method
