.class final Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;
.super Ljava/lang/Object;
.source "FlowView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/floatwindow/view/FlowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;


# direct methods
.method private constructor <init>(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/safecenter/floatwindow/view/FlowView;B)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;-><init>(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v6, 0x8

    .line 185
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-static {v4}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->f(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 186
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-static {v4}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->g(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)Landroid/view/ViewStub;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 189
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    const v5, 0x7f09022a

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 190
    .local v3, "text_float_dialog_msg":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    const v5, 0x7f09022b

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 191
    .local v2, "float_checkbox":Landroid/widget/CheckBox;
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    const v5, 0x7f09022d

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 192
    .local v0, "float_btn_left":Landroid/widget/Button;
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    const v5, 0x7f09022c

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 193
    .local v1, "float_btn_right":Landroid/widget/Button;
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-static {v4}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->h(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d06db

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 196
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0046

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0047

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 198
    new-instance v4, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a$1;

    invoke-direct {v4, p0}, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a$1;-><init>(Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    new-instance v4, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a$2;

    invoke-direct {v4, p0}, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a$2;-><init>(Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    return-void
.end method
