.class public final Lledroid/utils/IconUtilities;
.super Ljava/lang/Object;
.source "IconUtilities.java"


# static fields
.field private static a:F

.field private static b:F

.field private static c:I

.field private static d:I

.field private static final e:Landroid/graphics/Paint;

.field private static final f:Landroid/graphics/Paint;

.field private static final g:Landroid/graphics/Paint;

.field private static final h:Landroid/graphics/Paint;

.field private static final i:Landroid/graphics/Rect;

.field private static final j:Landroid/graphics/Canvas;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const/high16 v0, -0x40800000    # -1.0f

    .line 25
    sput v0, Lledroid/utils/IconUtilities;->a:F

    .line 26
    sput v0, Lledroid/utils/IconUtilities;->b:F

    .line 27
    sput v1, Lledroid/utils/IconUtilities;->c:I

    .line 28
    sput v1, Lledroid/utils/IconUtilities;->d:I

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lledroid/utils/IconUtilities;->e:Landroid/graphics/Paint;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lledroid/utils/IconUtilities;->f:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lledroid/utils/IconUtilities;->g:Landroid/graphics/Paint;

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lledroid/utils/IconUtilities;->h:Landroid/graphics/Paint;

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lledroid/utils/IconUtilities;->i:Landroid/graphics/Rect;

    .line 35
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lledroid/utils/IconUtilities;->j:Landroid/graphics/Canvas;

    .line 38
    sget-object v0, Lledroid/utils/IconUtilities;->j:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 40
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v9, 0x1e

    const/4 v8, 0x0

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 206
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 207
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 209
    .local v1, "density":F
    const/high16 v4, 0x1050000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sput v4, Lledroid/utils/IconUtilities;->a:F

    .line 210
    sget v4, Lledroid/utils/IconUtilities;->a:F

    sput v4, Lledroid/utils/IconUtilities;->b:F

    .line 211
    sget v4, Lledroid/utils/IconUtilities;->a:F

    float-to-int v4, v4

    sput v4, Lledroid/utils/IconUtilities;->c:I

    .line 212
    sget v4, Lledroid/utils/IconUtilities;->c:I

    sput v4, Lledroid/utils/IconUtilities;->d:I

    .line 214
    sget-object v4, Lledroid/utils/IconUtilities;->e:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/BlurMaskFilter;

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v6, v1

    sget-object v7, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v5, v6, v7}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 215
    sget-object v4, Lledroid/utils/IconUtilities;->f:Landroid/graphics/Paint;

    const/16 v5, -0x3d00

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 216
    sget-object v4, Lledroid/utils/IconUtilities;->f:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 217
    sget-object v4, Lledroid/utils/IconUtilities;->g:Landroid/graphics/Paint;

    const/16 v5, -0x7200

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    sget-object v4, Lledroid/utils/IconUtilities;->g:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 220
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 221
    .local v0, "cm":Landroid/graphics/ColorMatrix;
    const v4, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 222
    sget-object v4, Lledroid/utils/IconUtilities;->h:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 223
    sget-object v4, Lledroid/utils/IconUtilities;->h:Landroid/graphics/Paint;

    const/16 v5, 0x88

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 224
    return-void
.end method

