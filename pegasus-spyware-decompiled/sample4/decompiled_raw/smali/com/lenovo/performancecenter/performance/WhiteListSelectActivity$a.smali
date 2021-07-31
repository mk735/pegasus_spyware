.class final Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;
.super Ljava/lang/Object;
.source "WhiteListSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

.field private b:Ljava/lang/String;

.field private c:Landroid/graphics/Bitmap;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;Ljava/lang/String;)V
    .locals 1
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;->a:Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;->h:Z

    .line 509
    iput-object p2, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;->i:Ljava/lang/String;

    .line 510
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;II)V
    .locals 0
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "appName"    # Ljava/lang/String;
    .param p4, "procName"    # Ljava/lang/String;
    .param p5, "appIcon"    # Landroid/graphics/Bitmap;
    .param p6, "state"    # I
    .param p7, "flag"    # I

    .prologue
    .line 513
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;->a:Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    iput-object p2, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;->d:Ljava/lang/String;

    .line 515
    iput-object p3, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;->b:Ljava/lang/String;

    .line 516
    iput-object p4, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;->e:Ljava/lang/String;

    .line 517
    iput-object p5, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;->c:Landroid/graphics/Bitmap;

    .line 518
    iput p6, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;->f:I

    .line 519
    iput p7, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;->g:I

    .line 520
    return-void
.end method

.method static synthetic a(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;

    .prologue
    .line 497
    iget v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;->f:I

    return v0
.end method

.method static synthetic a(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;
    .param p1, "x1"    # I

    .prologue
    .line 497
    iput p1, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;->f:I

    return p1
.end method

.method static synthetic b(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;

    .prologue
    .line 497
    iget v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;->g:I

    return v0
.end method

.method static synthetic d(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;->h:Z

    return v0
.end method

.method static synthetic e(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WhiteListSelectActivity$a;->i:Ljava/lang/String;

    return-object v0
.end method
