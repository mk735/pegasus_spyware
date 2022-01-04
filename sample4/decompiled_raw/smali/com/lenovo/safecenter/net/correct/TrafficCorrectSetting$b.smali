.class final Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$b;
.super Ljava/lang/Object;
.source "TrafficCorrectSetting.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)V
    .locals 1

    .prologue
    .line 155
    iput-object p1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$b;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$b;->b:I

    .line 158
    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
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
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v2, p2

    .line 164
    check-cast v2, Landroid/widget/TextView;

    .line 165
    .local v2, "operator":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "operatorString":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$b;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    const v5, 0x7f0d0810

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 167
    iget-object v4, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$b;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-static {v4}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->a(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d0811

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 168
    iget-object v4, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$b;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-static {v4}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->a(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d0812

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v8, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 169
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$b;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-static {v5}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->a(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d0813

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 170
    iget-object v4, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$b;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-static {v4}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->b(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 179
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$b;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-static {v4}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->a(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f03010e

    invoke-direct {v0, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 181
    .local v0, "adapter2":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 182
    iget v4, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$b;->b:I

    if-nez v4, :cond_0

    .line 183
    iget-object v4, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$b;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-static {v4}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->e(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)Landroid/widget/Spinner;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 184
    iget-object v4, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$b;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-static {v4}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->e(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)Landroid/widget/Spinner;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$b;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$b;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-static {v5}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->f(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)[I

    move-result-object v5

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-static {v5, v1}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->a(ILjava/util/List;)I

    move-result v5

    invoke-virtual {v4, v5, v8}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 188
    :cond_0
    return-void

    .line 171
    .end local v0    # "adapter2":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    iget-object v4, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$b;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    const v5, 0x7f0d080f

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 173
    iget-object v4, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$b;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-static {v4}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->a(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d0814

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 174
    iget-object v4, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$b;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-static {v4}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->a(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d0815

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v8, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 175
    iget-object v4, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$b;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-static {v4}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->b(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 177
    :cond_2
    iget-object v4, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$b;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    const v5, 0x7f0d080e

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
