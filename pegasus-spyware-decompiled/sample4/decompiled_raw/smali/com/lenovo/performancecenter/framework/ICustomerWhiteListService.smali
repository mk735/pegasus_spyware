.class public interface abstract Lcom/lenovo/performancecenter/framework/ICustomerWhiteListService;
.super Ljava/lang/Object;
.source "ICustomerWhiteListService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/performancecenter/framework/ICustomerWhiteListService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getCustomerWhiteList()Ljava/util/List;
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
.end method
