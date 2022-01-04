.class public Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;
.super Landroid/widget/FrameLayout;
.source "FlowIcon.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static g:I

.field private static h:I


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

.field private c:F

.field private d:F

.field private e:Landroid/view/WindowManager$LayoutParams;

.field private f:Landroid/view/WindowManager;

.field private i:[I

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:Z

.field private q:I

.field private r:Z

.field private s:Landroid/net/ConnectivityManager;

.field private t:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x190

    .line 42
    sput v0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->g:I

    .line 44
    sput v0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->i:[I

    .line 58
    iput-boolean v2, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->p:Z

    .line 59
    iput v2, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->q:I

    .line 121
    new-instance v0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon$2;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon$2;-><init>(Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->t:Landroid/os/Handler;

    .line 64
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->a:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->f:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->f:Landroid/view/WindowManager;

    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->e:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/data/SaveData;->getFlowViewOptions(Landroid/content/Context;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->i:[I

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->e:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->i:[I

    aget v1, v1, v2

    sput v1, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->g:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->e:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->i:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sput v1, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->h:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget v1, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->g:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v1, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->h:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->f:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v0, Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->b:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->b:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p0}, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 66
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->s:Landroid/net/ConnectivityManager;

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->p:Z

    return v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;

    .prologue
    .line 18
    iget v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->q:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->q:I

    return v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;)V
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;

    .prologue
    .line 18
    new-instance v0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon$1;-><init>(Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon$1;->start()V

    return-void
.end method

.method static synthetic d(Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;

    .prologue
    .line 18
    iget v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->q:I

    return v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;)Lcom/lenovo/safecenter/floatwindow/view/FlowView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->b:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;

    .prologue
    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->q:I

    return v0
.end method


# virtual methods
.method public addView_iconBase()V
    .locals 3

    .prologue
    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->s:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->s:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_0

    .line 145
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->s:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 146
    .local v0, "type":I
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->b:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-virtual {v1, v0}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->setFlowDrawable(I)V

    .line 147
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->f:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, p0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->b:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->sendHanderMessage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v0    # "type":I
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public delView_iconBase()V
    .locals 1

    .prologue
    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->b:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->setViewGone()V

    .line 163
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->f:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 164
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->b:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->removeHanderMessage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x42200000    # 40.0f

    const/4 v3, 0x1

    .line 218
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->c:F

    .line 219
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    const/high16 v1, 0x41c80000    # 25.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->d:F

    .line 220
    iget-boolean v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->r:Z

    if-nez v0, :cond_0

    .line 221
    iget v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->c:F

    iput v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->j:F

    .line 222
    iget v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->d:F

    iput v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->k:F

    .line 223
    iput-boolean v3, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->r:Z

    .line 225
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 245
    :cond_1
    :goto_0
    return v3

    .line 227
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->n:F

    .line 228
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->o:F

    .line 229
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->t:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 232
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->f:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p1, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->e:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->e:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/floatwindow/data/SaveData;->savaFlowViewOptions(Landroid/content/Context;II)V

    .line 234
    iput-boolean v4, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->r:Z

    .line 235
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->t:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 238
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->l:F

    .line 239
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->m:F

    .line 241
    :try_start_0
    iget v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->j:F

    iget v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->l:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->k:F

    iget v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->m:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->e:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->c:F

    iget v2, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->n:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->e:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->d:F

    iget v2, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->o:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->f:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p1, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setFlowWindowFixed(ZLandroid/view/View;)V
    .locals 2
    .param p1, "isFixed"    # Z
    .param p2, "viewFlow"    # Landroid/view/View;

    .prologue
    .line 198
    if-eqz p1, :cond_1

    .line 199
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x38

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 205
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->s:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->s:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->s:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->f:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p2, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_0
    :goto_1
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
