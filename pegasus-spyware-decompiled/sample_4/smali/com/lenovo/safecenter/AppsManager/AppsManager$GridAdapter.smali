.class public Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/AppsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter$a;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/ProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter$a;

.field final synthetic d:Lcom/lenovo/safecenter/AppsManager/AppsManager;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/AppsManager/AppsManager;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/ProcessInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 476
    .local p3, "Plist":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/ProcessInfo;>;"
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter;->d:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 477
    iput-object p2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter;->a:Landroid/content/Context;

    .line 478
    iput-object p3, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter;->b:Ljava/util/List;

    .line 479
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 487
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 491
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 495
    if-nez p2, :cond_0

    .line 496
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300dc

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 498
    new-instance v1, Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter$a;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter$a;-><init>(Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter;->c:Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter$a;

    .line 499
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter;->c:Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter$a;

    const v1, 0x7f0904a2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter$a;->a:Landroid/widget/ImageView;

    .line 501
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter;->c:Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter$a;

    const v1, 0x7f0904a3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter$a;->b:Landroid/widget/TextView;

    .line 503
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter;->c:Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter$a;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 509
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/ProcessInfo;

    .line 510
    .local v0, "info":Lcom/lenovo/safecenter/support/ProcessInfo;
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter;->c:Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter$a;

    iget-object v1, v1, Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/ProcessInfo;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 512
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter;->c:Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter$a;

    iget-object v1, v1, Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/ProcessInfo;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter;->c:Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter$a;

    iget-object v1, v1, Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter$a;->b:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 515
    return-object p2

    .line 506
    .end local v0    # "info":Lcom/lenovo/safecenter/support/ProcessInfo;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter$a;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter;->c:Lcom/lenovo/safecenter/AppsManager/AppsManager$GridAdapter$a;

    goto :goto_0
.end method
