.class public Lcom/lenovo/safecenter/systeminfo/service/ScreenInfoService;
.super Ljava/lang/Object;
.source "ScreenInfoService.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/lenovo/safecenter/systeminfo/service/ScreenInfoService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/lenovo/safecenter/systeminfo/service/ScreenInfoService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/systeminfo/service/ScreenInfoService;->a:Ljava/lang/String;

    .line 18
    new-instance v0, Lcom/lenovo/safecenter/systeminfo/service/ScreenInfoService;

    invoke-direct {v0}, Lcom/lenovo/safecenter/systeminfo/service/ScreenInfoService;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/systeminfo/service/ScreenInfoService;->b:Lcom/lenovo/safecenter/systeminfo/service/ScreenInfoService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lenovo/safecenter/systeminfo/service/ScreenInfoService;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/lenovo/safecenter/systeminfo/service/ScreenInfoService;->b:Lcom/lenovo/safecenter/systeminfo/service/ScreenInfoService;

    return-object v0
.end method


# virtual methods
.method public getDisplayMetrics()Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0xa

    .line 38
    sget-object v1, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    .line 39
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 41
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 43
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 44
    .local v5, "screenWidth":I
    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 46
    .local v4, "screenHeight":I
    iget v7, v2, Landroid/util/DisplayMetrics;->xdpi:F

    .line 49
    .local v7, "xdpi":F
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 50
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const-string v8, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v3, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    .line 52
    .local v6, "supportMultiTouch":Z
    sget-object v8, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    const v9, 0x7f0d06ac

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const/16 v9, 0x2a

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 53
    sget-object v8, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    const v9, 0x7f0d06ad

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " Dpi"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 54
    sget-object v8, Lcom/lenovo/safecenter/utils/Const;->mContext:Landroid/content/Context;

    const v9, 0x7f0d06ae

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    if-eqz v6, :cond_0

    const-string v8, "\u652f\u6301"

    :goto_0
    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 54
    :cond_0
    const-string v8, "\u4e0d\u652f\u6301"

    goto :goto_0
.end method
