.class public Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;
.super Landroid/widget/BaseAdapter;
.source "PermDeepAdapter.java"


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/lenovo/safecenter/antivirus/domain/b;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "files":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->a:Landroid/view/LayoutInflater;

    .line 33
    iput-object p2, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->b:Ljava/util/List;

    .line 34
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->d:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x2

    .line 56
    if-nez p2, :cond_1

    .line 57
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->a:Landroid/view/LayoutInflater;

    const v6, 0x7f0300ff

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 58
    new-instance v5, Lcom/lenovo/safecenter/antivirus/domain/b;

    invoke-direct {v5}, Lcom/lenovo/safecenter/antivirus/domain/b;-><init>()V

    iput-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/b;

    .line 59
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/b;

    const v5, 0x7f09051e

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v6, Lcom/lenovo/safecenter/antivirus/domain/b;->a:Landroid/widget/ImageView;

    .line 61
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/b;

    const v5, 0x7f090520

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v6, Lcom/lenovo/safecenter/antivirus/domain/b;->c:Landroid/widget/TextView;

    .line 62
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/b;

    const v5, 0x7f09051f

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v6, Lcom/lenovo/safecenter/antivirus/domain/b;->b:Landroid/widget/ImageView;

    .line 63
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/b;

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    :goto_0
    if-gt p1, v8, :cond_4

    .line 69
    if-nez p1, :cond_2

    .line 71
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/b;

    iget-object v5, v5, Lcom/lenovo/safecenter/antivirus/domain/b;->a:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->d:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0200bb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/b;

    iget-object v5, v5, Lcom/lenovo/safecenter/antivirus/domain/b;->c:Landroid/widget/TextView;

    const v6, 0x7f0d0400

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 73
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/b;

    iget-object v5, v5, Lcom/lenovo/safecenter/antivirus/domain/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    :cond_0
    :goto_1
    return-object p2

    .line 65
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/safecenter/antivirus/domain/b;

    iput-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/b;

    goto :goto_0

    .line 74
    :cond_2
    if-ne p1, v10, :cond_3

    .line 76
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/b;

    iget-object v5, v5, Lcom/lenovo/safecenter/antivirus/domain/b;->a:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->d:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02004e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/b;

    iget-object v5, v5, Lcom/lenovo/safecenter/antivirus/domain/b;->c:Landroid/widget/TextView;

    const v6, 0x7f0d0401

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 78
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/b;

    iget-object v5, v5, Lcom/lenovo/safecenter/antivirus/domain/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 79
    :cond_3
    if-ne p1, v8, :cond_0

    .line 81
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/b;

    iget-object v5, v5, Lcom/lenovo/safecenter/antivirus/domain/b;->a:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->d:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02003a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/b;

    iget-object v5, v5, Lcom/lenovo/safecenter/antivirus/domain/b;->c:Landroid/widget/TextView;

    const v6, 0x7f0d0402

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 83
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/b;

    iget-object v5, v5, Lcom/lenovo/safecenter/antivirus/domain/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 88
    :cond_4
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/b;

    iget-object v5, v5, Lcom/lenovo/safecenter/antivirus/domain/b;->b:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->b:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    .line 91
    .local v3, "result":Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;
    const/4 v2, 0x0

    .line 93
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    iget v5, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->apkType:I

    if-nez v5, :cond_6

    .line 95
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    const/16 v7, 0x2000

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 97
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 105
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_2
    if-nez v2, :cond_5

    .line 107
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02017b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 110
    :cond_5
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/b;

    iget-object v5, v5, Lcom/lenovo/safecenter/antivirus/domain/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget v5, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->apkType:I

    if-ne v5, v8, :cond_7

    .line 115
    iget-object v4, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->path:Ljava/lang/String;

    .line 121
    .local v4, "str":Ljava/lang/String;
    :goto_3
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/b;

    iget-object v5, v5, Lcom/lenovo/safecenter/antivirus/domain/b;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget v5, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8

    iget v5, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->apkType:I

    if-eq v5, v10, :cond_8

    .line 125
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/b;

    iget-object v5, v5, Lcom/lenovo/safecenter/antivirus/domain/b;->b:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->d:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020234

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 98
    .end local v4    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 102
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    iget-object v5, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->path:Ljava/lang/String;

    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->d:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->getUninstallAPKIcon(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_2

    .line 117
    :cond_7
    iget-object v4, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    .restart local v4    # "str":Ljava/lang/String;
    goto :goto_3

    .line 127
    :cond_8
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->c:Lcom/lenovo/safecenter/antivirus/domain/b;

    iget-object v5, v5, Lcom/lenovo/safecenter/antivirus/domain/b;->b:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/domain/PermDeepAdapter;->d:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020230

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method
