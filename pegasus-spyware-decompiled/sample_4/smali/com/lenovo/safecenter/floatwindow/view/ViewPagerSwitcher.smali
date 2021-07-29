.class public Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;
.super Landroid/widget/LinearLayout;
.source "ViewPagerSwitcher.java"


# static fields
.field public static final PREF_SWITCHER_OR_RUNNING_FLAG:Ljava/lang/String; = "switcher_or_running_flag"

.field public static final PREF_SWITCHER_SHOW_FLAG:Ljava/lang/String; = "switcher_windwo_show"

.field public static instance:Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/content/SharedPreferences;

.field private f:Landroid/content/Context;

.field private g:Z

.field private h:Landroid/view/animation/Animation;

.field private i:Landroid/view/animation/Animation;

.field private j:Landroid/view/animation/Animation;

.field private k:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    iput-boolean v2, p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->g:Z

    .line 28
    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->h:Landroid/view/animation/Animation;

    .line 30
    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->i:Landroid/view/animation/Animation;

    .line 38
    sput-object p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->instance:Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;

    .line 39
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->f:Landroid/content/Context;

    .line 40
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->setGravity(I)V

    .line 41
    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->setOrientation(I)V

    .line 42
    const v0, 0x7f030050

    invoke-static {p1, v0, p0}, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    const v0, 0x7f090230

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->a:Landroid/view/View;

    const v0, 0x7f090231

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->b:Landroid/view/View;

    const v0, 0x7f090232

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->c:Landroid/view/View;

    const v0, 0x7f09022e

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->f:Landroid/content/Context;

    const v1, 0x7f040002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->h:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->f:Landroid/content/Context;

    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->i:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->f:Landroid/content/Context;

    const v1, 0x7f040004

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->j:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->f:Landroid/content/Context;

    const v1, 0x7f040003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->k:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->f:Landroid/content/Context;

    const-string v1, "switcher_or_running_flag"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->e:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->e:Landroid/content/SharedPreferences;

    const-string v1, "switcher_windwo_show"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->g:Z

    iget-boolean v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->g:Z

    invoke-virtual {p0, v0, v3}, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->showSwitcherorRunningWindow(ZZ)V

    .line 44
    return-void
.end method


# virtual methods
.method public showSwitcherorRunningWindow(ZZ)V
    .locals 3
    .param p1, "SwitcherwindowFlag"    # Z
    .param p2, "fromClick"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 70
    if-eqz p1, :cond_1

    .line 71
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    if-eqz p2, :cond_0

    .line 79
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 80
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->i:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    if-eqz p2, :cond_0

    .line 89
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 90
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
