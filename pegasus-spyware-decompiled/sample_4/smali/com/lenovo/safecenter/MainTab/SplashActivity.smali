.class public Lcom/lenovo/safecenter/MainTab/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Lcom/lenovo/safecenter/utils/LeSafeObservable;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Bitmap;

.field private j:Z

.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->j:Z

    .line 120
    new-instance v0, Lcom/lenovo/safecenter/MainTab/SplashActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/MainTab/SplashActivity$1;-><init>(Lcom/lenovo/safecenter/MainTab/SplashActivity;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->k:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/MainTab/SplashActivity;)V
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/MainTab/SplashActivity;

    .prologue
    .line 45
    new-instance v0, Lcom/lenovo/safecenter/MainTab/SplashActivity$2;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/MainTab/SplashActivity$2;-><init>(Lcom/lenovo/safecenter/MainTab/SplashActivity;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/MainTab/SplashActivity$2;->start()V

    return-void
.end method

.method private a()Z
    .locals 13

    .prologue
    const/4 v9, 0x0

    .line 157
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getHolidayImgId()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "id":Ljava/lang/String;
    const-wide/16 v7, 0x0

    .line 159
    .local v7, "lStartTime":J
    :try_start_0
    iget-object v10, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->a:Landroid/content/SharedPreferences;

    const-string v11, "holiday_img_starttime"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 163
    iget-object v10, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->a:Landroid/content/SharedPreferences;

    const-string v11, "holiday_img_endtime"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    .line 168
    .local v5, "lEndTime":J
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->getFilesDir()Ljava/io/File;

    move-result-object v10

    const-string v11, "holiday_img.jpg"

    invoke-direct {v0, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    .line 171
    .local v2, "isFileExists":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 172
    .local v3, "lCurrTime":J
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    cmp-long v10, v3, v5

    if-gez v10, :cond_0

    cmp-long v10, v3, v7

    if-lez v10, :cond_0

    if-eqz v2, :cond_0

    .line 174
    const/4 v9, 0x1

    .line 176
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "isFileExists":Z
    .end local v3    # "lCurrTime":J
    .end local v5    # "lEndTime":J
    :cond_0
    :goto_0
    return v9

    .line 166
    :catch_0
    move-exception v10

    goto :goto_0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/MainTab/SplashActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/MainTab/SplashActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()V
    .locals 7

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    :goto_0
    return-void

    .line 240
    :cond_0
    :try_start_0
    const-string v2, "antitheft"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "help"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 244
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/NewFunctionNoticeManager;->init(Landroid/content/Context;)V

    .line 245
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/lenovo/safecenter/MainTab/HelpActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 248
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->finish()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 250
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 253
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->finish()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/MainTab/SplashActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/MainTab/SplashActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/MainTab/SplashActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/MainTab/SplashActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->b()V

    return-void
.end method

.method public static zoomImg(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 182
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 183
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 185
    .local v4, "height":I
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 186
    .local v9, "scaleWidth":F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 188
    .local v8, "scaleHeight":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 189
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 191
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 193
    .local v7, "newbm":Landroid/graphics/Bitmap;
    return-object v7
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x8

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->setContentView(I)V

    .line 65
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->b:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->b:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-virtual {v0, p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->addObserver(Ljava/util/Observer;)V

    .line 66
    const v0, 0x7f09005d

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->j:Z

    iget-boolean v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->j:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "holiday_img.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->d:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->j:Z

    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->j:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->d:Landroid/graphics/Bitmap;

    invoke-static {v2, v1, v0}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->zoomImg(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->d:Landroid/graphics/Bitmap;

    const v0, 0x7f09005a

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f09005b

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09005c

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f09005f

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f090059

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->d:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->k:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 68
    return-void

    .line 66
    :cond_1
    const v0, 0x7f020181

    invoke-static {p0, v0}, Lcom/lenovo/safecenter/utils/WflUtils;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->h:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 291
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 294
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 296
    :cond_3
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 297
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 299
    :cond_4
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 300
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 303
    :cond_5
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->b:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-virtual {v0, p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->deleteObserver(Ljava/util/Observer;)V

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->b:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    .line 307
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 308
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 230
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 231
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 232
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 224
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 225
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 226
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 262
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 263
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 265
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->c:Landroid/widget/TextView;

    const v1, 0x7f0d05da

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 269
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity;->c:Landroid/widget/TextView;

    const v1, 0x7f0d05db

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 273
    :pswitch_2
    invoke-direct {p0}, Lcom/lenovo/safecenter/MainTab/SplashActivity;->b()V

    goto :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
