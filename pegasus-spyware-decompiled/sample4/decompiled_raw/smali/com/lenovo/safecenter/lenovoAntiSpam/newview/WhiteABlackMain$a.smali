.class final Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WhiteABlackMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x43480000    # 200.0f

    const/high16 v3, 0x42f00000    # 120.0f

    const/4 v2, 0x0

    .line 195
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x437a0000    # 250.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v2

    .line 198
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    if-nez v0, :cond_2

    .line 200
    const-string v0, "test "

    const-string v1, "right"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;)Landroid/widget/TabHost;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 210
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 212
    const-string v0, "test "

    const-string v1, "left"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;)Landroid/widget/TabHost;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
