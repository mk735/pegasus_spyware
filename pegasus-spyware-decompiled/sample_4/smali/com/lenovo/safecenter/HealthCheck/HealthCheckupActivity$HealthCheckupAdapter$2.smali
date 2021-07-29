.class final Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter$2;
.super Ljava/lang/Object;
.source "HealthCheckupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

.field final synthetic b:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V
    .locals 0

    .prologue
    .line 929
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter$2;->b:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;

    iput-object p2, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter$2;->a:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 933
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter$2;->b:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;

    iget-object v0, v0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->l(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter$2;->a:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget v1, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getHealthCheckItemByKey(I)Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->click()V

    .line 935
    return-void
.end method
