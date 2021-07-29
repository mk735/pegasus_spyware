.class public Lcom/lenovo/safecenter/support/SecurityService$CallInfo;
.super Ljava/lang/Object;
.source "SecurityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/support/SecurityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallInfo"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/support/SecurityService;

.field public isAnswer:Z

.field public isAnswerTime:J

.field public mBlcok:Z

.field public mDeleteLog:Z

.field public mNumber:Ljava/lang/String;

.field public mRingTime:J

.field public mType:I

.field public mVipCode:Z


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/support/SecurityService;)V
    .locals 0

    .prologue
    .line 873
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
