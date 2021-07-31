.class final Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$a;
.super Landroid/widget/BaseAdapter;
.source "WisdomSpeedPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$a;->a:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 315
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$a;->b:Landroid/view/LayoutInflater;

    .line 317
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$a;->a:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->d(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$a;->a:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->d(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 331
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 337
    if-nez p2, :cond_2

    .line 338
    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$a;->b:Landroid/view/LayoutInflater;

    const v3, 0x7f0300f2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 339
    new-instance v1, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$b;

    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$a;->a:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;

    invoke-direct {v1, v2}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$b;-><init>(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;)V

    .line 340
    .local v1, "holder":Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$b;
    const v2, 0x7f0904e9

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$b;->a(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$b;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 341
    const v2, 0x7f0904eb

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$b;->a(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$b;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 343
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 348
    :goto_0
    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$a;->a:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;

    invoke-static {v2}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->d(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$c;

    .line 349
    .local v0, "aInfo":Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$c;
    if-eqz v0, :cond_1

    .line 350
    monitor-enter v0

    .line 351
    :try_start_0
    iget-object v2, v0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$c;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 352
    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$b;->a(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$b;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    :cond_0
    iget v2, v0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$c;->c:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 356
    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$b;->b(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$b;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020270

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 360
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    :cond_1
    return-object p2

    .line 345
    .end local v0    # "aInfo":Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$c;
    .end local v1    # "holder":Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$b;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$b;

    .restart local v1    # "holder":Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$b;
    goto :goto_0

    .line 358
    .restart local v0    # "aInfo":Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$c;
    :cond_3
    :try_start_1
    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$b;->b(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$b;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f02026f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 360
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method
