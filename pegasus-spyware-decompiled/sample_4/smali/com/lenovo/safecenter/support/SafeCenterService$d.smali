.class final Lcom/lenovo/safecenter/support/SafeCenterService$d;
.super Ljava/lang/Object;
.source "SafeCenterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/support/SafeCenterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field a:J

.field b:I

.field c:I

.field d:I

.field final synthetic e:Lcom/lenovo/safecenter/support/SafeCenterService;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/support/SafeCenterService;JIII)V
    .locals 0
    .param p2, "time"    # J
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "action"    # I

    .prologue
    .line 1115
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SafeCenterService$d;->e:Lcom/lenovo/safecenter/support/SafeCenterService;

    .line 1116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1117
    iput-wide p2, p0, Lcom/lenovo/safecenter/support/SafeCenterService$d;->a:J

    .line 1118
    iput p4, p0, Lcom/lenovo/safecenter/support/SafeCenterService$d;->b:I

    .line 1119
    iput p5, p0, Lcom/lenovo/safecenter/support/SafeCenterService$d;->c:I

    .line 1120
    iput p6, p0, Lcom/lenovo/safecenter/support/SafeCenterService$d;->d:I

    .line 1121
    return-void
.end method
