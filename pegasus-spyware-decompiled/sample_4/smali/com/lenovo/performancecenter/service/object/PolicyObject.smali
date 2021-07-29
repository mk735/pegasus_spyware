.class public Lcom/lenovo/performancecenter/service/object/PolicyObject;
.super Ljava/lang/Object;
.source "PolicyObject.java"


# static fields
.field public static final Describe:Ljava/lang/String; = "com.lenovo.performancecenter.service.object.PolicyObject"

.field public static sortBy:Z

.field public static totleRuningCount:I


# instance fields
.field public cpuTimeSpace:J

.field public impLevel:J

.field public label:Ljava/lang/String;

.field public lastCpuTime:J

.field public lastQianTaiCputime:J

.field public pid:I

.field public pkgName:Ljava/lang/String;

.field public proName:Ljava/lang/String;

.field public selfRunningCount:I

.field public totleQianTaiCpuTime:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "proName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, -0x1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyObject;->lastQianTaiCputime:J

    .line 18
    iput-wide v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyObject;->cpuTimeSpace:J

    .line 21
    iput p1, p0, Lcom/lenovo/performancecenter/service/object/PolicyObject;->pid:I

    .line 22
    iput-object p2, p0, Lcom/lenovo/performancecenter/service/object/PolicyObject;->pkgName:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/lenovo/performancecenter/service/object/PolicyObject;->label:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/lenovo/performancecenter/service/object/PolicyObject;->proName:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/lenovo/performancecenter/service/object/PolicyObject;)I
    .locals 7
    .param p1, "obj"    # Lcom/lenovo/performancecenter/service/object/PolicyObject;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 40
    sget-boolean v3, Lcom/lenovo/performancecenter/service/object/PolicyObject;->sortBy:Z

    if-eqz v3, :cond_3

    .line 41
    iget-wide v3, p0, Lcom/lenovo/performancecenter/service/object/PolicyObject;->cpuTimeSpace:J

    iget-wide v5, p1, Lcom/lenovo/performancecenter/service/object/PolicyObject;->cpuTimeSpace:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    iget-wide v3, p0, Lcom/lenovo/performancecenter/service/object/PolicyObject;->cpuTimeSpace:J

    iget-wide v5, p1, Lcom/lenovo/performancecenter/service/object/PolicyObject;->cpuTimeSpace:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    move v0, v1

    .line 44
    goto :goto_0

    :cond_2
    move v0, v2

    .line 46
    goto :goto_0

    .line 49
    :cond_3
    iget-wide v3, p0, Lcom/lenovo/performancecenter/service/object/PolicyObject;->impLevel:J

    iget-wide v5, p1, Lcom/lenovo/performancecenter/service/object/PolicyObject;->impLevel:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 51
    iget-wide v3, p0, Lcom/lenovo/performancecenter/service/object/PolicyObject;->impLevel:J

    iget-wide v5, p1, Lcom/lenovo/performancecenter/service/object/PolicyObject;->impLevel:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    move v0, v1

    .line 52
    goto :goto_0

    :cond_4
    move v0, v2

    .line 54
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyObject;->pkgName:Ljava/lang/String;

    check-cast p1, Lcom/lenovo/performancecenter/service/object/PolicyObject;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/lenovo/performancecenter/service/object/PolicyObject;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x1

    .line 35
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/performancecenter/service/object/PolicyObject;->pkgName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
