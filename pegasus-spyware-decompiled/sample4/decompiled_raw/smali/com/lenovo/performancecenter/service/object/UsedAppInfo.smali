.class public Lcom/lenovo/performancecenter/service/object/UsedAppInfo;
.super Ljava/lang/Object;
.source "UsedAppInfo.java"


# instance fields
.field public memroy:I

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "memory"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/lenovo/performancecenter/service/object/UsedAppInfo;->packageName:Ljava/lang/String;

    .line 16
    iput p2, p0, Lcom/lenovo/performancecenter/service/object/UsedAppInfo;->memroy:I

    .line 17
    return-void
.end method
