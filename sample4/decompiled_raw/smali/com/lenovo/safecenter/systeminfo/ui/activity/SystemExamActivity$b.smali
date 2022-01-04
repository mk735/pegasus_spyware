.class final Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;
.super Ljava/lang/Object;
.source "SystemExamActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;


# direct methods
.method private constructor <init>(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;-><init>(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v8, 0x7f070004

    const v7, 0x7f020311

    const v6, 0x7f020310

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 291
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 336
    :goto_0
    return-void

    .line 293
    :sswitch_0
    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->k(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->l(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 295
    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->m(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 296
    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->n(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 297
    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->o(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020240

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 298
    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->p(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020241

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 299
    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->q(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 300
    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->r(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 305
    :sswitch_1
    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->k(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 306
    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->l(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 307
    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->n(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 308
    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->m(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 309
    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->o(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f02023f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 310
    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->p(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020242

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 311
    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->q(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 312
    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->r(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 317
    :sswitch_2
    new-instance v1, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-direct {v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d01bb

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d06c0

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0046

    new-instance v3, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b$2;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b$2;-><init>(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;)V

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0047

    new-instance v3, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b$1;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b$1;-><init>(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;)V

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    goto/16 :goto_0

    .line 291
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090485 -> :sswitch_0
        0x7f090488 -> :sswitch_1
        0x7f09048f -> :sswitch_2
    .end sparse-switch
.end method
