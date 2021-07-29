.class final Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;
.super Landroid/preference/Preference;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I

.field d:I

.field final synthetic e:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->e:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;

    .line 408
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 409
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .param p1, "iconId"    # I

    .prologue
    .line 434
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->c:I

    .line 435
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->a:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public final b(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 443
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->d:I

    .line 444
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->b:Ljava/lang/String;

    .line 431
    return-void
.end method

.method protected final notifyChanged()V
    .locals 0

    .prologue
    .line 439
    invoke-super {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 440
    return-void
.end method

.method protected final onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 412
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    .line 413
    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->e:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0300ac

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 414
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0903dd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 416
    .local v1, "icon":Landroid/widget/ImageView;
    const v4, 0x7f0903df

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 417
    .local v2, "name":Landroid/widget/TextView;
    const v4, 0x7f0903e0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 418
    .local v0, "discription":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->d:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 420
    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->c:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 422
    return-object v3
.end method
