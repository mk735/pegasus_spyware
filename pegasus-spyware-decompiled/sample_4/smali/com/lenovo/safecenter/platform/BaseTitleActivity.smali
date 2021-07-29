.class public abstract Lcom/lenovo/safecenter/platform/BaseTitleActivity;
.super Landroid/app/Activity;
.source "BaseTitleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const-string v0, "BaseTitleActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->requestWindowFeature(I)Z

    .line 22
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 69
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 75
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 81
    return-void
.end method

.method public setLeftImgGone(I)V
    .locals 3
    .param p1, "gone"    # I

    .prologue
    .line 90
    const-string v0, "BaseTitleActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLeftImgGone()...gone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const v0, 0x7f0904b9

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    return-void
.end method

.method public setRightImgGone(I)V
    .locals 1
    .param p1, "gone"    # I

    .prologue
    .line 95
    const v0, 0x7f0904ba

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    return-void
.end method

.method public setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V
    .locals 5
    .param p1, "leftImgId"    # Ljava/lang/Integer;
    .param p2, "titleStrId"    # I
    .param p3, "rightImgId"    # Ljava/lang/Integer;

    .prologue
    const v4, 0x7f0904bb

    const/16 v3, 0x8

    .line 24
    invoke-virtual {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x7

    const v2, 0x7f0300e1

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 25
    const-string v0, "BaseTitleActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTitle()...leftImgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--rightImgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 27
    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    if-eqz p1, :cond_0

    .line 31
    const v0, 0x7f0904b9

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    :goto_0
    if-eqz p3, :cond_1

    .line 38
    const v0, 0x7f0904ba

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    :goto_1
    return-void

    .line 33
    :cond_0
    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->setLeftImgGone(I)V

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->setRightImgGone(I)V

    goto :goto_1
.end method

.method public setTitle(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 5
    .param p1, "leftImgId"    # Ljava/lang/Integer;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "rightImgId"    # Ljava/lang/Integer;

    .prologue
    const v4, 0x7f0904bb

    const/16 v3, 0x8

    .line 45
    invoke-virtual {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x7

    const v2, 0x7f0300e1

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 46
    const-string v0, "BaseTitleActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTitle()...leftImgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--rightImgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    if-eqz p1, :cond_0

    .line 52
    const v0, 0x7f0904b9

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    :goto_0
    if-eqz p3, :cond_1

    .line 59
    const v0, 0x7f0904ba

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    :goto_1
    return-void

    .line 54
    :cond_0
    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->setLeftImgGone(I)V

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->setRightImgGone(I)V

    goto :goto_1
.end method
