.class public Lcom/lenovo/safecenter/net/support/TrafficDate;
.super Ljava/lang/Object;
.source "TrafficDate.java"


# instance fields
.field public date:Ljava/lang/String;

.field public height:I

.field public total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "total"    # I
    .param p3, "height"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/lenovo/safecenter/net/support/TrafficDate;->date:Ljava/lang/String;

    .line 14
    iput p2, p0, Lcom/lenovo/safecenter/net/support/TrafficDate;->total:I

    .line 15
    iput p3, p0, Lcom/lenovo/safecenter/net/support/TrafficDate;->height:I

    .line 16
    return-void
.end method
