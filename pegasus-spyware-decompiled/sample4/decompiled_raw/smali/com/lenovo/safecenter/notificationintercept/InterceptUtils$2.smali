.class final Lcom/lenovo/safecenter/notificationintercept/InterceptUtils$2;
.super Ljava/lang/Thread;
.source "InterceptUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->appInstall(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 634
    iput-object p1, p0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 636
    new-instance v0, Lcom/lenovo/safecenter/notificationintercept/support/ScanUtilsImpl;

    invoke-direct {v0}, Lcom/lenovo/safecenter/notificationintercept/support/ScanUtilsImpl;-><init>()V

    .line 637
    .local v0, "utils":Lcom/lenovo/safecenter/notificationintercept/support/IScanUtils;
    iget-object v1, p0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils$2;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/lenovo/safecenter/notificationintercept/support/IScanUtils;->notifyScanSingle(Landroid/content/Context;Ljava/lang/String;)V

    .line 638
    return-void
.end method
