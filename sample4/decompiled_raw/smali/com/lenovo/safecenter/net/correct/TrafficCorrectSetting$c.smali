.class final Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$c;
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
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)V
    .locals 1

    .prologue
    .line 98
    iput-object p1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$c;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$c;->b:I

    .line 101
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
    const/4 v8, 0x0

    .line 106
    move-object v4, p2

    check-cast v4, Landroid/widget/TextView;

    .line 107
    .local v4, "province":Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "proviceString":Ljava/lang/String;
    sget-object v5, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->mTcMgr:Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;

    iget-object v6, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$c;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->getCities(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 110
    .local v2, "cityLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/tmsecure/module/network/CodeName;>;"
    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$c;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-static {v5, v2}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->a(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 111
    .local v1, "cityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 112
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_0
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$c;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-static {v5}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->a(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f03010e

    invoke-direct {v0, v5, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 119
    .local v0, "cityAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v5, 0x1090009

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 121
    iget v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$c;->b:I

    if-nez v5, :cond_1

    .line 122
    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$c;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-static {v5}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->d(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)Landroid/widget/Spinner;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 123
    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$c;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-static {v5}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->d(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)Landroid/widget/Spinner;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v8, v6}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 126
    :cond_1
    return-void

    .line 113
    .end local v0    # "cityAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_2
    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$c;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-static {v5}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->b(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 114
    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$c;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-static {v5}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->c(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v8, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v5, "testcorrect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "~~~size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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
    .line 131
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
