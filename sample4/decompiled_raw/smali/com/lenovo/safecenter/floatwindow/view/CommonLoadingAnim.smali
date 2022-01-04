.class public Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;
.super Landroid/widget/LinearLayout;
.source "CommonLoadingAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim$a;
    }
.end annotation


# static fields
.field public static final CONTINUE_ANIM:I = 0x1

.field public static final START_ANIM:I


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Handler;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;->a:Landroid/content/Context;

    .line 30
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;->a:Landroid/content/Context;

    const v1, 0x7f030061

    invoke-static {v0, v1, p0}, Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;->setOrientation(I)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;->setGravity(I)V

    new-instance v0, Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim$a;-><init>(Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;B)V

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;->b:Landroid/os/Handler;

    const v0, 0x7f09028c

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;->c:Landroid/widget/TextView;

    const v0, 0x7f09028d

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;->d:Landroid/widget/TextView;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onWindowVisibilityChanged(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    .line 71
    if-nez p1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;->b:Landroid/os/Handler;

    invoke-virtual {v1, v2, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 77
    :cond_0
    return-void
.end method
