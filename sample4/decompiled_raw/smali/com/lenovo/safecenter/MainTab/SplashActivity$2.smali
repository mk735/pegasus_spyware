.class final Lcom/lenovo/safecenter/MainTab/SplashActivity$2;
.super Ljava/lang/Thread;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/MainTab/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/MainTab/SplashActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/MainTab/SplashActivity;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity$2;->a:Lcom/lenovo/safecenter/MainTab/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 210
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->isFirstInstallFloatwindowShortCut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/SplashActivity$2;->a:Lcom/lenovo/safecenter/MainTab/SplashActivity;

    const v1, 0x7f0202d5

    const v2, 0x7f0d06dc

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/floatwindow/util/Tools;->createFloatwindowShortCut(Landroid/content/Context;II)V

    .line 214
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->setFirstInstallFloatwindowShortCut()Z

    .line 216
    :cond_0
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 217
    return-void
.end method
