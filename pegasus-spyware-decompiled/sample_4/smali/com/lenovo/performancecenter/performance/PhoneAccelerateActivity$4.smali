.class final Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$4;
.super Ljava/lang/Thread;
.source "PhoneAccelerateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$4;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$4;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->s(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)V

    .line 421
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$4;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-virtual {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->clearAllCache(Landroid/content/pm/PackageManager;)V

    .line 422
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$4;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;->k(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 423
    return-void
.end method
