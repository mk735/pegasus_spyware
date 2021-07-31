.class public Lcom/lenovo/safecenter/floatwindow/view/FloatwindowCache;
.super Landroid/app/Activity;
.source "FloatwindowCache.java"


# static fields
.field public static instance:Lcom/lenovo/safecenter/floatwindow/view/FloatwindowCache;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/floatwindow/view/FloatwindowCache;->requestWindowFeature(I)Z

    .line 22
    const v5, 0x7f03004d

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/floatwindow/view/FloatwindowCache;->setContentView(I)V

    .line 23
    sput-object p0, Lcom/lenovo/safecenter/floatwindow/view/FloatwindowCache;->instance:Lcom/lenovo/safecenter/floatwindow/view/FloatwindowCache;

    .line 24
    invoke-virtual {p0}, Lcom/lenovo/safecenter/floatwindow/view/FloatwindowCache;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 25
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v5, "autoFlag"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 26
    .local v0, "autoFlag":Z
    const-string v5, "value"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 27
    .local v4, "value":I
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 28
    .local v1, "brightnessParams":Landroid/view/WindowManager$LayoutParams;
    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/lenovo/safecenter/floatwindow/view/FloatwindowCache;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 32
    invoke-virtual {p0}, Lcom/lenovo/safecenter/floatwindow/view/FloatwindowCache;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 34
    int-to-float v5, v4

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 42
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 43
    invoke-virtual {p0}, Lcom/lenovo/safecenter/floatwindow/view/FloatwindowCache;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 44
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 45
    .local v3, "i":Landroid/content/Intent;
    const-string v5, "com.lenovo.safecenter.lightChanges"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/floatwindow/view/FloatwindowCache;->sendBroadcast(Landroid/content/Intent;)V

    .line 47
    new-instance v5, Lcom/lenovo/safecenter/floatwindow/view/FloatwindowCache$1;

    invoke-direct {v5, p0}, Lcom/lenovo/safecenter/floatwindow/view/FloatwindowCache$1;-><init>(Lcom/lenovo/safecenter/floatwindow/view/FloatwindowCache;)V

    invoke-virtual {v5}, Lcom/lenovo/safecenter/floatwindow/view/FloatwindowCache$1;->start()V

    .line 57
    return-void

    .line 37
    .end local v3    # "i":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/floatwindow/view/FloatwindowCache;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 40
    const/high16 v5, -0x40800000    # -1.0f

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 67
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 69
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 61
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 63
    return-void
.end method
