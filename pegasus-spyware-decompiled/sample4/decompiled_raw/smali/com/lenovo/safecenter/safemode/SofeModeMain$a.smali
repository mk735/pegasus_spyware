.class final Lcom/lenovo/safecenter/safemode/SofeModeMain$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SofeModeMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/safemode/SofeModeMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/SofeModeMain;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/SofeModeMain;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain$a;->a:Lcom/lenovo/safecenter/safemode/SofeModeMain;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x43480000    # 200.0f

    const/high16 v2, 0x42f00000    # 120.0f

    .line 337
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

    .line 367
    :cond_0
    :goto_0
    return v4

    .line 340
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain$a;->a:Lcom/lenovo/safecenter/safemode/SofeModeMain;

    invoke-static {v0}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->a(Lcom/lenovo/safecenter/safemode/SofeModeMain;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 342
    const-string v0, "test "

    const-string v1, "right"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain$a;->a:Lcom/lenovo/safecenter/safemode/SofeModeMain;

    invoke-static {v0}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->a(Lcom/lenovo/safecenter/safemode/SofeModeMain;)Landroid/widget/TabHost;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain$a;->a:Lcom/lenovo/safecenter/safemode/SofeModeMain;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->a(Lcom/lenovo/safecenter/safemode/SofeModeMain;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 352
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain$a;->a:Lcom/lenovo/safecenter/safemode/SofeModeMain;

    invoke-static {v0}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->a(Lcom/lenovo/safecenter/safemode/SofeModeMain;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    const-string v0, "test "

    const-string v1, "left"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain$a;->a:Lcom/lenovo/safecenter/safemode/SofeModeMain;

    invoke-static {v0}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->a(Lcom/lenovo/safecenter/safemode/SofeModeMain;)Landroid/widget/TabHost;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain$a;->a:Lcom/lenovo/safecenter/safemode/SofeModeMain;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->a(Lcom/lenovo/safecenter/safemode/SofeModeMain;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
