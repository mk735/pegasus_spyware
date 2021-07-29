.class final Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$4;
.super Ljava/lang/Object;
.source "WisdomSpeedPreferenceActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$4;->a:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    .line 243
    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$4;->a:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;

    invoke-static {v2}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->d(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$c;

    .line 244
    .local v1, "info":Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$c;
    iput v4, v1, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$c;->c:I

    goto :goto_0

    .line 246
    .end local v1    # "info":Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$c;
    :cond_0
    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$4;->a:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;

    invoke-static {v2}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->d(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$c;

    const/4 v3, 0x1

    iput v3, v2, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$c;->c:I

    .line 247
    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$4;->a:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;

    invoke-static {v2}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->e(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 249
    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$4;->a:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;

    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$4;->a:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;

    invoke-static {v2}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->d(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$c;

    iget v2, v2, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$c;->b:I

    invoke-static {v3, v2}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->a(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;I)V

    .line 250
    return-void
.end method
