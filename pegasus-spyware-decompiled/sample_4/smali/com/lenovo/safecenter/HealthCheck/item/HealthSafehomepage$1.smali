.class final Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage$1;
.super Ljava/lang/Object;
.source "HealthSafehomepage.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->scan()V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;

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
    .line 54
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->a(Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/support/CMDHelper;->homePageOn(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
