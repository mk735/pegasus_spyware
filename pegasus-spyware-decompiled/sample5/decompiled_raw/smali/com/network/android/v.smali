.class public final Lcom/network/android/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private a:Landroid/location/Location;

.field private b:J

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "LocationListener"

    invoke-direct {p0, v0}, Lcom/network/android/v;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/network/android/v;->a:Landroid/location/Location;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/network/android/v;->b:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/network/android/v;->c:Z

    iput-object p1, p0, Lcom/network/android/v;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/network/android/v;->a:Landroid/location/Location;

    return-object v0
.end method

.method public final a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/network/android/v;->c:Z

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/network/android/v;->a:Landroid/location/Location;

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/network/android/v;->a:Landroid/location/Location;

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/network/android/v;->c:Z

    return v0
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 3

    :try_start_0
    iput-object p1, p0, Lcom/network/android/v;->a:Landroid/location/Location;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocationListener onLocationChanged LocationListener:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/network/android/v;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", provider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LocationListener onLocationChanged Exception- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
