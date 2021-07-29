.class public Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;
.super Ljava/lang/Object;
.source "DataLayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/framework/DataLayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheInfo"
.end annotation


# instance fields
.field public appCacheSize:J

.field public appIcon:Landroid/graphics/Bitmap;

.field public appName:Ljava/lang/String;

.field public cacheSize:Ljava/lang/String;

.field public pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "appIcon"    # Landroid/graphics/Bitmap;
    .param p4, "cacheSize"    # Ljava/lang/String;

    .prologue
    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    iput-object p1, p0, Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;->pkgName:Ljava/lang/String;

    .line 654
    iput-object p2, p0, Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;->appName:Ljava/lang/String;

    .line 655
    iput-object p3, p0, Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;->appIcon:Landroid/graphics/Bitmap;

    .line 656
    iput-object p4, p0, Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;->cacheSize:Ljava/lang/String;

    .line 657
    return-void
.end method
