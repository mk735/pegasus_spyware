.class final Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$a;
.super Landroid/widget/BaseAdapter;
.source "ForbiddenApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 518
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/AppInfo;>;"
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$a;->c:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 519
    iput-object p2, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$a;->a:Landroid/content/Context;

    .line 520
    iput-object p3, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$a;->b:Ljava/util/List;

    .line 521
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 528
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 532
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 536
    if-nez p2, :cond_0

    .line 539
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$a;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 540
    .local v2, "mInflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030101

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 541
    new-instance v1, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$b;

    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$a;->c:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-direct {v1, v3}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$b;-><init>(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V

    .line 543
    .local v1, "holder":Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$b;
    const v3, 0x7f09035f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$b;->a:Landroid/widget/ImageView;

    .line 544
    const v3, 0x7f090360

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$b;->b:Landroid/widget/TextView;

    .line 545
    const v3, 0x7f0904bd

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$b;->c:Landroid/widget/ImageView;

    .line 546
    const v3, 0x7f0904bc

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 548
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 553
    .end local v2    # "mInflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$a;->b:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/AppInfo;

    .line 554
    .local v0, "appInfo":Lcom/lenovo/safecenter/support/AppInfo;
    iget-object v3, v1, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$b;->b:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/lenovo/safecenter/support/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v3, v0, Lcom/lenovo/safecenter/support/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 556
    iget-object v3, v1, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$b;->a:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$a;->c:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02017b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 560
    :goto_1
    iget v3, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 561
    iget-object v3, v1, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$b;->c:Landroid/widget/ImageView;

    const v4, 0x7f02022d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 566
    :goto_2
    return-object p2

    .line 550
    .end local v0    # "appInfo":Lcom/lenovo/safecenter/support/AppInfo;
    .end local v1    # "holder":Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$b;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$b;

    .restart local v1    # "holder":Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$b;
    goto :goto_0

    .line 558
    .restart local v0    # "appInfo":Lcom/lenovo/safecenter/support/AppInfo;
    :cond_1
    iget-object v3, v1, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$b;->a:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/lenovo/safecenter/support/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 563
    :cond_2
    iget-object v3, v1, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$b;->c:Landroid/widget/ImageView;

    const v4, 0x7f02022f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2
.end method
