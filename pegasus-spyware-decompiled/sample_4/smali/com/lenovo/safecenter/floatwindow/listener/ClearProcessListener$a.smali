.class final Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener$a;
.super Ljava/lang/Object;
.source "ClearProcessListener.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;


# direct methods
.method private constructor <init>(Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener$a;->a:Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;B)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener$a;-><init>(Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 65
    sget-object v0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->instanceClearView:Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener$a;->a:Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;

    invoke-static {v1}, Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;->a(Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;)I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener$a;->a:Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;

    invoke-static {v2}, Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;->b(Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->showClearOverView(II)V

    .line 66
    sget-object v0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->processrunning:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->clear_view()V

    .line 67
    new-instance v0, Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener$a$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener$a$1;-><init>(Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener$a;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener$a$1;->start()V

    .line 79
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 84
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 89
    return-void
.end method
