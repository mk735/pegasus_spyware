.class public abstract Lcom/network/android/monitor/observer/r;
.super Lcom/network/android/monitor/a/d;

# interfaces
.implements Lcom/network/android/monitor/a/b;


# instance fields
.field public c:Ljava/util/LinkedHashMap;

.field public d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/network/android/monitor/a/d;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/network/android/monitor/observer/r;->c:Ljava/util/LinkedHashMap;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/network/android/monitor/observer/r;->d:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public a(Lcom/network/e/a/a;)V
    .locals 0

    return-void
.end method

.method public abstract a()[Ljava/lang/String;
.end method
