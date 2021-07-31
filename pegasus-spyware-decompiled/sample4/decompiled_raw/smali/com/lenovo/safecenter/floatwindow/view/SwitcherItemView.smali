.class public Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;
.super Landroid/widget/LinearLayout;
.source "SwitcherItemView.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramAttributeSet"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->c:Landroid/content/Context;

    .line 20
    const v1, 0x7f030054

    invoke-static {p1, v1, p0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    const v1, 0x7f020090

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setBackgroundResource(I)V

    .line 22
    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setDuplicateParentStateEnabled(Z)V

    .line 23
    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setOrientation(I)V

    .line 24
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setGravity(I)V

    .line 25
    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->setClickable(Z)V

    .line 26
    const v1, 0x7f09024a

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->a:Landroid/widget/ImageView;

    .line 27
    const v1, 0x7f09024b

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->b:Landroid/widget/TextView;

    .line 29
    if-eqz p2, :cond_0

    .line 30
    sget-object v1, Lcom/lenovo/safecenter/R$styleable;->switcher:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 31
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->a:Landroid/widget/ImageView;

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 33
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method


# virtual methods
.method public setImage(I)V
    .locals 1
    .param p1, "drawableId"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 39
    return-void
.end method

.method public setLabelColor(I)V
    .locals 1
    .param p1, "drawableId"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherItemView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    return-void
.end method
