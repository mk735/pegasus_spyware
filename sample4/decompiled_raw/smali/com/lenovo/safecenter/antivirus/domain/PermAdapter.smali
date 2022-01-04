.class public Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;
.super Landroid/widget/BaseAdapter;
.source "PermAdapter.java"


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/lenovo/safecenter/antivirus/domain/a;

.field private d:Landroid/content/Context;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "isNeedScan"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->a:Landroid/view/LayoutInflater;

    .line 29
    iput-object p2, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->b:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->d:Landroid/content/Context;

    .line 31
    iput-boolean p3, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->e:Z

    .line 32
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 43
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 53
    if-nez p2, :cond_1

    .line 54
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->a:Landroid/view/LayoutInflater;

    const v6, 0x7f0300ff

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 55
    new-instance v5, Lcom/lenovo/safecenter/antivirus/domain/a;

    invoke-direct {v5}, Lcom/lenovo/safecenter/antivirus/domain/a;-><init>()V

    iput-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/a;

    .line 56
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/a;

    const v5, 0x7f09051e

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v6, Lcom/lenovo/safecenter/antivirus/domain/a;->a:Landroid/widget/ImageView;

    .line 58
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/a;

    const v5, 0x7f090520

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v6, Lcom/lenovo/safecenter/antivirus/domain/a;->c:Landroid/widget/TextView;

    .line 59
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/a;

    const v5, 0x7f09051f

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v6, Lcom/lenovo/safecenter/antivirus/domain/a;->b:Landroid/widget/ImageView;

    .line 60
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/a;

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    :goto_0
    const/4 v5, 0x2

    if-gt p1, v5, :cond_4

    .line 66
    if-nez p1, :cond_2

    .line 68
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/a;

    iget-object v5, v5, Lcom/lenovo/safecenter/antivirus/domain/a;->a:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->d:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0200bb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/a;

    iget-object v5, v5, Lcom/lenovo/safecenter/antivirus/domain/a;->c:Landroid/widget/TextView;

    const v6, 0x7f0d0400

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 70
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/a;

    iget-object v5, v5, Lcom/lenovo/safecenter/antivirus/domain/a;->b:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    :cond_0
    :goto_1
    return-object p2

    .line 62
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/safecenter/antivirus/domain/a;

    iput-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/a;

    goto :goto_0

    .line 71
    :cond_2
    const/4 v5, 0x1

    if-ne p1, v5, :cond_3

    .line 73
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/a;

    iget-object v5, v5, Lcom/lenovo/safecenter/antivirus/domain/a;->a:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->d:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02004e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/a;

    iget-object v5, v5, Lcom/lenovo/safecenter/antivirus/domain/a;->c:Landroid/widget/TextView;

    const v6, 0x7f0d0401

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 75
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/a;

    iget-object v5, v5, Lcom/lenovo/safecenter/antivirus/domain/a;->b:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 76
    :cond_3
    const/4 v5, 0x2

    if-ne p1, v5, :cond_0

    .line 78
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/a;

    iget-object v5, v5, Lcom/lenovo/safecenter/antivirus/domain/a;->a:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->d:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02003a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/a;

    iget-object v5, v5, Lcom/lenovo/safecenter/antivirus/domain/a;->c:Landroid/widget/TextView;

    const v6, 0x7f0d0402

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 80
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/a;

    iget-object v5, v5, Lcom/lenovo/safecenter/antivirus/domain/a;->b:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 85
    :cond_4
    iget-boolean v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->e:Z

    if-eqz v5, :cond_6

    .line 87
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/a;

    iget-object v5, v5, Lcom/lenovo/safecenter/antivirus/domain/a;->b:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->b:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;

    .line 89
    .local v3, "info":Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;
    const-string v5, "number"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/a;

    iget-object v7, v7, Lcom/lenovo/safecenter/antivirus/domain/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "==="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->d:Landroid/content/Context;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v2, 0x0

    .line 92
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3}, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2000

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 94
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 98
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_2
    if-nez v2, :cond_5

    .line 100
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02017b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 102
    :cond_5
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/a;

    iget-object v5, v5, Lcom/lenovo/safecenter/antivirus/domain/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d02ee

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "str":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;->getSoftName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 105
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/a;

    iget-object v5, v5, Lcom/lenovo/safecenter/antivirus/domain/a;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/a;

    iget-object v5, v5, Lcom/lenovo/safecenter/antivirus/domain/a;->b:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->d:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020230

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    invoke-virtual {v3}, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;->isVirus()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/a;

    iget-object v5, v5, Lcom/lenovo/safecenter/antivirus/domain/a;->b:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->d:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020234

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 95
    .end local v4    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 113
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "info":Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;
    :cond_6
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/a;

    iget-object v5, v5, Lcom/lenovo/safecenter/antivirus/domain/a;->b:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->b:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;

    .line 115
    .restart local v3    # "info":Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;
    const-string v5, "number"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/a;

    iget-object v7, v7, Lcom/lenovo/safecenter/antivirus/domain/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "==="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->d:Landroid/content/Context;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {v3}, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->d:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 117
    .restart local v2    # "icon":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_7

    .line 119
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02017b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 121
    :cond_7
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/a;

    iget-object v5, v5, Lcom/lenovo/safecenter/antivirus/domain/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d02ee

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 123
    .restart local v4    # "str":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->d:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 124
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/a;

    iget-object v5, v5, Lcom/lenovo/safecenter/antivirus/domain/a;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/a;

    iget-object v5, v5, Lcom/lenovo/safecenter/antivirus/domain/a;->b:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->d:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020230

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    invoke-virtual {v3}, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;->isVirus()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 128
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/a;

    iget-object v5, v5, Lcom/lenovo/safecenter/antivirus/domain/a;->b:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->d:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020234

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method
