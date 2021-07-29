.class final Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit$1;
.super Ljava/lang/Object;
.source "HealthNoSetTrafficLimit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit$1;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->a(Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->statsTrafficMobile(Landroid/content/Context;)V

    .line 179
    return-void
.end method
