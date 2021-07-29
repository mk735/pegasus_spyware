.class final Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;
.super Ljava/lang/Object;
.source "PhoneAccelerateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

.field private b:Ljava/lang/String;

.field private c:Landroid/graphics/Bitmap;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;Ljava/lang/String;)V
    .locals 0
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 600
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput-object p2, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;->f:Ljava/lang/String;

    .line 602
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "appIcon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 611
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    iput-object p2, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;->b:Ljava/lang/String;

    .line 613
    iput-object p3, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;->c:Landroid/graphics/Bitmap;

    .line 614
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "appName"    # Ljava/lang/String;
    .param p4, "appIcon"    # Landroid/graphics/Bitmap;
    .param p5, "cacheSize"    # Ljava/lang/String;

    .prologue
    .line 604
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    iput-object p2, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;->d:Ljava/lang/String;

    .line 606
    iput-object p3, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;->b:Ljava/lang/String;

    .line 607
    iput-object p4, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;->c:Landroid/graphics/Bitmap;

    .line 608
    iput-object p5, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;->e:Ljava/lang/String;

    .line 609
    return-void
.end method

.method static synthetic a(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;

    .prologue
    .line 593
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;

    .prologue
    .line 593
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;

    .prologue
    .line 593
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;

    .prologue
    .line 593
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$a;->e:Ljava/lang/String;

    return-object v0
.end method
