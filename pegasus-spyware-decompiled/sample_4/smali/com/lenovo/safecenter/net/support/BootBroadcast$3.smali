.class final Lcom/lenovo/safecenter/net/support/BootBroadcast$3;
.super Ljava/lang/Thread;
.source "BootBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/net/support/BootBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Lcom/lenovo/safecenter/net/support/BootBroadcast;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/net/support/BootBroadcast;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/lenovo/safecenter/net/support/BootBroadcast$3;->c:Lcom/lenovo/safecenter/net/support/BootBroadcast;

    iput-object p2, p0, Lcom/lenovo/safecenter/net/support/BootBroadcast$3;->a:Landroid/content/Context;

    iput p3, p0, Lcom/lenovo/safecenter/net/support/BootBroadcast$3;->b:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const-wide/16 v1, 0x0

    .line 331
    iget-object v3, p0, Lcom/lenovo/safecenter/net/support/BootBroadcast$3;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getInstance(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    move-result-object v0

    .line 332
    .local v0, "service":Lcom/lenovo/safecenter/net/support/TrafficStatsService;
    iget v9, p0, Lcom/lenovo/safecenter/net/support/BootBroadcast$3;->b:I

    move-wide v3, v1

    move-wide v5, v1

    move-wide v7, v1

    invoke-virtual/range {v0 .. v9}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->insertToApp(JJJJI)V

    .line 333
    const-string v1, "pa"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/safecenter/net/support/BootBroadcast$3;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void
.end method
