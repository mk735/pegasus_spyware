.class public Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;
.super Landroid/widget/LinearLayout;
.source "CheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/widget/ImageView;

.field private c:Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramAttributeSet"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300d9

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 24
    .local v0, "layout":Landroid/widget/LinearLayout;
    const v2, 0x7f09049a

    invoke-virtual {p0, v2}, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;->b:Landroid/widget/ImageView;

    .line 26
    sget-object v2, Lcom/lenovo/safecenter/R$styleable;->buttonCheck:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 30
    .local v1, "localTypedArray":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;->a:Z

    .line 31
    invoke-direct {p0}, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;->a()V

    .line 33
    new-instance v2, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference$1;

    invoke-direct {v2, p0}, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference$1;-><init>(Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;->a:Z

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;->b:Landroid/widget/ImageView;

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;->b:Landroid/widget/ImageView;

    const v1, 0x7f0200de

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;->a:Z

    return v0
.end method

.method static synthetic a(Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;)Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference$OnCheckedChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;->c:Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference$OnCheckedChangeListener;

    return-object v0
.end method


# virtual methods
.method public setEnableed(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;->a:Z

    .line 51
    invoke-direct {p0}, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;->a()V

    .line 52
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference$OnCheckedChangeListener;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;->c:Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference$OnCheckedChangeListener;

    .line 64
    return-void
.end method
