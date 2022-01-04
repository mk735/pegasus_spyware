.class final Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$3;
.super Ljava/lang/Object;
.source "HealthCheckupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$3;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 529
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$3;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->k(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)V

    .line 530
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$3;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->finish()V

    .line 531
    return-void
.end method
