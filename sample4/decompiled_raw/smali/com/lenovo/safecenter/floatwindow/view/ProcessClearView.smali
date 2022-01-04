.class public Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;
.super Landroid/widget/LinearLayout;
.source "ProcessClearView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final PREF_SWITCHER_OR_RUNNING_FLAG:Ljava/lang/String; = "switcher_or_running_flag"

.field public static final PREF_SWITCHER_SHOW_FLAG:Ljava/lang/String; = "switcher_windwo_show"

.field public static instanceClearView:Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;

.field private f:Landroid/widget/FrameLayout;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/content/Context;

.field public handler:Landroid/os/Handler;

.field private i:I

.field private j:I

.field private k:Landroid/content/res/Resources;

.field private l:Landroid/os/Message;

.field private m:Landroid/content/SharedPreferences;

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Lcom/lenovo/safecenter/floatwindow/util/Tools;

.field private q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v7, 0x1f4

    const/4 v6, 0x1

    const/4 v0, -0x1

    const/4 v5, 0x0

    const/high16 v4, -0x3ccc0000    # -180.0f

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    iput v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->i:I

    .line 53
    iput v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->j:I

    .line 60
    iput-boolean v6, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->n:Z

    .line 188
    new-instance v0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView$2;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView$2;-><init>(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->handler:Landroid/os/Handler;

    .line 69
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->h:Landroid/content/Context;

    .line 70
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->p:Lcom/lenovo/safecenter/floatwindow/util/Tools;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/lenovo/safecenter/floatwindow/util/Tools;

    invoke-direct {v0, p1}, Lcom/lenovo/safecenter/floatwindow/util/Tools;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->p:Lcom/lenovo/safecenter/floatwindow/util/Tools;

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->k:Landroid/content/res/Resources;

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->l:Landroid/os/Message;

    const v0, 0x7f030051

    invoke-static {p1, v0, p0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f090238

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->a:Landroid/widget/Button;

    const v0, 0x7f090239

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->b:Landroid/widget/TextView;

    const v0, 0x7f090236

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->c:Landroid/widget/TextView;

    const v0, 0x7f090237

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->p:Lcom/lenovo/safecenter/floatwindow/util/Tools;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/floatwindow/util/Tools;->getTotalMemory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->p:Lcom/lenovo/safecenter/floatwindow/util/Tools;

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->p:Lcom/lenovo/safecenter/floatwindow/util/Tools;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/floatwindow/util/Tools;->getAvailMemory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/floatwindow/util/Tools;->getUeageSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->j:I

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->p:Lcom/lenovo/safecenter/floatwindow/util/Tools;

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->p:Lcom/lenovo/safecenter/floatwindow/util/Tools;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/floatwindow/util/Tools;->getAvailMemory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/floatwindow/util/Tools;->getUeageRate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->i:I

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->k:Landroid/content/res/Resources;

    const v3, 0x7f0d06fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->k:Landroid/content/res/Resources;

    const v3, 0x7f0d06fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->k:Landroid/content/res/Resources;

    const v3, 0x7f0d06fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->k:Landroid/content/res/Resources;

    const v3, 0x7f0d06fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090235

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->e:Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->e:Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;

    iget v1, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->i:I

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;->showStartAnimation(I)V

    const v0, 0x7f090233

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->f:Landroid/widget/FrameLayout;

    const v0, 0x7f090234

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->g:Landroid/widget/ImageView;

    const-string v0, "switcher_or_running_flag"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->m:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->m:Landroid/content/SharedPreferences;

    const-string v1, "switcher_windwo_show"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->n:Z

    iget-boolean v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->n:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->g:Landroid/widget/ImageView;

    invoke-static {v4, v5, v7}, Lcom/lenovo/safecenter/floatwindow/util/MyRotateAnimations;->getRotateAnimation(FFI)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->f:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView$1;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView$1;-><init>(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    sput-object p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->instanceClearView:Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    .line 76
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->g:Landroid/widget/ImageView;

    invoke-static {v5, v4, v7}, Lcom/lenovo/safecenter/floatwindow/util/MyRotateAnimations;->getRotateAnimation(FFI)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->n:Z

    return v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->m:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)V
    .locals 6
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    .prologue
    const/4 v5, 0x1

    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->getRunningAppInfoJustInLauncher(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v4, 0x2

    aget v1, v1, v4

    if-ne v1, v5, :cond_0

    iget v4, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->q:I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aget v1, v1, v5

    add-int/2addr v1, v4

    iput v1, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->q:I

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->q:I

    const/high16 v1, 0x100000

    div-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->q:I

    const/4 v0, 0x0

    const-string v1, " -fs "

    iget-object v3, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->h:Landroid/content/Context;

    invoke-static {v0, v2, v1, v3}, Lcom/lenovo/performancecenter/coreui/util/RootPassage;->execRootCmd(Landroid/os/Handler;Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->handler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic e(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->k:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)Lcom/lenovo/safecenter/floatwindow/util/Tools;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->p:Lcom/lenovo/safecenter/floatwindow/util/Tools;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->q:I

    return v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->i:I

    return v0
.end method

.method static synthetic l(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->e:Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 149
    :goto_0
    return-void

    .line 148
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->handler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x7f090238
        :pswitch_0
    .end packed-switch
.end method

.method public showClearOverView(II)V
    .locals 4
    .param p1, "clear_after_size"    # I
    .param p2, "uate"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->a:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->k:Landroid/content/res/Resources;

    const v3, 0x7f0d06fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->k:Landroid/content/res/Resources;

    const v3, 0x7f0d06fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->k:Landroid/content/res/Resources;

    const v3, 0x7f0d06fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->k:Landroid/content/res/Resources;

    const v3, 0x7f0d06fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    return-void
.end method

.method public updateRunningView(I)V
    .locals 11
    .param p1, "memsize"    # I

    .prologue
    const v10, 0x7f0d06fd

    const v9, 0x7f0d06fa

    .line 224
    iget-object v5, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->p:Lcom/lenovo/safecenter/floatwindow/util/Tools;

    iget-object v6, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->d:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->k:Landroid/content/res/Resources;

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/floatwindow/util/Tools;->stringtoInt(Ljava/lang/String;)I

    move-result v2

    .line 230
    .local v2, "clear_before_rate":I
    iget-object v5, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->c:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->k:Landroid/content/res/Resources;

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "mem_present":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->p:Lcom/lenovo/safecenter/floatwindow/util/Tools;

    div-int/lit16 v6, p1, 0x400

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/floatwindow/util/Tools;->inttostring(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "app_mem":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->p:Lcom/lenovo/safecenter/floatwindow/util/Tools;

    invoke-virtual {v5, v3, v0}, Lcom/lenovo/safecenter/floatwindow/util/Tools;->getUeageSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 240
    .local v1, "clear_after_size":I
    iget-object v5, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->p:Lcom/lenovo/safecenter/floatwindow/util/Tools;

    iget-object v6, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->o:Ljava/lang/String;

    iget-object v7, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->p:Lcom/lenovo/safecenter/floatwindow/util/Tools;

    invoke-virtual {v7, v1}, Lcom/lenovo/safecenter/floatwindow/util/Tools;->inttostring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/lenovo/safecenter/floatwindow/util/Tools;->getUeageRate1(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 242
    .local v4, "uate":I
    iget-object v5, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->c:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->k:Landroid/content/res/Resources;

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->k:Landroid/content/res/Resources;

    const v8, 0x7f0d06fb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v5, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->d:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->k:Landroid/content/res/Resources;

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->k:Landroid/content/res/Resources;

    const v8, 0x7f0d06fe

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v5, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->e:Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;

    invoke-virtual {v5, v2, v4}, Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;->showClearAnimation1(II)V

    .line 252
    return-void
.end method
