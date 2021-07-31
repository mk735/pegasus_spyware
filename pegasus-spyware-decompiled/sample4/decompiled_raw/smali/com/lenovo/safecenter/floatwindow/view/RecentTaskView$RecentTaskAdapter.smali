.class public Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView$RecentTaskAdapter;
.super Landroid/widget/BaseAdapter;
.source "RecentTaskView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RecentTaskAdapter"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/lenovo/safecenter/floatwindow/model/ViewHolder;

.field private d:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;>;"
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView$RecentTaskAdapter;->a:Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 242
    iput-object p3, p0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView$RecentTaskAdapter;->b:Ljava/util/List;

    .line 243
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView$RecentTaskAdapter;->d:Landroid/view/LayoutInflater;

    .line 244
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView$RecentTaskAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 252
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 257
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 262
    move-object v0, p2

    .line 265
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 267
    new-instance v1, Lcom/lenovo/safecenter/floatwindow/model/ViewHolder;

    invoke-direct {v1}, Lcom/lenovo/safecenter/floatwindow/model/ViewHolder;-><init>()V

    iput-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView$RecentTaskAdapter;->c:Lcom/lenovo/safecenter/floatwindow/model/ViewHolder;

    .line 269
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView$RecentTaskAdapter;->d:Landroid/view/LayoutInflater;

    const v2, 0x7f030055

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 271
    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView$RecentTaskAdapter;->c:Lcom/lenovo/safecenter/floatwindow/model/ViewHolder;

    const v1, 0x7f09024c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/lenovo/safecenter/floatwindow/model/ViewHolder;->img:Landroid/widget/ImageView;

    .line 273
    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView$RecentTaskAdapter;->c:Lcom/lenovo/safecenter/floatwindow/model/ViewHolder;

    const v1, 0x7f09024d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/lenovo/safecenter/floatwindow/model/ViewHolder;->text:Landroid/widget/TextView;

    .line 275
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView$RecentTaskAdapter;->c:Lcom/lenovo/safecenter/floatwindow/model/ViewHolder;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 286
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView$RecentTaskAdapter;->c:Lcom/lenovo/safecenter/floatwindow/model/ViewHolder;

    iget-object v2, v1, Lcom/lenovo/safecenter/floatwindow/model/ViewHolder;->img:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView$RecentTaskAdapter;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView$RecentTaskAdapter;->c:Lcom/lenovo/safecenter/floatwindow/model/ViewHolder;

    iget-object v2, v1, Lcom/lenovo/safecenter/floatwindow/model/ViewHolder;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView$RecentTaskAdapter;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    return-object v0

    .line 281
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/floatwindow/model/ViewHolder;

    iput-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView$RecentTaskAdapter;->c:Lcom/lenovo/safecenter/floatwindow/model/ViewHolder;

    goto :goto_0
.end method
