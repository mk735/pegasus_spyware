.class public Lcom/lenovo/performancecenter/performance/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field public appIcon:Landroid/graphics/Bitmap;

.field public appName:Ljava/lang/String;

.field public canRemove:Z

.field public flag:I

.field public isTitle:Z

.field public isUserApp:Z

.field public memory:I

.field public pkgName:Ljava/lang/String;

.field public procName:Ljava/lang/String;

.field public state:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;II)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "procName"    # Ljava/lang/String;
    .param p4, "appIcon"    # Landroid/graphics/Bitmap;
    .param p5, "state"    # I
    .param p6, "flag"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/AppInfo;->pkgName:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/lenovo/performancecenter/performance/AppInfo;->appName:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/lenovo/performancecenter/performance/AppInfo;->procName:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/lenovo/performancecenter/performance/AppInfo;->appIcon:Landroid/graphics/Bitmap;

    .line 30
    iput p5, p0, Lcom/lenovo/performancecenter/performance/AppInfo;->state:I

    .line 31
    iput p6, p0, Lcom/lenovo/performancecenter/performance/AppInfo;->flag:I

    .line 32
    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;)V
    .locals 0
    .param p1, "isTitle"    # Z
    .param p2, "isUserApp"    # Z
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean p2, p0, Lcom/lenovo/performancecenter/performance/AppInfo;->isUserApp:Z

    .line 20
    iput-boolean p1, p0, Lcom/lenovo/performancecenter/performance/AppInfo;->isTitle:Z

    .line 21
    iput-object p3, p0, Lcom/lenovo/performancecenter/performance/AppInfo;->title:Ljava/lang/String;

    .line 22
    return-void
.end method
