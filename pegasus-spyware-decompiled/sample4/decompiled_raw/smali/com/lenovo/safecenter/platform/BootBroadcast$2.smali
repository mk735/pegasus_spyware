.class final Lcom/lenovo/safecenter/platform/BootBroadcast$2;
.super Ljava/lang/Thread;
.source "BootBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/platform/BootBroadcast;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/lenovo/safecenter/platform/BootBroadcast;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/platform/BootBroadcast;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/lenovo/safecenter/platform/BootBroadcast$2;->b:Lcom/lenovo/safecenter/platform/BootBroadcast;

    iput-object p2, p0, Lcom/lenovo/safecenter/platform/BootBroadcast$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/BootBroadcast$2;->b:Lcom/lenovo/safecenter/platform/BootBroadcast;

    iget-object v1, p0, Lcom/lenovo/safecenter/platform/BootBroadcast$2;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/platform/BootBroadcast;->b(Lcom/lenovo/safecenter/platform/BootBroadcast;Landroid/content/Context;)V

    .line 142
    return-void
.end method
