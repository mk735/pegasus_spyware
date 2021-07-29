.class public Lcom/lenovo/performancecenter/framework/CustomerWhiteListService;
.super Landroid/app/Service;
.source "CustomerWhiteListService.java"


# instance fields
.field private final a:Lcom/lenovo/performancecenter/framework/ICustomerWhiteListService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 23
    new-instance v0, Lcom/lenovo/performancecenter/framework/CustomerWhiteListService$1;

    invoke-direct {v0, p0}, Lcom/lenovo/performancecenter/framework/CustomerWhiteListService$1;-><init>(Lcom/lenovo/performancecenter/framework/CustomerWhiteListService;)V

    iput-object v0, p0, Lcom/lenovo/performancecenter/framework/CustomerWhiteListService;->a:Lcom/lenovo/performancecenter/framework/ICustomerWhiteListService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/performancecenter/framework/CustomerWhiteListService;->a:Lcom/lenovo/performancecenter/framework/ICustomerWhiteListService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 15
    return-void
.end method
