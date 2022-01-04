.class final Lcom/lenovo/safecenter/net/NetFilter$b;
.super Landroid/os/AsyncTask;
.source "NetFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/net/NetFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/lenovo/safecenter/net/support/UidDetail;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/lenovo/safecenter/net/support/UidDetailProvider;

.field private final b:Lcom/lenovo/safecenter/net/NetFilter$a;

.field private final c:Landroid/view/View;


# direct methods
.method private static a(Lcom/lenovo/safecenter/net/support/UidDetail;Landroid/view/View;I)V
    .locals 8
    .param p0, "detail"    # Lcom/lenovo/safecenter/net/support/UidDetail;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "uid"    # I

    .prologue
    const/4 v5, 0x0

    const v7, 0x7f07000d

    .line 716
    const v4, 0x7f090290

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 718
    .local v2, "icon":Landroid/widget/ImageView;
    const v4, 0x7f090293

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 720
    .local v3, "title":Landroid/widget/TextView;
    if-eqz p0, :cond_2

    .line 721
    iget-object v4, p0, Lcom/lenovo/safecenter/net/support/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 722
    const/16 v4, 0x3e8

    if-ne p2, v4, :cond_0

    .line 723
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/lenovo/safecenter/net/NetFilter;->a()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d07d2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 725
    .local v1, "colorText":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/safecenter/net/support/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 726
    .local v0, "allText":Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    iget-object v4, p0, Lcom/lenovo/safecenter/net/support/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {}, Lcom/lenovo/safecenter/net/NetFilter;->a()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-static {v3, v0, v4, v5, v6}, Lcom/lenovo/safecenter/utils/MyUtils;->setSpannableString(Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 745
    .end local v0    # "allText":Ljava/lang/String;
    .end local v1    # "colorText":Ljava/lang/String;
    :goto_0
    return-void

    .line 730
    :cond_0
    sget-object v4, Lcom/lenovo/safecenter/utils/Const;->mNetWhiteApps:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 731
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/lenovo/safecenter/net/NetFilter;->a()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d07d3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 733
    .restart local v1    # "colorText":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/safecenter/net/support/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 734
    .restart local v0    # "allText":Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 735
    iget-object v4, p0, Lcom/lenovo/safecenter/net/support/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {}, Lcom/lenovo/safecenter/net/NetFilter;->a()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-static {v3, v0, v4, v5, v6}, Lcom/lenovo/safecenter/utils/MyUtils;->setSpannableString(Landroid/widget/TextView;Ljava/lang/String;III)V

    goto :goto_0

    .line 739
    .end local v0    # "allText":Ljava/lang/String;
    .end local v1    # "colorText":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/lenovo/safecenter/net/support/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 742
    :cond_2
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 743
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static a(Lcom/lenovo/safecenter/net/support/UidDetailProvider;Lcom/lenovo/safecenter/net/NetFilter$a;Landroid/view/View;)V
    .locals 4
    .param p0, "provider"    # Lcom/lenovo/safecenter/net/support/UidDetailProvider;
    .param p1, "item"    # Lcom/lenovo/safecenter/net/NetFilter$a;
    .param p2, "target"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 698
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/net/NetFilter$b;

    .line 699
    .local v1, "existing":Lcom/lenovo/safecenter/net/NetFilter$b;
    if-eqz v1, :cond_0

    .line 700
    invoke-virtual {v1, v3}, Lcom/lenovo/safecenter/net/NetFilter$b;->cancel(Z)Z

    .line 703
    :cond_0
    iget-object v2, p1, Lcom/lenovo/safecenter/net/NetFilter$a;->a:[I

    aget v2, v2, v3

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/safecenter/net/support/UidDetailProvider;->getUidDetail(IZ)Lcom/lenovo/safecenter/net/support/UidDetail;

    move-result-object v0

    .line 712
    .local v0, "cachedDetail":Lcom/lenovo/safecenter/net/support/UidDetail;
    iget-object v2, p1, Lcom/lenovo/safecenter/net/NetFilter$a;->a:[I

    aget v2, v2, v3

    invoke-static {v0, p2, v2}, Lcom/lenovo/safecenter/net/NetFilter$b;->a(Lcom/lenovo/safecenter/net/support/UidDetail;Landroid/view/View;I)V

    .line 713
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 684
    iget-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter$b;->a:Lcom/lenovo/safecenter/net/support/UidDetailProvider;

    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$b;->b:Lcom/lenovo/safecenter/net/NetFilter$a;

    iget-object v1, v1, Lcom/lenovo/safecenter/net/NetFilter$a;->a:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/net/support/UidDetailProvider;->getUidDetail(IZ)Lcom/lenovo/safecenter/net/support/UidDetail;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 684
    check-cast p1, Lcom/lenovo/safecenter/net/support/UidDetail;

    .end local p1    # "x0":Ljava/lang/Object;
    iget-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter$b;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$b;->b:Lcom/lenovo/safecenter/net/NetFilter$a;

    iget-object v1, v1, Lcom/lenovo/safecenter/net/NetFilter$a;->a:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {p1, v0, v1}, Lcom/lenovo/safecenter/net/NetFilter$b;->a(Lcom/lenovo/safecenter/net/support/UidDetail;Landroid/view/View;I)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 4

    .prologue
    .line 749
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$b;->c:Landroid/view/View;

    iget-object v2, p0, Lcom/lenovo/safecenter/net/NetFilter$b;->b:Lcom/lenovo/safecenter/net/NetFilter$a;

    iget-object v2, v2, Lcom/lenovo/safecenter/net/NetFilter$a;->a:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/net/NetFilter$b;->a(Lcom/lenovo/safecenter/net/support/UidDetail;Landroid/view/View;I)V

    .line 750
    return-void
.end method
