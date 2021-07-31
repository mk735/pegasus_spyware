.class public Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;
.super Landroid/widget/FrameLayout;
.source "FloatWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/floatwindow/view/FloatWindow$a;,
        Lcom/lenovo/safecenter/floatwindow/view/FloatWindow$b;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:I

.field public static instanceFloatWindow:Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroid/view/View;

.field private e:Landroid/view/WindowManager;

.field private f:Landroid/view/WindowManager$LayoutParams;

.field private g:Landroid/widget/Button;

.field private h:I

.field private i:Landroid/support/v4/view/ViewPager;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private k:[Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:Z

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 54
    sput v0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->a:I

    .line 56
    sput v0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "_context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 85
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 60
    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->c:Landroid/content/Context;

    .line 64
    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->e:Landroid/view/WindowManager;

    .line 66
    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->f:Landroid/view/WindowManager$LayoutParams;

    .line 68
    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->g:Landroid/widget/Button;

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->h:I

    .line 86
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->c:Landroid/content/Context;

    .line 88
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->e:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->c:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->e:Landroid/view/WindowManager;

    :cond_0
    sput-object p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->instanceFloatWindow:Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget v1, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->a:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v1, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->b:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->f:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->c:Landroid/content/Context;

    const v1, 0x7f03004c

    invoke-static {v0, v1, p0}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f09021b

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->d:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->setFocusable(Z)V

    invoke-virtual {p0, p0}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090250

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09024f

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->l:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09021f

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f090220

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/widget/ImageView;

    aput-object v0, v2, v4

    aput-object v1, v2, v3

    iput-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->k:[Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->j:Ljava/util/List;

    const v0, 0x7f09021d

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->i:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->i:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow$b;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow$b;-><init>(Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->i:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->removeAllViews()V

    new-instance v0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;

    invoke-direct {v0, p1}, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;

    invoke-direct {v1, p1}, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f02007e

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->j:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->i:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow$a;

    invoke-direct {v1, p0, v4}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow$a;-><init>(Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;B)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;)[Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->k:[Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public changeWindowView(I)V
    .locals 5
    .param p1, "_paramInt"    # I

    .prologue
    .line 140
    iget v2, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->h:I

    if-ne v2, p1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 142
    :cond_0
    iput p1, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->h:I

    .line 146
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 147
    .local v0, "localDisplayMetrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->e:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 148
    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 149
    .local v1, "localLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->d:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    const-string v2, "windowview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u9ad8\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->d:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u5bbd\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->d:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/floatwindow/data/SaveData;->save_FloatView_width(Landroid/content/Context;I)V

    .line 152
    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/floatwindow/data/SaveData;->save_FloatView_height(Landroid/content/Context;I)V

    .line 153
    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public delFloatWindow()V
    .locals 4

    .prologue
    .line 181
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->e:Landroid/view/WindowManager;

    invoke-interface {v2, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 182
    sget-object v2, Lcom/lenovo/safecenter/support/SecurityService;->instance:Lcom/lenovo/safecenter/support/SecurityService;

    if-eqz v2, :cond_0

    .line 183
    sget-object v2, Lcom/lenovo/safecenter/support/SecurityService;->instance:Lcom/lenovo/safecenter/support/SecurityService;

    iget-boolean v3, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->r:Z

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/support/SecurityService;->setFlowIsFixed(Z)V

    .line 185
    :cond_0
    sget-object v2, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->receiver:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$b;

    if-eqz v2, :cond_1

    .line 186
    invoke-static {}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->unregisterReceiver()V

    .line 189
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 190
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.lenovo.safecenter.floatwindow.closewindow"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->c:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v1

    .line 195
    .local v1, "localException":Ljava/lang/Exception;
    const-string v2, "windowException"

    const-string v3, "\u79fb\u9664\u7a97\u53e3\u65f6\u9519\u8bef"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 257
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 258
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 245
    :goto_0
    return-void

    .line 229
    :pswitch_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->delFloatWindow()V

    .line 237
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->changeWindowView(I)V

    goto :goto_0

    .line 240
    :pswitch_1
    invoke-virtual {p0}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->delFloatWindow()V

    .line 241
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 242
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->c:Landroid/content/Context;

    const-class v2, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 243
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 244
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x7f09024f
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 263
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 264
    return-void
.end method

.method protected onFocusLost()V
    .locals 1

    .prologue
    .line 421
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFocusLost()V

    .line 422
    sget-boolean v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->screenWindowDel:Z

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->delFloatWindow()V

    .line 425
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->screenWindowDel:Z

    .line 426
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 281
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 287
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 283
    :pswitch_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->delFloatWindow()V

    goto :goto_0

    .line 286
    :pswitch_1
    invoke-virtual {p0}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->delFloatWindow()V

    goto :goto_0

    .line 281
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 385
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->o:F

    .line 386
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    const/high16 v1, 0x41c80000    # 25.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->p:F

    .line 387
    iget-boolean v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->q:Z

    if-nez v0, :cond_0

    .line 388
    iget v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->o:F

    iput v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->m:F

    .line 389
    iget v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->p:F

    iput v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->n:F

    .line 390
    iput-boolean v3, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->q:Z

    .line 392
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 398
    :cond_1
    :goto_0
    :pswitch_0
    return v3

    .line 396
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->q:Z

    .line 397
    iget v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->m:F

    iget v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->n:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->delFloatWindow()V

    goto :goto_0

    .line 392
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 268
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 276
    return-void
.end method

.method public showFloatWindow()V
    .locals 4

    .prologue
    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->e:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->f:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, p0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/safecenter/floatwindow/data/SaveData;->get_flow_immove_state(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->r:Z

    .line 165
    sget-object v1, Lcom/lenovo/safecenter/support/SecurityService;->instance:Lcom/lenovo/safecenter/support/SecurityService;

    if-eqz v1, :cond_0

    .line 166
    sget-object v1, Lcom/lenovo/safecenter/support/SecurityService;->instance:Lcom/lenovo/safecenter/support/SecurityService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/support/SecurityService;->setFlowIsFixed(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "animation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u542f\u52a8\u52a8\u753b\u9519\u8bef"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
