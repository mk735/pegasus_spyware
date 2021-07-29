.class public Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;
.super Landroid/widget/LinearLayout;
.source "ProcessRunningView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$a;
    }
.end annotation


# static fields
.field public static final SWITCHER_VIEW:I = 0xc8

.field public static processrunning:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;


# instance fields
.field private a:Landroid/widget/GridView;

.field private b:Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;

.field private c:Landroid/widget/TextView;

.field public context:Landroid/content/Context;

.field private d:Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;

.field private e:Landroid/os/Handler;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/performancecenter/service/object/UsedAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->context:Landroid/content/Context;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->f:Ljava/util/List;

    new-instance v0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$a;

    invoke-direct {v0, p0, v2}, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$a;-><init>(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;B)V

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->e:Landroid/os/Handler;

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->context:Landroid/content/Context;

    const v1, 0x7f030052

    invoke-static {v0, v1, p0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f09023a

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->a:Landroid/widget/GridView;

    const v0, 0x7f09023b

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->c:Landroid/widget/TextView;

    const v0, 0x7f09023c

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->d:Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->e:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->a:Landroid/widget/GridView;

    new-instance v1, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$1;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$1;-><init>(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 56
    sput-object p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->processrunning:Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->a:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;)Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;
    .param p1, "x1"    # Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->b:Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;

    return-object p1
.end method

.method static synthetic a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "x1"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 37
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->getRunningAppInfoJustInLauncher(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
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

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v0, v0, v5

    new-instance v4, Lcom/lenovo/performancecenter/service/object/UsedAppInfo;

    invoke-direct {v4, v1, v0}, Lcom/lenovo/performancecenter/service/object/UsedAppInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method static synthetic a(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->f:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;)Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->d:Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;)V
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    .prologue
    .line 37
    new-instance v0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$2;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$2;-><init>(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView$2;->start()V

    return-void
.end method

.method static synthetic d(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;)Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->b:Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->e:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public clear_view()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->a:Landroid/widget/GridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessRunningView;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    return-void
.end method
