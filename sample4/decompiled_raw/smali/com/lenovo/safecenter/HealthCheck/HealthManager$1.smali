.class final Lcom/lenovo/safecenter/HealthCheck/HealthManager$1;
.super Ljava/lang/Object;
.source "HealthManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/HealthCheck/HealthManager;->scan(Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;

.field final synthetic b:Lcom/lenovo/safecenter/HealthCheck/HealthManager;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/HealthCheck/HealthManager;Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager$1;->b:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iput-object p2, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager$1;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager$1;->b:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->a(Lcom/lenovo/safecenter/HealthCheck/HealthManager;Z)Z

    .line 92
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager$1;->b:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager$1;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->a(Lcom/lenovo/safecenter/HealthCheck/HealthManager;Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;)Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;

    .line 93
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager$1;->b:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->a(Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 94
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager$1;->b:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->a(Lcom/lenovo/safecenter/HealthCheck/HealthManager;Z)Z

    .line 95
    return-void
.end method
