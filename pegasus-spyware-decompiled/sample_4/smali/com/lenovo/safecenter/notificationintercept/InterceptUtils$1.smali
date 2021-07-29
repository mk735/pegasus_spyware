.class final Lcom/lenovo/safecenter/notificationintercept/InterceptUtils$1;
.super Ljava/lang/Thread;
.source "InterceptUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->appInit(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 619
    iput-object p1, p0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 621
    new-instance v0, Lcom/lenovo/safecenter/notificationintercept/support/ScanUtilsImpl;

    invoke-direct {v0}, Lcom/lenovo/safecenter/notificationintercept/support/ScanUtilsImpl;-><init>()V

    .line 622
    .local v0, "utils":Lcom/lenovo/safecenter/notificationintercept/support/IScanUtils;
    iget-object v1, p0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils$1;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/lenovo/safecenter/notificationintercept/support/IScanUtils;->notifyScanAll(Landroid/content/Context;)V

    .line 623
    return-void
.end method
