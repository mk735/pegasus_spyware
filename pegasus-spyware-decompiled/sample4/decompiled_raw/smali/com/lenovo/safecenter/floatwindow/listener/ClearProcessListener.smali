.class public Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;
.super Ljava/lang/Object;
.source "ClearProcessListener.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener$a;
    }
.end annotation


# instance fields
.field private a:Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;

.field private b:F

.field private c:I

.field private d:I

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;Landroid/content/Context;II)V
    .locals 2
    .param p1, "_clProcessBar"    # Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "overRate"    # I
    .param p4, "clearAfterSize"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;->a:Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;

    .line 26
    iput-object p2, p0, Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;->e:Landroid/content/Context;

    .line 27
    int-to-float v0, p3

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;->b:F

    .line 28
    iput p4, p0, Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;->c:I

    .line 29
    iput p3, p0, Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;->d:I

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;

    .prologue
    .line 15
    iget v0, p0, Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;->c:I

    return v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;

    .prologue
    .line 15
    iget v0, p0, Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;->d:I

    return v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;->e:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 9
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 35
    const-string v2, "onAnimationEnd"

    const-string v4, "onAnimationEnd"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v2, p0, Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;->b:F

    move v4, v3

    move v6, v1

    move v7, v5

    move v8, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 40
    .local v0, "localScaleAnimation":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 41
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 42
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;->a:Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;

    iget-object v1, v1, Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;->move_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 43
    new-instance v1, Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener$a;-><init>(Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;B)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 44
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 52
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 58
    return-void
.end method
