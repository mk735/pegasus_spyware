.class final Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$e;
.super Landroid/preference/Preference;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$e;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;

    .line 206
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 207
    iput-object p2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$e;->b:Landroid/content/Context;

    .line 208
    return-void
.end method


# virtual methods
.method protected final onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    .line 212
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$e;->b:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03011b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 213
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f090590

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 216
    .local v0, "name":Landroid/widget/TextView;
    const v2, 0x7f0d0230

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 217
    return-object v1
.end method
