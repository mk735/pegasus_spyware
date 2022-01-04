.class final Lcom/lenovo/safecenter/Laboratory/GuestModeSet$a;
.super Landroid/widget/BaseAdapter;
.source "GuestModeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/Laboratory/GuestModeSet;
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

.field final synthetic c:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;Landroid/content/Context;Ljava/util/List;)V
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
    .line 411
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/AppInfo;>;"
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$a;->c:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 412
    iput-object p2, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$a;->a:Landroid/content/Context;

    .line 413
    iput-object p3, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$a;->b:Ljava/util/List;

    .line 414
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 421
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 425
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 429
    if-nez p2, :cond_0

    .line 432
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$a;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 433
    .local v2, "mInflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030101

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 434
    new-instance v1, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$b;

    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$a;->c:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-direct {v1, v3}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$b;-><init>(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)V

    .line 435
    .local v1, "holder":Lcom/lenovo/safecenter/Laboratory/GuestModeSet$b;
    const v3, 0x7f09035f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$b;->a:Landroid/widget/ImageView;

    .line 436
    const v3, 0x7f090360

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$b;->b:Landroid/widget/TextView;

    .line 437
    const v3, 0x7f0904bd

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$b;->c:Landroid/widget/ImageView;

    .line 438
    const v3, 0x7f0904bc

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 440
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 445
    .end local v2    # "mInflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$a;->b:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/AppInfo;

    .line 446
    .local v0, "appInfo":Lcom/lenovo/safecenter/support/AppInfo;
    iget-object v3, v1, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$b;->b:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/lenovo/safecenter/support/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v3, v0, Lcom/lenovo/safecenter/support/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 448
    iget-object v3, v1, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$b;->a:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$a;->c:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02017b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 452
    :goto_1
    iget v3, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 453
    iget-object v3, v1, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$b;->c:Landroid/widget/ImageView;

    const v4, 0x7f02022d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 457
    :goto_2
    return-object p2

    .line 442
    .end local v0    # "appInfo":Lcom/lenovo/safecenter/support/AppInfo;
    .end local v1    # "holder":Lcom/lenovo/safecenter/Laboratory/GuestModeSet$b;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$b;

    .restart local v1    # "holder":Lcom/lenovo/safecenter/Laboratory/GuestModeSet$b;
    goto :goto_0

    .line 450
    .restart local v0    # "appInfo":Lcom/lenovo/safecenter/support/AppInfo;
    :cond_1
    iget-object v3, v1, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$b;->a:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/lenovo/safecenter/support/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 455
    :cond_2
    iget-object v3, v1, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$b;->c:Landroid/widget/ImageView;

    const v4, 0x7f02022f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2
.end method
