.class public Lcom/lenovo/safecenter/antivirus/support/PageControlView;
.super Landroid/widget/LinearLayout;
.source "PageControlView.java"

# interfaces
.implements Lcom/lenovo/safecenter/antivirus/support/ScrollView$OnScreenChangeListener;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/support/PageControlView;->a:Landroid/content/Context;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/support/PageControlView;->a:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public screenChange(II)V
    .locals 5
    .param p1, "currentTab"    # I
    .param p2, "totalTab"    # I

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 27
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/support/PageControlView;->removeAllViews()V

    .line 28
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 29
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/support/PageControlView;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 30
    .local v1, "iv":Landroid/widget/ImageView;
    invoke-virtual {v1, v4, v3, v4, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 31
    if-ne v0, p1, :cond_0

    .line 32
    const v2, 0x7f020002

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 36
    :goto_1
    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/antivirus/support/PageControlView;->addView(Landroid/view/View;)V

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_0
    const v2, 0x7f020003

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 39
    .end local v1    # "iv":Landroid/widget/ImageView;
    :cond_1
    return-void
.end method
