.class public Lcom/lenovo/safecenter/adapter/PermAdapter;
.super Landroid/widget/BaseAdapter;
.source "PermAdapter.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/support/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/support/AppInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/lenovo/safecenter/adapter/PermAdapter;->a:Ljava/util/ArrayList;

    .line 26
    iput-object p1, p0, Lcom/lenovo/safecenter/adapter/PermAdapter;->b:Landroid/content/Context;

    .line 27
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/PermAdapter;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/adapter/PermAdapter;->c:Landroid/content/pm/PackageManager;

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/PermAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/PermAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 39
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 43
    if-nez p2, :cond_3

    .line 46
    iget-object v6, p0, Lcom/lenovo/safecenter/adapter/PermAdapter;->b:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 47
    .local v4, "mInflater":Landroid/view/LayoutInflater;
    const v6, 0x7f030101

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 48
    new-instance v3, Lcom/lenovo/safecenter/adapter/a;

    invoke-direct {v3}, Lcom/lenovo/safecenter/adapter/a;-><init>()V

    .line 49
    .local v3, "holder":Lcom/lenovo/safecenter/adapter/a;
    const v6, 0x7f09035f

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lcom/lenovo/safecenter/adapter/a;->a:Landroid/widget/ImageView;

    .line 50
    const v6, 0x7f090360

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/lenovo/safecenter/adapter/a;->b:Landroid/widget/TextView;

    .line 51
    const v6, 0x7f0904bc

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/lenovo/safecenter/adapter/a;->c:Landroid/widget/TextView;

    .line 52
    const v6, 0x7f090522

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/lenovo/safecenter/adapter/a;->d:Landroid/widget/TextView;

    .line 53
    const v6, 0x7f0904bd

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lcom/lenovo/safecenter/adapter/a;->e:Landroid/widget/ImageView;

    .line 54
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    .end local v4    # "mInflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v6, p0, Lcom/lenovo/safecenter/adapter/PermAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/AppInfo;

    .line 60
    .local v0, "appInfo":Lcom/lenovo/safecenter/support/AppInfo;
    invoke-virtual {p2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 63
    :try_start_0
    iget-object v6, v0, Lcom/lenovo/safecenter/support/AppInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, p0, Lcom/lenovo/safecenter/adapter/PermAdapter;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "cmd":Ljava/lang/String;
    iget-object v6, v3, Lcom/lenovo/safecenter/adapter/a;->b:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v6, v3, Lcom/lenovo/safecenter/adapter/a;->a:Landroid/widget/ImageView;

    iget-object v7, v0, Lcom/lenovo/safecenter/support/AppInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/lenovo/safecenter/adapter/PermAdapter;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v1    # "cmd":Ljava/lang/String;
    :goto_1
    iget-object v6, v0, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    const-string v7, "privacy"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v0, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    const-string v7, "location"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v0, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    const-string v7, "device"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 75
    :cond_0
    iget-object v6, v3, Lcom/lenovo/safecenter/adapter/a;->d:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget v6, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-nez v6, :cond_4

    .line 77
    iget-object v6, v3, Lcom/lenovo/safecenter/adapter/a;->d:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/lenovo/safecenter/adapter/PermAdapter;->b:Landroid/content/Context;

    const v9, 0x7f0d0111

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/lenovo/safecenter/support/AppInfo;->permDes:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :goto_2
    iget-object v5, v3, Lcom/lenovo/safecenter/adapter/a;->e:Landroid/widget/ImageView;

    .line 84
    .local v5, "tButton":Landroid/widget/ImageView;
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 86
    iget v6, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-nez v6, :cond_6

    const v6, 0x7f02022f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 90
    :cond_1
    :goto_3
    iget v6, v0, Lcom/lenovo/safecenter/support/AppInfo;->suggest:I

    if-nez v6, :cond_8

    .line 91
    iget-object v6, v3, Lcom/lenovo/safecenter/adapter/a;->c:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v6, v3, Lcom/lenovo/safecenter/adapter/a;->c:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/lenovo/safecenter/adapter/PermAdapter;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070018

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    iget-object v6, v3, Lcom/lenovo/safecenter/adapter/a;->c:Landroid/widget/TextView;

    const v7, 0x7f0d05dd

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 104
    :cond_2
    :goto_4
    return-object p2

    .line 56
    .end local v0    # "appInfo":Lcom/lenovo/safecenter/support/AppInfo;
    .end local v3    # "holder":Lcom/lenovo/safecenter/adapter/a;
    .end local v5    # "tButton":Landroid/widget/ImageView;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/adapter/a;

    .restart local v3    # "holder":Lcom/lenovo/safecenter/adapter/a;
    goto/16 :goto_0

    .line 66
    .restart local v0    # "appInfo":Lcom/lenovo/safecenter/support/AppInfo;
    :catch_0
    move-exception v2

    .line 67
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    iget-object v6, v3, Lcom/lenovo/safecenter/adapter/a;->b:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/lenovo/safecenter/support/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v6, v3, Lcom/lenovo/safecenter/adapter/a;->a:Landroid/widget/ImageView;

    const v7, 0x7f02017b

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 79
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v6, v3, Lcom/lenovo/safecenter/adapter/a;->d:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/lenovo/safecenter/adapter/PermAdapter;->b:Landroid/content/Context;

    const v9, 0x7f0d0112

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/lenovo/safecenter/support/AppInfo;->permDes:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 81
    :cond_5
    iget-object v6, v3, Lcom/lenovo/safecenter/adapter/a;->d:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 87
    .restart local v5    # "tButton":Landroid/widget/ImageView;
    :cond_6
    iget v6, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-ne v6, v11, :cond_7

    const v6, 0x7f02022d

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 88
    :cond_7
    iget v6, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    const v6, 0x7f020233

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 95
    :cond_8
    iget v6, v0, Lcom/lenovo/safecenter/support/AppInfo;->suggest:I

    if-ne v6, v11, :cond_9

    .line 96
    iget-object v6, v3, Lcom/lenovo/safecenter/adapter/a;->c:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v6, v3, Lcom/lenovo/safecenter/adapter/a;->c:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/lenovo/safecenter/adapter/PermAdapter;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070017

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    iget-object v6, v3, Lcom/lenovo/safecenter/adapter/a;->c:Landroid/widget/TextView;

    const v7, 0x7f0d05de

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 100
    :cond_9
    iget v6, v0, Lcom/lenovo/safecenter/support/AppInfo;->suggest:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 101
    iget-object v6, v3, Lcom/lenovo/safecenter/adapter/a;->c:Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4
.end method
