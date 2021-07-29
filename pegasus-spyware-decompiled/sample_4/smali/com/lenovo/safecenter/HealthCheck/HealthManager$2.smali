.class final Lcom/lenovo/safecenter/HealthCheck/HealthManager$2;
.super Ljava/lang/Object;
.source "HealthManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/HealthCheck/HealthManager;->optimize(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/lenovo/safecenter/HealthCheck/HealthManager;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/HealthCheck/HealthManager;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager$2;->b:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iput-object p2, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager$2;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager$2;->b:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->a(Lcom/lenovo/safecenter/HealthCheck/HealthManager;Z)Z

    .line 109
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager$2;->b:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager$2;->a:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->a(Lcom/lenovo/safecenter/HealthCheck/HealthManager;Ljava/util/ArrayList;)V

    .line 110
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager$2;->b:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->a(Lcom/lenovo/safecenter/HealthCheck/HealthManager;Z)Z

    .line 111
    return-void
.end method
