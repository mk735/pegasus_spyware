.class final Lcom/lenovo/performancecenter/framework/CustomerWhiteListService$1;
.super Lcom/lenovo/performancecenter/framework/ICustomerWhiteListService$Stub;
.source "CustomerWhiteListService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/framework/CustomerWhiteListService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/framework/CustomerWhiteListService;


# direct methods
.method constructor <init>(Lcom/lenovo/performancecenter/framework/CustomerWhiteListService;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/lenovo/performancecenter/framework/CustomerWhiteListService$1;->a:Lcom/lenovo/performancecenter/framework/CustomerWhiteListService;

    invoke-direct {p0}, Lcom/lenovo/performancecenter/framework/ICustomerWhiteListService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCustomerWhiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/performancecenter/framework/CustomerWhiteListService$1;->a:Lcom/lenovo/performancecenter/framework/CustomerWhiteListService;

    invoke-static {v0}, Lcom/lenovo/performancecenter/framework/DataLayerManager;->getUserWhiteList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
