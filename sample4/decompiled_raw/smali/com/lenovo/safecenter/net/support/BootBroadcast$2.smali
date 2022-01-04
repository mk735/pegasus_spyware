.class final Lcom/lenovo/safecenter/net/support/BootBroadcast$2;
.super Ljava/lang/Thread;
.source "BootBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/net/support/BootBroadcast;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/lenovo/safecenter/net/support/BootBroadcast;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/net/support/BootBroadcast;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/lenovo/safecenter/net/support/BootBroadcast$2;->b:Lcom/lenovo/safecenter/net/support/BootBroadcast;

    iput-object p2, p0, Lcom/lenovo/safecenter/net/support/BootBroadcast$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/lenovo/safecenter/net/support/BootBroadcast$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->trafficForceUpdate(Landroid/content/Context;)V

    .line 290
    return-void
.end method
