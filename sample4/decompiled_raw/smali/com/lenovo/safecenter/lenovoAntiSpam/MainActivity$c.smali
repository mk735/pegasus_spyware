.class final Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;
.super Landroid/preference/Preference;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;

    .line 226
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 227
    iput-object p2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;->b:Landroid/content/Context;

    .line 228
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;

    .prologue
    .line 222
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00f2

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d03e5

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c$2;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c$2;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-void
.end method


# virtual methods
.method protected final notifyChanged()V
    .locals 0

    .prologue
    .line 231
    invoke-super {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 232
    return-void
.end method

.method protected final onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 235
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    .line 236
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;->b:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030021

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 237
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0900fd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 238
    .local v0, "cc":Landroid/widget/ImageView;
    const v3, 0x7f090100

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 239
    .local v1, "txt":Landroid/widget/TextView;
    new-instance v3, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c$1;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c$1;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getProtectHarassSwitchState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    const v3, 0x7f0200df

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    const v3, 0x7f0d003c

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 262
    :goto_0
    return-object v2

    .line 258
    :cond_0
    const/high16 v3, -0x10000

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    const v3, 0x7f0d003d

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 260
    const v3, 0x7f0200de

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
