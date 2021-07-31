.class public Lcom/lenovo/performancecenter/framework/PolicyService$LocalBinder;
.super Landroid/os/Binder;
.source "PolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/framework/PolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/framework/PolicyService;


# direct methods
.method public constructor <init>(Lcom/lenovo/performancecenter/framework/PolicyService;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lenovo/performancecenter/framework/PolicyService$LocalBinder;->a:Lcom/lenovo/performancecenter/framework/PolicyService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/lenovo/performancecenter/framework/PolicyService;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/performancecenter/framework/PolicyService$LocalBinder;->a:Lcom/lenovo/performancecenter/framework/PolicyService;

    return-object v0
.end method
