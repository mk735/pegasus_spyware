.class public Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;
.super Landroid/widget/FrameLayout;
.source "SwitcherContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$b;,
        Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$a;
    }
.end annotation


# static fields
.field public static receiver:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$b;

.field public static screenWindowDel:Z

.field private static z:Landroid/content/Context;


# instance fields
.field private A:Landroid/view/animation/Animation;

.field private B:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$a;

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Landroid/content/SharedPreferences;

.field private G:Landroid/os/Handler;

.field private a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

.field private b:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

.field private c:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

.field private d:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

.field private e:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

.field private f:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

.field private g:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

.field private h:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

.field private i:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

.field private j:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

.field private k:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

.field private l:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

.field private m:Landroid/widget/TextView;

.field private n:Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:I

.field private final s:I

.field private final t:I

.field private final u:I

.field private final v:I

.field private final w:I

.field private final x:I

.field private final y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->receiver:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$b;

    .line 86
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->screenWindowDel:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 59
    iput v2, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->o:I

    .line 60
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->p:I

    .line 61
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->q:I

    .line 62
    const/4 v0, 0x4

    iput v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->r:I

    .line 63
    const/4 v0, 0x5

    iput v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->s:I

    .line 64
    const/4 v0, 0x6

    iput v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->t:I

    .line 65
    const/4 v0, 0x7

    iput v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->u:I

    .line 67
    const/16 v0, 0x9

    iput v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->v:I

    .line 68
    const/16 v0, 0xa

    iput v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->w:I

    .line 69
    const/16 v0, 0xb

    iput v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->x:I

    .line 70
    const/16 v0, 0xc

    iput v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->y:I

    .line 82
    iput-boolean v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->C:Z

    .line 83
    iput-boolean v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->D:Z

    .line 84
    iput-boolean v2, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->E:Z

    .line 180
    new-instance v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;-><init>(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->G:Landroid/os/Handler;

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramAttributeSet"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 93
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput v6, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->o:I

    .line 60
    const/4 v4, 0x2

    iput v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->p:I

    .line 61
    const/4 v4, 0x3

    iput v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->q:I

    .line 62
    const/4 v4, 0x4

    iput v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->r:I

    .line 63
    const/4 v4, 0x5

    iput v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->s:I

    .line 64
    const/4 v4, 0x6

    iput v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->t:I

    .line 65
    const/4 v4, 0x7

    iput v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->u:I

    .line 67
    const/16 v4, 0x9

    iput v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->v:I

    .line 68
    const/16 v4, 0xa

    iput v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->w:I

    .line 69
    const/16 v4, 0xb

    iput v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->x:I

    .line 70
    const/16 v4, 0xc

    iput v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->y:I

    .line 82
    iput-boolean v7, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->C:Z

    .line 83
    iput-boolean v7, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->D:Z

    .line 84
    iput-boolean v6, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->E:Z

    .line 180
    new-instance v4, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;

    invoke-direct {v4, p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$1;-><init>(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)V

    iput-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->G:Landroid/os/Handler;

    .line 94
    sput-object p1, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    .line 95
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->n:Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

    if-nez v4, :cond_0

    .line 96
    new-instance v4, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

    invoke-direct {v4, p1}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->n:Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

    .line 97
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->n:Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->isMultiSim()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->n:Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->getDataSimId()J

    move-result-wide v1

    .line 99
    .local v1, "mSimId":J
    const-string v4, "dataSubscriberId"

    const v5, 0x8000

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 100
    .local v3, "smart_prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 101
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v4, "dataSubscriberId"

    invoke-interface {v0, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "mSimId":J
    .end local v3    # "smart_prefs":Landroid/content/SharedPreferences;
    :cond_0
    const v4, 0x7f030053

    invoke-static {p1, v4, p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v4, 0x7f090249

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->m:Landroid/widget/TextView;

    const v4, 0x7f09023d

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    iput-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v4, 0x7f09023e

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    iput-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v4, 0x7f09023f

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    iput-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->c:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v4, 0x7f090240

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    iput-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->d:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v4, 0x7f090241

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    iput-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->e:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v4, 0x7f090243

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    iput-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->g:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v4, 0x7f090247

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    iput-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->j:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v4, 0x7f090246

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    iput-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->i:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v4, 0x7f090245

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    iput-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->h:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v4, 0x7f090244

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    iput-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->k:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v4, 0x7f090248

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    iput-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->l:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v4, 0x7f090242

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    iput-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->f:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    invoke-direct {p0, v6}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(I)I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v5, 0x7f0200b8

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070033

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    :goto_0
    invoke-direct {p0, v7}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(Z)V

    invoke-direct {p0, v7}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b(Z)V

    invoke-direct {p0, v7}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->c(Z)V

    invoke-direct {p0, v7}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->d(Z)V

    invoke-direct {p0, v7}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->e(Z)V

    invoke-direct {p0, v7}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->f(Z)V

    iget-boolean v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->D:Z

    if-eqz v4, :cond_3

    :goto_1
    invoke-direct {p0, v7}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->h(Z)V

    invoke-direct {p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->c()V

    invoke-direct {p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b()V

    .line 107
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    invoke-virtual {v4, p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    invoke-virtual {v4, p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->c:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    invoke-virtual {v4, p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->d:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    invoke-virtual {v4, p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->e:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    invoke-virtual {v4, p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->g:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    invoke-virtual {v4, p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->j:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    invoke-virtual {v4, p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->i:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    invoke-virtual {v4, p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->h:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    invoke-virtual {v4, p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->k:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    invoke-virtual {v4, p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->l:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    invoke-virtual {v4, p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->f:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    invoke-virtual {v4, p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    sget-object v5, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->receiver:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$b;

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    sput-object v5, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->receiver:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$b;

    :cond_1
    new-instance v5, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$b;

    invoke-direct {v5, p0, v7}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$b;-><init>(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;B)V

    sput-object v5, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->receiver:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$b;

    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.safecenter.broadcast.openGuestMode"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.safecenter.broadcast.openChildMode"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.lenovo.safecenter.lightChanges"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v5, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    sget-object v6, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->receiver:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$b;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    return-void

    .line 105
    :cond_2
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v5, 0x7f0200b9

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070032

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0, v7}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->g(Z)V

    goto/16 :goto_1
.end method

.method private a(I)I
    .locals 3
    .param p1, "item"    # I

    .prologue
    .line 932
    const/4 v0, 0x0

    .line 933
    .local v0, "status":I
    packed-switch p1, :pswitch_data_0

    .line 969
    :goto_0
    :pswitch_0
    return v0

    .line 935
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->n:Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->getStatus(Ljava/lang/String;)I

    move-result v0

    .line 936
    goto :goto_0

    .line 938
    :pswitch_2
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->n:Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->getStatus(Ljava/lang/String;)I

    move-result v0

    .line 939
    goto :goto_0

    .line 941
    :pswitch_3
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->n:Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

    const-string v2, "ringtone"

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->getStatus(Ljava/lang/String;)I

    move-result v0

    .line 942
    goto :goto_0

    .line 944
    :pswitch_4
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->n:Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

    const-string v2, "vibrate"

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->getStatus(Ljava/lang/String;)I

    move-result v0

    .line 945
    goto :goto_0

    .line 947
    :pswitch_5
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->n:Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

    const-string v2, "guest_mode"

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->getStatus(Ljava/lang/String;)I

    move-result v0

    .line 948
    goto :goto_0

    .line 950
    :pswitch_6
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->n:Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

    const-string v2, "bluetooth"

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->getStatus(Ljava/lang/String;)I

    move-result v0

    .line 951
    goto :goto_0

    .line 953
    :pswitch_7
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->n:Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

    const-string v2, "child_mode"

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->getStatus(Ljava/lang/String;)I

    move-result v0

    .line 954
    goto :goto_0

    .line 956
    :pswitch_8
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->n:Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

    const-string v2, "airplane"

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->getStatus(Ljava/lang/String;)I

    move-result v0

    .line 957
    goto :goto_0

    .line 959
    :pswitch_9
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->n:Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

    const-string v2, "brightness"

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->getStatus(Ljava/lang/String;)I

    move-result v0

    .line 960
    goto :goto_0

    .line 962
    :pswitch_a
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->n:Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

    const-string v2, "timeout"

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->getStatus(Ljava/lang/String;)I

    move-result v0

    .line 963
    goto :goto_0

    .line 968
    :pswitch_b
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->n:Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

    const-string v2, "autorotate"

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->getStatus(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 933
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(IIZ)V
    .locals 4
    .param p1, "item"    # I
    .param p2, "value"    # I
    .param p3, "IsOpening"    # Z

    .prologue
    const v2, 0x7f0d0199

    .line 521
    const/16 v1, 0x14

    if-ne p1, v1, :cond_1

    .line 523
    sget-object v1, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    const v2, 0x7f0d06e6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, "prompt":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 537
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->m:Landroid/widget/TextView;

    const v2, 0x7f02009e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 540
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->A:Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    .line 541
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->A:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 542
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->A:Landroid/view/animation/Animation;

    .line 545
    :cond_0
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->A:Landroid/view/animation/Animation;

    .line 546
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->A:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x640

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 547
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->m:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->A:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 548
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->A:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->start()V

    .line 551
    new-instance v1, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$a;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$a;-><init>(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->B:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$a;

    .line 552
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->B:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$a;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$a;->start()V

    .line 554
    return-void

    .line 524
    .end local v0    # "prompt":Ljava/lang/String;
    :cond_1
    if-eqz p3, :cond_2

    .line 525
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->generatePrompting(II)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "prompt":Ljava/lang/String;
    goto :goto_0

    .line 527
    .end local v0    # "prompt":Ljava/lang/String;
    :cond_2
    const/16 v1, 0x9

    if-ne p1, v1, :cond_3

    .line 528
    invoke-virtual {p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "prompt":Ljava/lang/String;
    goto :goto_0

    .line 529
    .end local v0    # "prompt":Ljava/lang/String;
    :cond_3
    const/16 v1, 0xa

    if-ne p1, v1, :cond_4

    .line 530
    invoke-virtual {p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "prompt":Ljava/lang/String;
    goto :goto_0

    .line 532
    .end local v0    # "prompt":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->generatePrompt(II)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "prompt":Ljava/lang/String;
    goto :goto_0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(IIZ)V

    return-void
.end method

.method private a(Z)V
    .locals 5
    .param p1, "isFromClick"    # Z

    .prologue
    const/4 v4, 0x2

    .line 265
    invoke-direct {p0, v4}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(I)I

    move-result v0

    .line 270
    .local v0, "currentData":I
    if-nez v0, :cond_1

    .line 271
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v2, 0x7f0200a6

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 272
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    .line 277
    :goto_0
    if-eqz p1, :cond_0

    .line 278
    const/4 v1, 0x0

    invoke-direct {p0, v4, v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(IIZ)V

    .line 281
    :cond_0
    return-void

    .line 274
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v2, 0x7f0200a7

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 275
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->D:Z

    return p1
.end method

.method private static b(I)I
    .locals 1
    .param p0, "a"    # I

    .prologue
    .line 977
    const/4 v0, 0x0

    .line 978
    .local v0, "b":I
    packed-switch p0, :pswitch_data_0

    .line 984
    :goto_0
    return v0

    .line 980
    :pswitch_0
    const/4 v0, 0x1

    .line 981
    goto :goto_0

    .line 983
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 978
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b()V
    .locals 4

    .prologue
    .line 441
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(I)I

    move-result v0

    .line 442
    .local v0, "childMode":I
    if-nez v0, :cond_0

    .line 443
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->i:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v2, 0x7f02009c

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 444
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->i:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    sget-object v2, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    .line 449
    :goto_0
    return-void

    .line 446
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->i:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v2, 0x7f02009d

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 447
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->i:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    sget-object v2, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 5
    .param p1, "isFromClick"    # Z

    .prologue
    const/4 v4, 0x3

    .line 288
    invoke-direct {p0, v4}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(I)I

    move-result v0

    .line 289
    .local v0, "ringtone":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 290
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->c:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v2, 0x7f0200a9

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 291
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->c:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    sget-object v2, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    .line 301
    :goto_0
    if-eqz p1, :cond_0

    .line 302
    const/4 v1, 0x0

    invoke-direct {p0, v4, v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(IIZ)V

    .line 304
    :cond_0
    return-void

    .line 298
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->c:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v2, 0x7f0200a8

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 299
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->c:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    sget-object v2, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->E:Z

    return v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 454
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(I)I

    move-result v0

    .line 455
    .local v0, "guestMode":I
    if-nez v0, :cond_0

    .line 456
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->j:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v2, 0x7f0200b6

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 457
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->j:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    sget-object v2, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    .line 462
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->j:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v2, 0x7f0200b7

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 460
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->j:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    sget-object v2, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    goto :goto_0
.end method

.method private c(Z)V
    .locals 5
    .param p1, "isFromClick"    # Z

    .prologue
    const/4 v4, 0x4

    .line 311
    invoke-direct {p0, v4}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(I)I

    move-result v0

    .line 312
    .local v0, "vibrate":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 313
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->d:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v2, 0x7f0200b5

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 314
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->d:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    sget-object v2, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    .line 319
    :goto_0
    if-eqz p1, :cond_0

    .line 320
    const/4 v1, 0x0

    invoke-direct {p0, v4, v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(IIZ)V

    .line 322
    :cond_0
    return-void

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->d:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v2, 0x7f0200b4

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 317
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->d:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    sget-object v2, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->k:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    return-object v0
.end method

.method private d(Z)V
    .locals 5
    .param p1, "isFromClick"    # Z

    .prologue
    const/4 v4, 0x5

    const v3, 0x7f070032

    .line 328
    invoke-direct {p0, v4}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(I)I

    move-result v0

    .line 329
    .local v0, "brightness":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 330
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->e:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v2, 0x7f0200a2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 331
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->e:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    sget-object v2, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    .line 349
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 350
    const/4 v1, 0x0

    invoke-direct {p0, v4, v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(IIZ)V

    .line 352
    :cond_1
    return-void

    .line 333
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 334
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->e:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v2, 0x7f0200a3

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 335
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->e:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    sget-object v2, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    goto :goto_0

    .line 337
    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 338
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->e:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v2, 0x7f0200a4

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 339
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->e:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    sget-object v2, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    goto :goto_0

    .line 341
    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 342
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->e:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v2, 0x7f0200a1

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 343
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->e:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    sget-object v2, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    goto :goto_0

    .line 345
    :cond_5
    if-ne v0, v4, :cond_0

    .line 346
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->e:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v2, 0x7f0200a5

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 347
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->e:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    sget-object v2, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)V
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->g(Z)V

    return-void
.end method

.method private e(Z)V
    .locals 5
    .param p1, "isFromClick"    # Z

    .prologue
    const/4 v4, 0x6

    .line 358
    invoke-direct {p0, v4}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(I)I

    move-result v0

    .line 359
    .local v0, "rotate":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 360
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->f:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v2, 0x7f0200ab

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 361
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->f:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    sget-object v2, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    .line 366
    :goto_0
    if-eqz p1, :cond_0

    .line 367
    const/4 v1, 0x0

    invoke-direct {p0, v4, v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(IIZ)V

    .line 369
    :cond_0
    return-void

    .line 363
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->f:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v2, 0x7f0200aa

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 364
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->f:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    sget-object v2, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->G:Landroid/os/Handler;

    return-object v0
.end method

.method private f(Z)V
    .locals 5
    .param p1, "isFromClick"    # Z

    .prologue
    const/4 v4, 0x7

    .line 375
    invoke-direct {p0, v4}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(I)I

    move-result v0

    .line 376
    .local v0, "timeout":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 377
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->g:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v2, 0x7f0200b1

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 385
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->g:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    sget-object v2, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    .line 386
    if-eqz p1, :cond_1

    .line 387
    const/4 v1, 0x0

    invoke-direct {p0, v4, v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(IIZ)V

    .line 389
    :cond_1
    return-void

    .line 378
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 379
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->g:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v2, 0x7f0200af

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    goto :goto_0

    .line 380
    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 381
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->g:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v2, 0x7f0200b0

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    goto :goto_0

    .line 382
    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->g:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v2, 0x7f0200ae

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b()V

    return-void
.end method

.method private g(Z)V
    .locals 5
    .param p1, "isFromClick"    # Z

    .prologue
    const/16 v4, 0xb

    .line 471
    invoke-direct {p0, v4}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(I)I

    move-result v0

    .line 472
    .local v0, "bluetooth":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 473
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->k:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v2, 0x7f02009b

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 474
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->k:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    sget-object v2, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    .line 479
    :goto_0
    if-eqz p1, :cond_0

    .line 480
    const/4 v1, 0x0

    invoke-direct {p0, v4, v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(IIZ)V

    .line 482
    :cond_0
    return-void

    .line 476
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->k:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v2, 0x7f02009a

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 477
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->k:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    sget-object v2, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->c()V

    return-void
.end method

.method private h(Z)V
    .locals 7
    .param p1, "isFromClick"    # Z

    .prologue
    const/16 v6, 0xc

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 489
    invoke-direct {p0, v6}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(I)I

    move-result v0

    .line 490
    .local v0, "flightmode":I
    if-ne v0, v5, :cond_2

    .line 491
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->l:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v2, 0x7f020099

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 492
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->l:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    sget-object v2, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    .line 494
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    invoke-virtual {v1, v4}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setClickable(Z)V

    .line 495
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->k:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    invoke-virtual {v1, v4}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setClickable(Z)V

    .line 496
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    invoke-virtual {v1, v4}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setEnabled(Z)V

    .line 497
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->k:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    invoke-virtual {v1, v4}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setEnabled(Z)V

    .line 509
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 510
    invoke-direct {p0, v6, v0, v4}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(IIZ)V

    .line 512
    :cond_1
    return-void

    .line 499
    :cond_2
    if-nez v0, :cond_0

    .line 500
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->l:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    const v2, 0x7f020098

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 501
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->l:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    sget-object v2, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    .line 503
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    invoke-virtual {v1, v5}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setClickable(Z)V

    .line 504
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->k:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    invoke-virtual {v1, v5}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setClickable(Z)V

    .line 505
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    invoke-virtual {v1, v5}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setEnabled(Z)V

    .line 506
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->k:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    invoke-virtual {v1, v5}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)V
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->d(Z)V

    return-void
.end method

.method static synthetic j(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->C:Z

    return v0
.end method

.method static synthetic k(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->C:Z

    return v0
.end method

.method public static unregisterReceiver()V
    .locals 2

    .prologue
    .line 175
    sget-object v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->receiver:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$b;

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    sget-object v1, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->receiver:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 178
    :cond_0
    return-void
.end method


# virtual methods
.method public generatePrompt(II)Ljava/lang/String;
    .locals 10
    .param p1, "item"    # I
    .param p2, "value"    # I

    .prologue
    const v7, 0x7f0d070c

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 599
    const-string v3, ""

    .line 600
    .local v3, "prompt":Ljava/lang/String;
    const/4 v6, 0x5

    if-ne p1, v6, :cond_0

    .line 601
    packed-switch p2, :pswitch_data_0

    .line 684
    :goto_0
    return-object v3

    .line 604
    :pswitch_0
    sget-object v6, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    const/16 v8, 0x19

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 606
    goto :goto_0

    .line 608
    :pswitch_1
    sget-object v6, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    const/16 v8, 0x32

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 610
    goto :goto_0

    .line 612
    :pswitch_2
    sget-object v6, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    const/16 v8, 0x4b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 614
    goto :goto_0

    .line 616
    :pswitch_3
    sget-object v6, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    const/16 v8, 0x64

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 618
    goto :goto_0

    .line 620
    :pswitch_4
    sget-object v6, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    const v7, 0x7f0d070d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 621
    :cond_0
    const/4 v6, 0x7

    if-ne p1, v6, :cond_1

    .line 626
    sget-object v6, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    const v7, 0x7f0d06f7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 627
    .local v4, "second_timeout":Ljava/lang/String;
    sget-object v6, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    const v7, 0x7f0d06f6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 628
    .local v1, "minute_timeout":Ljava/lang/String;
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 630
    :pswitch_5
    new-array v6, v8, [Ljava/lang/Object;

    const-string v7, "30"

    aput-object v7, v6, v9

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 631
    goto/16 :goto_0

    .line 633
    :pswitch_6
    new-array v6, v8, [Ljava/lang/Object;

    const-string v7, "1"

    aput-object v7, v6, v9

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 634
    goto/16 :goto_0

    .line 636
    :pswitch_7
    new-array v6, v8, [Ljava/lang/Object;

    const-string v7, "2"

    aput-object v7, v6, v9

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 637
    goto/16 :goto_0

    .line 639
    :pswitch_8
    new-array v6, v8, [Ljava/lang/Object;

    const-string v7, "10"

    aput-object v7, v6, v9

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 645
    .end local v1    # "minute_timeout":Ljava/lang/String;
    .end local v4    # "second_timeout":Ljava/lang/String;
    :cond_1
    const-string v2, ""

    .line 646
    .local v2, "name":Ljava/lang/String;
    const-string v5, ""

    .line 647
    .local v5, "verb":Ljava/lang/String;
    sget-object v6, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    const v7, 0x7f0d06f4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 648
    .local v0, "ALREADY":Ljava/lang/String;
    packed-switch p1, :pswitch_data_2

    .line 672
    :goto_1
    :pswitch_9
    packed-switch p2, :pswitch_data_3

    .line 681
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 652
    :pswitch_a
    sget-object v6, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    const v7, 0x7f0d06f3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 656
    :pswitch_b
    sget-object v6, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    const v7, 0x7f0d06ed

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 658
    :pswitch_c
    sget-object v6, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    const v7, 0x7f0d06e8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 660
    :pswitch_d
    sget-object v6, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    const v7, 0x7f0d06e9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 664
    :pswitch_e
    sget-object v6, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    const v7, 0x7f0d06f0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 666
    :pswitch_f
    sget-object v6, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    const v7, 0x7f0d06eb

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 668
    :pswitch_10
    sget-object v6, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    const v7, 0x7f0d06ec

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 674
    :pswitch_11
    sget-object v6, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    const v7, 0x7f0d070e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 676
    :pswitch_12
    sget-object v6, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    const v7, 0x7f0d070f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 601
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 628
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 648
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_9
        :pswitch_b
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_e
        :pswitch_a
    .end packed-switch

    .line 672
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
    .end packed-switch
.end method

.method public generatePrompting(II)Ljava/lang/String;
    .locals 5
    .param p1, "item"    # I
    .param p2, "value"    # I

    .prologue
    .line 572
    const-string v2, ""

    .line 574
    .local v2, "verb":Ljava/lang/String;
    const-string v0, ""

    .line 575
    .local v0, "name":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 581
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 594
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 595
    .local v1, "prompt":Ljava/lang/String;
    return-object v1

    .line 577
    .end local v1    # "prompt":Ljava/lang/String;
    :pswitch_0
    sget-object v3, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    const v4, 0x7f0d070b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 578
    goto :goto_0

    .line 580
    :pswitch_1
    sget-object v3, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    const v4, 0x7f0d070a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 586
    :sswitch_0
    sget-object v3, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    const v4, 0x7f0d06e8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 588
    :sswitch_1
    sget-object v3, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    const v4, 0x7f0d06e9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 590
    :sswitch_2
    sget-object v3, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    const v4, 0x7f0d06f0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 575
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 581
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xb -> :sswitch_2
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 35
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 748
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v32

    packed-switch v32, :pswitch_data_0

    .line 925
    :cond_0
    :goto_0
    return-void

    .line 751
    :pswitch_0
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->E:Z

    .line 752
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(I)I

    move-result v30

    .line 753
    .local v30, "wifiCur":I
    invoke-static/range {v30 .. v30}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b(I)I

    move-result v29

    .line 754
    .local v29, "wifi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->n:Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

    move-object/from16 v32, v0

    const-string v33, "wifi"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->setStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 758
    .end local v29    # "wifi":I
    .end local v30    # "wifiCur":I
    :pswitch_1
    const/16 v32, 0x1

    const/16 v33, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(I)I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1

    .line 759
    const/16 v32, 0x14

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(IIZ)V

    goto :goto_0

    .line 762
    :cond_1
    sget-boolean v32, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->isMultiSim:Z

    if-eqz v32, :cond_2

    .line 763
    new-instance v24, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;

    sget-object v32, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;-><init>(Landroid/content/Context;)V

    .line 764
    .local v24, "utils":Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;
    const/16 v32, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;->getSimState(I)I

    move-result v32

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_3

    const/16 v32, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;->getSimState(I)I

    move-result v32

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_3

    .line 765
    const/16 v32, 0x14

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(IIZ)V

    goto/16 :goto_0

    .line 769
    .end local v24    # "utils":Lcom/lenovo/safecenter/floatwindow/util/MultiSIMUtils;
    :cond_2
    sget-object v32, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    const-string v33, "phone"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/TelephonyManager;

    .line 770
    .local v21, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v32

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_3

    .line 771
    const/16 v32, 0x14

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(IIZ)V

    goto/16 :goto_0

    .line 775
    .end local v21    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->C:Z

    move/from16 v32, v0

    if-nez v32, :cond_0

    .line 778
    const/16 v32, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(I)I

    move-result v12

    .line 779
    .local v12, "dataCur":I
    invoke-static {v12}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b(I)I

    move-result v11

    .line 780
    .local v11, "data":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->n:Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

    move-object/from16 v32, v0

    const-string v33, "data"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v11}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->setStatus(Ljava/lang/String;I)V

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    move-object/from16 v32, v0

    const v33, 0x7f0200a7

    invoke-virtual/range {v32 .. v33}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 782
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->C:Z

    .line 783
    const/16 v32, 0x2

    const/16 v33, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v11, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(IIZ)V

    .line 784
    new-instance v14, Landroid/os/Handler;

    invoke-direct {v14}, Landroid/os/Handler;-><init>()V

    .line 785
    .local v14, "handlerData":Landroid/os/Handler;
    new-instance v32, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$2;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$2;-><init>(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)V

    const-wide/16 v33, 0x1770

    move-object/from16 v0, v32

    move-wide/from16 v1, v33

    invoke-virtual {v14, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 798
    .end local v11    # "data":I
    .end local v12    # "dataCur":I
    .end local v14    # "handlerData":Landroid/os/Handler;
    :pswitch_2
    const/16 v32, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(I)I

    move-result v18

    .line 799
    .local v18, "ringtoneCur":I
    invoke-static/range {v18 .. v18}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b(I)I

    move-result v17

    .line 800
    .local v17, "ringtone":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->n:Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

    move-object/from16 v32, v0

    const-string v33, "ringtone"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->setStatus(Ljava/lang/String;I)V

    .line 801
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b(Z)V

    goto/16 :goto_0

    .line 805
    .end local v17    # "ringtone":I
    .end local v18    # "ringtoneCur":I
    :pswitch_3
    const/16 v32, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(I)I

    move-result v26

    .line 806
    .local v26, "vibrateCur":I
    invoke-static/range {v26 .. v26}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b(I)I

    move-result v25

    .line 807
    .local v25, "vibrate":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->n:Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

    move-object/from16 v32, v0

    const-string v33, "vibrate"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->setStatus(Ljava/lang/String;I)V

    .line 808
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->c(Z)V

    goto/16 :goto_0

    .line 812
    .end local v25    # "vibrate":I
    .end local v26    # "vibrateCur":I
    :pswitch_4
    const/16 v32, 0x0

    sput-boolean v32, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->screenWindowDel:Z

    .line 813
    const/4 v7, 0x0

    .line 814
    .local v7, "brightness":I
    const/16 v32, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(I)I

    move-result v8

    .line 815
    .local v8, "brightnessCur":I
    const/16 v32, 0x5

    move/from16 v0, v32

    if-ge v8, v0, :cond_5

    .line 816
    add-int/lit8 v7, v8, 0x1

    .line 820
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->n:Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

    move-object/from16 v32, v0

    const-string v33, "brightness"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v7}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->setStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 817
    :cond_5
    const/16 v32, 0x5

    move/from16 v0, v32

    if-ne v8, v0, :cond_4

    .line 818
    const/4 v7, 0x1

    goto :goto_1

    .line 825
    .end local v7    # "brightness":I
    .end local v8    # "brightnessCur":I
    :pswitch_5
    const/16 v32, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(I)I

    move-result v20

    .line 826
    .local v20, "rotateCur":I
    invoke-static/range {v20 .. v20}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b(I)I

    move-result v19

    .line 827
    .local v19, "rotate":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->n:Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

    move-object/from16 v32, v0

    const-string v33, "autorotate"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->setStatus(Ljava/lang/String;I)V

    .line 828
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->e(Z)V

    goto/16 :goto_0

    .line 832
    .end local v19    # "rotate":I
    .end local v20    # "rotateCur":I
    :pswitch_6
    const/16 v22, 0x0

    .line 833
    .local v22, "timeout":I
    const/16 v32, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(I)I

    move-result v23

    .line 834
    .local v23, "timeoutCur":I
    const/16 v32, 0x4

    move/from16 v0, v23

    move/from16 v1, v32

    if-ge v0, v1, :cond_7

    .line 835
    add-int/lit8 v22, v23, 0x1

    .line 839
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->n:Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

    move-object/from16 v32, v0

    const-string v33, "timeout"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->setStatus(Ljava/lang/String;I)V

    .line 840
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->f(Z)V

    goto/16 :goto_0

    .line 836
    :cond_7
    const/16 v32, 0x4

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_6

    .line 837
    const/16 v22, 0x1

    goto :goto_2

    .line 844
    .end local v22    # "timeout":I
    .end local v23    # "timeoutCur":I
    :pswitch_7
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->nacServerIsExist()Z

    move-result v32

    if-eqz v32, :cond_8

    .line 845
    const/16 v32, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(I)I

    move-result v9

    .line 846
    .local v9, "childMode":I
    invoke-static {v9}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b(I)I

    move-result v10

    .line 847
    .local v10, "childModeOr":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->n:Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

    move-object/from16 v32, v0

    const-string v33, "child_mode"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v10}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->setStatus(Ljava/lang/String;I)V

    .line 848
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b()V

    goto/16 :goto_0

    .line 850
    .end local v9    # "childMode":I
    .end local v10    # "childModeOr":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->i:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    move-object/from16 v32, v0

    const v33, 0x7f02009c

    invoke-virtual/range {v32 .. v33}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->i:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    move-object/from16 v32, v0

    sget-object v33, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f070033

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getColor(I)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    .line 852
    const/16 v32, 0x9

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(IIZ)V

    goto/16 :goto_0

    .line 857
    :pswitch_8
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->nacServerIsExist()Z

    move-result v32

    if-eqz v32, :cond_9

    .line 858
    const/16 v32, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(I)I

    move-result v27

    .line 859
    .local v27, "visitorMode":I
    invoke-static/range {v27 .. v27}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b(I)I

    move-result v28

    .line 860
    .local v28, "visitorModeOr":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->n:Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

    move-object/from16 v32, v0

    const-string v33, "guest_mode"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->setStatus(Ljava/lang/String;I)V

    .line 861
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->c()V

    goto/16 :goto_0

    .line 863
    .end local v27    # "visitorMode":I
    .end local v28    # "visitorModeOr":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->j:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    move-object/from16 v32, v0

    const v33, 0x7f0200b6

    invoke-virtual/range {v32 .. v33}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->j:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    move-object/from16 v32, v0

    sget-object v33, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f070033

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getColor(I)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    .line 865
    const/16 v32, 0xa

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(IIZ)V

    goto/16 :goto_0

    .line 871
    :pswitch_9
    sget-object v32, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->instanceFloatWindow:Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;

    invoke-virtual/range {v32 .. v32}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->delFloatWindow()V

    .line 872
    sget-object v32, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    invoke-static/range {v32 .. v32}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->startIntentTraffic(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 876
    :pswitch_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->D:Z

    move/from16 v32, v0

    if-nez v32, :cond_0

    .line 879
    const/16 v32, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(I)I

    move-result v5

    .line 880
    .local v5, "bluetoothCur":I
    invoke-static {v5}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b(I)I

    move-result v4

    .line 881
    .local v4, "bluetooth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->n:Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

    move-object/from16 v32, v0

    const-string v33, "bluetooth"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v4}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->setStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 885
    .end local v4    # "bluetooth":I
    .end local v5    # "bluetoothCur":I
    :pswitch_b
    const/16 v32, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(I)I

    move-result v16

    .line 886
    .local v16, "radioCur":I
    invoke-static/range {v16 .. v16}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b(I)I

    move-result v15

    .line 887
    .local v15, "radio":I
    sget-object v32, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->z:Landroid/content/Context;

    const-string v33, "flght_status"

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->F:Landroid/content/SharedPreferences;

    .line 888
    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v15, v0, :cond_b

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->F:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    const-string v33, "wifi_status"

    const/16 v34, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(I)I

    move-result v34

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    const-string v33, "data_status"

    const/16 v34, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(I)I

    move-result v34

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    const-string v33, "bluetooth_status"

    const/16 v34, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a(I)I

    move-result v34

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->n:Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

    move-object/from16 v32, v0

    const-string v33, "wifi"

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->setStatus(Ljava/lang/String;I)V

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    move-object/from16 v32, v0

    const v33, 0x7f0200b8

    invoke-virtual/range {v32 .. v33}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    move-object/from16 v32, v0

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f070033

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getColor(I)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->n:Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

    move-object/from16 v32, v0

    const-string v33, "data"

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->setStatus(Ljava/lang/String;I)V

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    move-object/from16 v32, v0

    const v33, 0x7f0200a6

    invoke-virtual/range {v32 .. v33}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    move-object/from16 v32, v0

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f070033

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getColor(I)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->n:Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

    move-object/from16 v32, v0

    const-string v33, "bluetooth"

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->setStatus(Ljava/lang/String;I)V

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setEnabled(Z)V

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->k:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setEnabled(Z)V

    .line 923
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->n:Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

    move-object/from16 v32, v0

    const-string v33, "airplane"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v15}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->setStatus(Ljava/lang/String;I)V

    .line 924
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->h(Z)V

    goto/16 :goto_0

    .line 904
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setEnabled(Z)V

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->k:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setEnabled(Z)V

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->F:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "wifi_status"

    const/16 v34, 0x0

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v31

    .line 907
    .local v31, "wifiFlag":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->F:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "data_status"

    const/16 v34, 0x0

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 908
    .local v13, "dataFlag":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->F:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "bluetooth_status"

    const/16 v34, 0x0

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 909
    .local v6, "bluetoothFlag":I
    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_c

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->n:Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

    move-object/from16 v32, v0

    const-string v33, "wifi"

    const/16 v34, 0x1

    invoke-virtual/range {v32 .. v34}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->setStatus(Ljava/lang/String;I)V

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    move-object/from16 v32, v0

    const v33, 0x7f0200b9

    invoke-virtual/range {v32 .. v33}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    move-object/from16 v32, v0

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f070032

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getColor(I)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    .line 914
    :cond_c
    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v13, v0, :cond_d

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->n:Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

    move-object/from16 v32, v0

    const-string v33, "data"

    const/16 v34, 0x1

    invoke-virtual/range {v32 .. v34}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->setStatus(Ljava/lang/String;I)V

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    move-object/from16 v32, v0

    const v33, 0x7f0200a7

    invoke-virtual/range {v32 .. v33}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setImage(I)V

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b:Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;

    move-object/from16 v32, v0

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f070032

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getColor(I)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setLabelColor(I)V

    .line 919
    :cond_d
    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v6, v0, :cond_a

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->n:Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;

    move-object/from16 v32, v0

    const-string v33, "bluetooth"

    const/16 v34, 0x1

    invoke-virtual/range {v32 .. v34}, Lcom/lenovo/safecenter/floatwindow/util/SettingUtil;->setStatus(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 748
    nop

    :pswitch_data_0
    .packed-switch 0x7f09023d
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method
