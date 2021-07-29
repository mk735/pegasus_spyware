.class final Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache$1;
.super Ljava/lang/Object;
.source "HealthClearCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->scan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->a(Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
