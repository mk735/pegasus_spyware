.class final Lcom/lenovo/safecenter/support/SecurityService$3;
.super Ljava/lang/Thread;
.source "SecurityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/support/SecurityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/support/SecurityService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/support/SecurityService;)V
    .locals 0

    .prologue
    .line 577
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SecurityService$3;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 580
    :try_start_0
    new-instance v0, Lcom/lenovo/safecenter/support/SecurityService$3$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/support/SecurityService$3$1;-><init>(Lcom/lenovo/safecenter/support/SecurityService$3;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/SecurityService$3$1;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
