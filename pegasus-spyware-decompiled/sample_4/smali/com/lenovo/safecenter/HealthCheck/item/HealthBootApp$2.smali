.class final Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp$2;
.super Ljava/lang/Object;
.source "HealthBootApp.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->manual()V
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
.field final synthetic a:Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp$2;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;

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
    .line 162
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp$2;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->b(Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate;->getBootCountForHealth(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
