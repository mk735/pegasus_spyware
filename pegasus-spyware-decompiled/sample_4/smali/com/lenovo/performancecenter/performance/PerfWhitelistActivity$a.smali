.class final Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;
.super Ljava/lang/Object;
.source "PerfWhitelistActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Landroid/graphics/Bitmap;

.field private g:Z

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 1
    .param p2, "isTitle"    # Ljava/lang/Boolean;
    .param p3, "titleName"    # Ljava/lang/String;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;->a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;->g:Z

    .line 293
    iput-object p3, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;->h:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;Ljava/lang/String;IILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "flag"    # I
    .param p4, "state"    # I
    .param p5, "appName"    # Ljava/lang/String;
    .param p6, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;->a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p2, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;->b:Ljava/lang/String;

    .line 285
    iput p3, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;->c:I

    .line 286
    iput p4, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;->d:I

    .line 287
    iput-object p5, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;->e:Ljava/lang/String;

    .line 288
    iput-object p6, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;->f:Landroid/graphics/Bitmap;

    .line 289
    return-void
.end method

.method static synthetic a(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;

    .prologue
    .line 272
    iget v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;->d:I

    return v0
.end method

.method static synthetic a(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;
    .param p1, "x1"    # I

    .prologue
    .line 272
    iput p1, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;->d:I

    return p1
.end method

.method static synthetic b(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;->f:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$a;->h:Ljava/lang/String;

    return-object v0
.end method
