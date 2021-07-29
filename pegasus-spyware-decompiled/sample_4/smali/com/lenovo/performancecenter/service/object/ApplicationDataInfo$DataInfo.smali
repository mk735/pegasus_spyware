.class public Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo$DataInfo;
.super Ljava/lang/Object;
.source "ApplicationDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataInfo"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;

.field public cachesize:J

.field public codesize:J

.field public datasize:J

.field public totalsize:J


# direct methods
.method private constructor <init>(Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;JJJJ)V
    .locals 2
    .param p2, "cachesize"    # J
    .param p4, "datasize"    # J
    .param p6, "codesize"    # J
    .param p8, "totalsize"    # J

    .prologue
    const-wide/16 v0, -0x1

    .line 37
    iput-object p1, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo$DataInfo;->a:Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide v0, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo$DataInfo;->cachesize:J

    .line 45
    iput-wide v0, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo$DataInfo;->datasize:J

    .line 46
    iput-wide v0, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo$DataInfo;->codesize:J

    .line 47
    iput-wide v0, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo$DataInfo;->totalsize:J

    .line 38
    iput-wide p2, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo$DataInfo;->cachesize:J

    .line 39
    iput-wide p4, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo$DataInfo;->datasize:J

    .line 40
    iput-wide p6, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo$DataInfo;->codesize:J

    .line 41
    iput-wide p8, p0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo$DataInfo;->totalsize:J

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;JJJJB)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;
    .param p2, "x1"    # J
    .param p4, "x2"    # J
    .param p6, "x3"    # J
    .param p8, "x4"    # J

    .prologue
    .line 35
    invoke-direct/range {p0 .. p9}, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo$DataInfo;-><init>(Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;JJJJ)V

    return-void
.end method
