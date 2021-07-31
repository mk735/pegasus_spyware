.class final Lledroid/utils/IconAndLableCache$a;
.super Ljava/lang/Object;
.source "IconAndLableCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lledroid/utils/IconAndLableCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lledroid/utils/IconAndLableCache$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lledroid/utils/IconAndLableCache$a;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lledroid/utils/IconAndLableCache$a;

    .prologue
    .line 45
    iget-object v0, p0, Lledroid/utils/IconAndLableCache$a;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic a(Lledroid/utils/IconAndLableCache$a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lledroid/utils/IconAndLableCache$a;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 45
    iput-object p1, p0, Lledroid/utils/IconAndLableCache$a;->a:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lledroid/utils/IconAndLableCache$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lledroid/utils/IconAndLableCache$a;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lledroid/utils/IconAndLableCache$a;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lledroid/utils/IconAndLableCache$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lledroid/utils/IconAndLableCache$a;

    .prologue
    .line 45
    iget-object v0, p0, Lledroid/utils/IconAndLableCache$a;->b:Ljava/lang/String;

    return-object v0
.end method
