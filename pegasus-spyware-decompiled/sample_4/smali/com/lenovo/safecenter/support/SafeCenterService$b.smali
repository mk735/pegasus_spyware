.class final Lcom/lenovo/safecenter/support/SafeCenterService$b;
.super Ljava/lang/Object;
.source "SafeCenterService.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/support/SafeCenterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/lenovo/safecenter/support/SafeCenterService;

.field private c:Landroid/net/LocalSocket;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/support/SafeCenterService;Landroid/net/LocalSocket;)V
    .locals 1
    .param p2, "socket"    # Landroid/net/LocalSocket;

    .prologue
    .line 718
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SafeCenterService$b;->b:Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SafeCenterService$b;->c:Landroid/net/LocalSocket;

    .line 717
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/support/SafeCenterService$b;->a:Z

    .line 719
    iput-object p2, p0, Lcom/lenovo/safecenter/support/SafeCenterService$b;->c:Landroid/net/LocalSocket;

    .line 720
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 723
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SafeCenterService$b;->b:Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-static {v0}, Lcom/lenovo/safecenter/support/SafeCenterService;->f(Lcom/lenovo/safecenter/support/SafeCenterService;)V

    .line 727
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SafeCenterService$b;->c:Landroid/net/LocalSocket;

    if-eqz v0, :cond_1

    .line 728
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/lenovo/safecenter/support/SafeCenterService$b;->a:Z

    if-eqz v0, :cond_1

    .line 730
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SafeCenterService$b;->c:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SafeCenterService$b;->b:Lcom/lenovo/safecenter/support/SafeCenterService;

    iget-object v1, p0, Lcom/lenovo/safecenter/support/SafeCenterService$b;->c:Landroid/net/LocalSocket;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/SafeCenterService;->excFromClient(Landroid/net/LocalSocket;)V

    .line 732
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/support/SafeCenterService$b;->a:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 735
    :catch_0
    move-exception v0

    goto :goto_0

    .line 738
    :cond_1
    return-void
.end method