.method public static createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "icon"    # Landroid/graphics/Bitmap;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    sget v4, Lledroid/utils/IconUtilities;->c:I

    .line 51
    .local v4, "textureWidth":I
    sget v3, Lledroid/utils/IconUtilities;->d:I

    .line 52
    .local v3, "textureHeight":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 53
    .local v2, "sourceWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 54
    .local v1, "sourceHeight":I
    if-le v2, v4, :cond_1

    if-le v1, v3, :cond_1

    .line 56
    sub-int v5, v2, v4

    div-int/lit8 v5, v5, 0x2

    sub-int v6, v1, v3

    div-int/lit8 v6, v6, 0x2

    invoke-static {p0, v5, v6, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 66
    .end local p0    # "icon":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 60
    .restart local p0    # "icon":Landroid/graphics/Bitmap;
    :cond_1
    if-ne v2, v4, :cond_2

    if-eq v1, v3, :cond_0

    .line 65
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    .local v0, "resources":Landroid/content/res/Resources;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v5, p1}, Lledroid/utils/IconUtilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 20
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    sget-object v18, Lledroid/utils/IconUtilities;->j:Landroid/graphics/Canvas;

    monitor-enter v18

    .line 75
    :try_start_0
    sget v17, Lledroid/utils/IconUtilities;->a:F

    const/high16 v19, -0x40800000    # -1.0f

    cmpl-float v17, v17, v19

    if-nez v17, :cond_0

    .line 76
    invoke-static/range {p1 .. p1}, Lledroid/utils/IconUtilities;->a(Landroid/content/Context;)V

    .line 79
    :cond_0
    sget v16, Lledroid/utils/IconUtilities;->a:F

    .line 80
    .local v16, "width":F
    sget v6, Lledroid/utils/IconUtilities;->b:F

    .line 82
    .local v6, "height":F
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 83
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v8, v0

    .line 84
    .local v8, "painter":Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 85
    float-to-int v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 94
    .end local v8    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 95
    .local v12, "sourceWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 96
    .local v11, "sourceHeight":I
    if-lez v12, :cond_3

    if-lez v11, :cond_3

    .line 98
    int-to-float v0, v12

    move/from16 v17, v0

    cmpg-float v17, v16, v17

    if-ltz v17, :cond_2

    int-to-float v0, v11

    move/from16 v17, v0

    cmpg-float v17, v6, v17

    if-gez v17, :cond_6

    .line 100
    :cond_2
    int-to-float v0, v12

    move/from16 v17, v0

    int-to-float v0, v11

    move/from16 v19, v0

    div-float v9, v17, v19

    .line 101
    .local v9, "ratio":F
    if-le v12, v11, :cond_5

    .line 102
    div-float v17, v16, v9

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v6, v0

    .line 114
    .end local v9    # "ratio":F
    :cond_3
    :goto_1
    sget v14, Lledroid/utils/IconUtilities;->c:I

    .line 115
    .local v14, "textureWidth":I
    sget v13, Lledroid/utils/IconUtilities;->d:I

    .line 117
    .local v13, "textureHeight":I
    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v17

    invoke-static {v14, v13, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 119
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    sget-object v5, Lledroid/utils/IconUtilities;->j:Landroid/graphics/Canvas;

    .line 120
    .local v5, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v5, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 122
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v17, v0

    sub-int v17, v14, v17

    div-int/lit8 v7, v17, 0x2

    .line 123
    .local v7, "left":I
    float-to-int v0, v6

    move/from16 v17, v0

    sub-int v17, v13, v17

    div-int/lit8 v15, v17, 0x2

    .line 124
    .local v15, "top":I
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v17, v0

    add-int v10, v7, v17

    .line 125
    .local v10, "right":I
    float-to-int v0, v6

    move/from16 v17, v0

    add-int v4, v15, v17

    .line 127
    .local v4, "bottom":I
    sget-object v17, Lledroid/utils/IconUtilities;->i:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 128
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v15, v10, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 129
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 130
    sget-object v17, Lledroid/utils/IconUtilities;->i:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 132
    monitor-exit v18

    return-object v2

    .line 86
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "bottom":I
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "left":I
    .end local v10    # "right":I
    .end local v11    # "sourceHeight":I
    .end local v12    # "sourceWidth":I
    .end local v13    # "textureHeight":I
    .end local v14    # "textureWidth":I
    .end local v15    # "top":I
    :cond_4
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 88
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v3, v0

    .line 89
    .local v3, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 90
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v17

    if-nez v17, :cond_1

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 133
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v6    # "height":F
    .end local v16    # "width":F
    :catchall_0
    move-exception v17

    monitor-exit v18

    throw v17

    .line 103
    .restart local v6    # "height":F
    .restart local v9    # "ratio":F
    .restart local v11    # "sourceHeight":I
    .restart local v12    # "sourceWidth":I
    .restart local v16    # "width":F
    :cond_5
    if-le v11, v12, :cond_3

    .line 104
    mul-float v17, v6, v9

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    goto/16 :goto_1

    .line 106
    .end local v9    # "ratio":F
    :cond_6
    int-to-float v0, v12

    move/from16 v17, v0

    cmpg-float v17, v17, v16

    if-gez v17, :cond_3

    int-to-float v0, v11

    move/from16 v17, v0

    cmpg-float v17, v17, v6

    if-gez v17, :cond_3

    .line 108
    int-to-float v0, v12

    move/from16 v16, v0

    .line 109
    int-to-float v6, v11

    goto/16 :goto_1
.end method

.method public static drawDisabledBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    sget-object v3, Lledroid/utils/IconUtilities;->j:Landroid/graphics/Canvas;

    monitor-enter v3

    .line 188
    :try_start_0
    sget v2, Lledroid/utils/IconUtilities;->a:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    .line 189
    invoke-static {p1}, Lledroid/utils/IconUtilities;->a(Landroid/content/Context;)V

    .line 191
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 193
    .local v1, "disabled":Landroid/graphics/Bitmap;
    sget-object v0, Lledroid/utils/IconUtilities;->j:Landroid/graphics/Canvas;

    .line 194
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 196
    const/4 v2, 0x0

    const/4 v4, 0x0

    sget-object v5, Lledroid/utils/IconUtilities;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p0, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 198
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 200
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 201
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "disabled":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static drawSelectedAllAppsBitmap(Landroid/graphics/Canvas;FFZLandroid/graphics/Bitmap;)V
    .locals 8
    .param p0, "dest"    # Landroid/graphics/Canvas;
    .param p1, "destWidth"    # F
    .param p2, "destHeight"    # F
    .param p3, "pressed"    # Z
    .param p4, "src"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 138
    sget-object v5, Lledroid/utils/IconUtilities;->j:Landroid/graphics/Canvas;

    monitor-enter v5

    .line 139
    :try_start_0
    sget v4, Lledroid/utils/IconUtilities;->a:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v4, v4, v6

    if-nez v4, :cond_0

    .line 143
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "Assertion failed: Utilities not initialized"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 146
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v4, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 148
    const/4 v4, 0x2

    new-array v3, v4, [I

    .line 149
    .local v3, "xy":[I
    sget-object v4, Lledroid/utils/IconUtilities;->e:Landroid/graphics/Paint;

    invoke-virtual {p4, v4, v3}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 151
    .local v0, "mask":Landroid/graphics/Bitmap;
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, p1, v4

    div-float v1, v4, v7

    .line 152
    .local v1, "px":F
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, p2, v4

    div-float v2, v4, v7

    .line 153
    .local v2, "py":F
    const/4 v4, 0x0

    aget v4, v3, v4

    int-to-float v4, v4

    add-float v6, v1, v4

    const/4 v4, 0x1

    aget v4, v3, v4

    int-to-float v4, v4

    add-float v7, v2, v4

    if-eqz p3, :cond_1

    sget-object v4, Lledroid/utils/IconUtilities;->f:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {p0, v0, v6, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 156
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 157
    monitor-exit v5

    .line 158
    return-void

    .line 153
    :cond_1
    sget-object v4, Lledroid/utils/IconUtilities;->g:Landroid/graphics/Paint;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    sget-object v2, Lledroid/utils/IconUtilities;->j:Landroid/graphics/Canvas;

    monitor-enter v2

    .line 173
    :try_start_0
    sget v1, Lledroid/utils/IconUtilities;->a:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    .line 174
    invoke-static {p1}, Lledroid/utils/IconUtilities;->a(Landroid/content/Context;)V

    .line 177
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v3, Lledroid/utils/IconUtilities;->a:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sget v3, Lledroid/utils/IconUtilities;->b:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    .line 178
    monitor-exit v2

    .line 181
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 180
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 181
    .local v0, "resources":Landroid/content/res/Resources;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v1, p1}, Lledroid/utils/IconUtilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 183
    .end local v0    # "resources":Landroid/content/res/Resources;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
