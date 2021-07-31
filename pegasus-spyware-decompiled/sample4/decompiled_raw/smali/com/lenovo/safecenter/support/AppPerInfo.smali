.class public Lcom/lenovo/safecenter/support/AppPerInfo;
.super Ljava/lang/Object;
.source "AppPerInfo.java"


# instance fields
.field public forbidCount:I

.field public forbidmes:Ljava/lang/String;

.field public hasNotice:Z

.field public isTrust:Z

.field public isTurstInt:I

.field public isUpload:I

.field public pkgName:Ljava/lang/String;

.field public totalCount:I

.field public totaldmes:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/lenovo/safecenter/support/AppPerInfo;->totalCount:I

    .line 10
    iput v0, p0, Lcom/lenovo/safecenter/support/AppPerInfo;->forbidCount:I

    .line 14
    iput-boolean v0, p0, Lcom/lenovo/safecenter/support/AppPerInfo;->isTrust:Z

    .line 16
    iput v0, p0, Lcom/lenovo/safecenter/support/AppPerInfo;->isUpload:I

    .line 18
    iput v0, p0, Lcom/lenovo/safecenter/support/AppPerInfo;->isTurstInt:I

    .line 20
    iput-boolean v0, p0, Lcom/lenovo/safecenter/support/AppPerInfo;->hasNotice:Z

    return-void
.end method
