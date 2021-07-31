.class public Lcom/tencent/tmsecure/module/netsetting/Rule;
.super Ljava/lang/Object;


# static fields
.field public static final TYPE_HOST:I = 0x2

.field public static final TYPE_UID:I = 0x1

.field public static final VERDICT_ACCEPT:Ljava/lang/String; = "ACCEPT"

.field public static final VERDICT_DROP:Ljava/lang/String; = "DROP"

.field public static final VERDICT_QUEUE:Ljava/lang/String; = "NFQUEUE"


# instance fields
.field public host:Ljava/lang/String;

.field public hostVerdict:Ljava/lang/String;

.field public type:I

.field public uid:I

.field public uidMobileVerdict:Ljava/lang/String;

.field public uidWifiVerdict:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    :cond_0
    return-object v1
.end method
