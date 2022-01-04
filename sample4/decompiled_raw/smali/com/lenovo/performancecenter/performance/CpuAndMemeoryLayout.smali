.class public Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;
.super Landroid/widget/LinearLayout;
.source "CpuAndMemeoryLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout$a;

.field private c:Ljava/lang/Thread;

.field private d:Z

.field private e:I

.field private f:Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->d:Z

    .line 27
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->e:I

    .line 34
    invoke-direct {p0, p1}, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->a(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "i"    # I
    .param p3, "as"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->d:Z

    .line 27
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->e:I

    .line 40
    invoke-direct {p0, p1}, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->a(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "as"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->d:Z

    .line 27
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->e:I

    .line 45
    const-string v0, "CpuAndMemeoryLayout"

    const-string v1, "three..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-direct {p0, p1}, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->a(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    if-nez p1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->a:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout$a;

    invoke-direct {v0, p0}, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout$a;-><init>(Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;)V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->b:Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout$a;

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ec

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 57
    const v0, 0x7f0904d6

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->f:Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;

    .line 58
    const v0, 0x7f0904fe

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->g:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0904fd

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->h:Landroid/widget/TextView;

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;II)V
    .locals 4
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    const/16 v3, 0xa

    .line 16
    if-ge p2, v3, :cond_0

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-ge p1, v3, :cond_1

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->h:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->f:Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;

    mul-int/lit16 v1, p2, 0xf0

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->bpRotate(I)Z

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->f:Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;

    mul-int/lit16 v1, p1, 0xf0

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->spRotate(I)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->h:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;)Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout$a;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->b:Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout$a;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;

    .prologue
    .line 16
    iget v0, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->e:I

    return v0
.end method

.method static synthetic d(Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->c:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;

    .prologue
    .line 16
    iget v0, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->e:I

    return v0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 204
    const-string v0, "CpuAndMemeoryLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addView()...view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 206
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 211
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 212
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 217
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 218
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 230
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 231
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 223
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 161
    const-string v0, "CpuAndMemeoryLayout"

    const-string v1, "---> onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->d:Z

    .line 163
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 156
    const-string v0, "CpuAndMemeoryLayout"

    const-string v1, "---> onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0}, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->startThread()V

    .line 158
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 235
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 236
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->c:Ljava/lang/Thread;

    .line 167
    return-void
.end method

.method public startThread()V
    .locals 2

    .prologue
    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->d:Z

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->e:I

    .line 94
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout$1;

    invoke-direct {v1, p0}, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout$1;-><init>(Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->c:Ljava/lang/Thread;

    .line 150
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 151
    return-void
.end method
