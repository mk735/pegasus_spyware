.class public Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;
.super Landroid/widget/BaseAdapter;
.source "TaskAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/performancecenter/service/object/UsedAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/lenovo/safecenter/floatwindow/model/ViewHolder;

.field private d:Landroid/view/LayoutInflater;

.field private e:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "_context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/performancecenter/service/object/UsedAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "_app_lists":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/performancecenter/service/object/UsedAppInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;->a:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;->b:Ljava/util/List;

    .line 45
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;->d:Landroid/view/LayoutInflater;

    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;->e:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;->e:Landroid/content/pm/PackageManager;

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 67
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 73
    move-object v2, p2

    .line 76
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_0

    .line 78
    new-instance v3, Lcom/lenovo/safecenter/floatwindow/model/ViewHolder;

    invoke-direct {v3}, Lcom/lenovo/safecenter/floatwindow/model/ViewHolder;-><init>()V

    iput-object v3, p0, Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;->c:Lcom/lenovo/safecenter/floatwindow/model/ViewHolder;

    .line 80
    iget-object v3, p0, Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;->d:Landroid/view/LayoutInflater;

    const v4, 0x7f030055

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 82
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;->c:Lcom/lenovo/safecenter/floatwindow/model/ViewHolder;

    const v3, 0x7f09024c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v4, Lcom/lenovo/safecenter/floatwindow/model/ViewHolder;->img:Landroid/widget/ImageView;

    .line 84
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;->c:Lcom/lenovo/safecenter/floatwindow/model/ViewHolder;

    const v3, 0x7f09024d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/lenovo/safecenter/floatwindow/model/ViewHolder;->text:Landroid/widget/TextView;

    .line 86
    iget-object v3, p0, Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;->c:Lcom/lenovo/safecenter/floatwindow/model/ViewHolder;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 97
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;->e:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;->b:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/performancecenter/service/object/UsedAppInfo;

    iget-object v3, v3, Lcom/lenovo/performancecenter/service/object/UsedAppInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 98
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;->c:Lcom/lenovo/safecenter/floatwindow/model/ViewHolder;

    iget-object v3, v3, Lcom/lenovo/safecenter/floatwindow/model/ViewHolder;->img:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;->e:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v3, p0, Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;->c:Lcom/lenovo/safecenter/floatwindow/model/ViewHolder;

    iget-object v3, v3, Lcom/lenovo/safecenter/floatwindow/model/ViewHolder;->text:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;->e:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1
    return-object v2

    .line 92
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/floatwindow/model/ViewHolder;

    iput-object v3, p0, Lcom/lenovo/safecenter/floatwindow/adapter/TaskAdapter;->c:Lcom/lenovo/safecenter/floatwindow/model/ViewHolder;

    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method
