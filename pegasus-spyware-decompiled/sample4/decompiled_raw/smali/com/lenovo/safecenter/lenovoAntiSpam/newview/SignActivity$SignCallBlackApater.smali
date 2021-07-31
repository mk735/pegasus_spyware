.class public Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;
.super Landroid/widget/BaseAdapter;
.source "SignActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SignCallBlackApater"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 464
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->b(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 473
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->b(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 479
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v9, 0x8

    const/4 v6, -0x5

    const/4 v5, -0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 486
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->b(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;

    .line 490
    .local v1, "tag":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;
    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->getId()I

    move-result v2

    if-eq v2, v6, :cond_0

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->getId()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 492
    :cond_0
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030084

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 493
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater$a;

    invoke-direct {v0, p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater$a;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;B)V

    .line 494
    .local v0, "holder":Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater$a;
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020206

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 495
    const v2, 0x7f09000c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater$a;->a:Landroid/widget/TextView;

    .line 512
    :goto_0
    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->getId()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 514
    iget-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater$a;->a:Landroid/widget/TextView;

    const v3, 0x7f0d0752

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 560
    :goto_1
    return-object p2

    .line 498
    .end local v0    # "holder":Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater$a;
    :cond_1
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03010c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 499
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater$a;

    invoke-direct {v0, p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater$a;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;B)V

    .line 501
    .restart local v0    # "holder":Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater$a;
    const v2, 0x7f09056c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater$a;->a:Landroid/widget/TextView;

    .line 502
    const v2, 0x7f09056d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater$a;->b:Landroid/widget/TextView;

    .line 503
    const v2, 0x7f09056e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater$a;->c:Landroid/widget/TextView;

    .line 504
    const v2, 0x7f09056f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater$a;->d:Landroid/widget/TextView;

    goto :goto_0

    .line 515
    :cond_2
    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->getId()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 517
    iget-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater$a;->a:Landroid/widget/TextView;

    const v3, 0x7f0d04e4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 521
    :cond_3
    iget-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater$a;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 522
    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->getCallDur()I

    move-result v2

    if-ltz v2, :cond_5

    .line 525
    iget-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater$a;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->getCallDur()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_4

    .line 528
    iget-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater$a;->b:Landroid/widget/TextView;

    const v3, 0x7f0d0755

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 533
    :goto_2
    iget-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater$a;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 534
    iget-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater$a;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 535
    iget-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater$a;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    const v4, 0x7f0d075b

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->getsType()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->getDescFromType(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    :goto_3
    iget-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater$a;->c:Landroid/widget/TextView;

    new-instance v3, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater$1;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater$1;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 531
    :cond_4
    iget-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater$a;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    const v4, 0x7f0d04f2

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->getCallDur()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->getStr(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 538
    :cond_5
    iget-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater$a;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 539
    iget-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater$a;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 540
    iget-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater$a;->a:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->getsType()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->getDescFromType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v2, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater$a;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    const v4, 0x7f0d04f2

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->getTotalCall()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->getStr(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method
