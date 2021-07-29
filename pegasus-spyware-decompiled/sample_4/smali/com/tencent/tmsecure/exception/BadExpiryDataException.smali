.class public final Lcom/tencent/tmsecure/exception/BadExpiryDataException;
.super Ljava/lang/IllegalArgumentException;


# static fields
.field private static final a:J = 0x68c391b6637d0375L

.field private static final b:Ljava/lang/String; = "Bad expiry data"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Bad expiry data"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-void
.end method
