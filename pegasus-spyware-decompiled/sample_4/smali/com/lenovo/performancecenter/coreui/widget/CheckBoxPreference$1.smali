.class final Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference$1;
.super Ljava/lang/Object;
.source "CheckBoxPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference$1;->a:Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference$1;->a:Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;

    invoke-static {v0}, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;->a(Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference$1;->a:Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;->a(Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;Z)Z

    .line 39
    iget-object v0, p0, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference$1;->a:Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;

    invoke-static {v0}, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;->b(Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200de

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference$1;->a:Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;

    invoke-static {v0}, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;->c(Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;)Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference$OnCheckedChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference$1;->a:Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;

    iget-object v2, p0, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference$1;->a:Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;

    invoke-static {v2}, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;->a(Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference$OnCheckedChangeListener;->onCheckedChanged(Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;Z)V

    .line 45
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference$1;->a:Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;->a(Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;Z)Z

    .line 42
    iget-object v0, p0, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference$1;->a:Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;

    invoke-static {v0}, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;->b(Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method
