.class public Lcom/lenovo/safecenter/Laboratory/RootIntroduction;
.super Landroid/app/Activity;
.source "RootIntroduction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f0300f5

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/RootIntroduction;->setContentView(I)V

    .line 18
    const v0, 0x7f090590

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/RootIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d071f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0905ad

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/Laboratory/RootIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/lenovo/safecenter/Laboratory/RootIntroduction$1;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/Laboratory/RootIntroduction$1;-><init>(Lcom/lenovo/safecenter/Laboratory/RootIntroduction;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    return-void
.end method
