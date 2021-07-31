.class public Ltms/ar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lcom/tencent/tmsecure/module/antitheft/LocationResolver;


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecure/module/antitheft/LocationResolver;)V
    .locals 0

    iput-object p1, p0, Ltms/ar;->a:Lcom/tencent/tmsecure/module/antitheft/LocationResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Ltms/ar;->a:Lcom/tencent/tmsecure/module/antitheft/LocationResolver;

    invoke-static {v0}, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->b(Lcom/tencent/tmsecure/module/antitheft/LocationResolver;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltms/ar;->a:Lcom/tencent/tmsecure/module/antitheft/LocationResolver;

    invoke-static {v0}, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->d(Lcom/tencent/tmsecure/module/antitheft/LocationResolver;)Lcom/tencent/tmsecure/module/antitheft/LocationResolver$LocCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/tmsecure/module/antitheft/LocationResolver$LocCallback;->gotLocation(Landroid/location/Location;)V

    iget-object v0, p0, Ltms/ar;->a:Lcom/tencent/tmsecure/module/antitheft/LocationResolver;

    invoke-static {v0}, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->e(Lcom/tencent/tmsecure/module/antitheft/LocationResolver;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Ltms/ar;->a:Lcom/tencent/tmsecure/module/antitheft/LocationResolver;

    invoke-static {v0}, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->e(Lcom/tencent/tmsecure/module/antitheft/LocationResolver;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Ltms/ar;->a:Lcom/tencent/tmsecure/module/antitheft/LocationResolver;

    invoke-static {v1}, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->g(Lcom/tencent/tmsecure/module/antitheft/LocationResolver;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
