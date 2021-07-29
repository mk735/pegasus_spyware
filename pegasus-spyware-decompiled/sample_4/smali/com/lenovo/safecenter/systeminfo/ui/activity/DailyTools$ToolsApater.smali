.class public Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater;
.super Landroid/widget/BaseAdapter;
.source "DailyTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ToolsApater"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 304
    iput-object p2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater;->b:Landroid/content/Context;

    .line 305
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    invoke-static {v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->a(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 312
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 316
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, "holder":Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater$a;
    if-nez p2, :cond_0

    .line 323
    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater;->b:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03002f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 325
    .local v1, "v":Landroid/view/View;
    new-instance v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater$a;

    .end local v0    # "holder":Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater$a;
    invoke-direct {v0, p0, v6}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater$a;-><init>(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater;B)V

    .line 326
    .restart local v0    # "holder":Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater$a;
    const v2, 0x7f09017d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater$a;->a:Landroid/widget/ImageView;

    .line 328
    const v2, 0x7f090178

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater$a;->b:Landroid/widget/ImageView;

    .line 330
    const v2, 0x7f090179

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater$a;->c:Landroid/widget/ImageView;

    .line 331
    const v2, 0x7f09017a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater$a;->d:Landroid/widget/ImageView;

    .line 333
    const v2, 0x7f090176

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater$a;->g:Landroid/widget/TextView;

    .line 335
    const v2, 0x7f09017b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater$a;->h:Landroid/widget/TextView;

    .line 337
    const v2, 0x7f09017c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater$a;->i:Landroid/widget/TextView;

    .line 339
    const v2, 0x7f090174

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater$a;->e:Landroid/widget/ImageView;

    .line 341
    const v2, 0x7f090177

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater$a;->f:Landroid/widget/ImageView;

    .line 342
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 346
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater$a;
    check-cast v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater$a;

    .line 347
    .restart local v0    # "holder":Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater$a;
    iget-object v3, v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater$a;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    invoke-static {v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->a(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;

    invoke-static {v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->b(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 348
    iget-object v3, v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater$a;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    invoke-static {v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->a(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;

    invoke-static {v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->c(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 349
    iget-object v3, v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater$a;->e:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    invoke-static {v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->a(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;

    invoke-static {v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->a(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 351
    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    invoke-static {v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->a(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;

    iget-boolean v2, v2, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->a:Z

    if-eqz v2, :cond_1

    .line 352
    iget-object v2, v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 357
    :goto_1
    iget-object v3, v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater$a;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    invoke-static {v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->a(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;

    invoke-static {v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->d(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 359
    iget-object v2, v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 360
    iget-object v2, v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 361
    iget-object v2, v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    iget-object v2, v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater$a;->i:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    return-object v1

    .line 344
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    move-object v1, p2

    .restart local v1    # "v":Landroid/view/View;
    goto/16 :goto_0

    .line 354
    :cond_1
    iget-object v2, v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
