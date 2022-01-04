.class final Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain$1;
.super Ljava/lang/Object;
.source "WhiteABlackMain.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTabChanged(Ljava/lang/String;)V
    .locals 6
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    const v5, 0x7f09047b

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 99
    .local v1, "tabID":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x2

    if-ge v0, v3, :cond_1

    .line 100
    if-ne v0, v1, :cond_0

    .line 101
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;)Landroid/widget/TabHost;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->getChildAt(I)Landroid/view/View;

    .line 102
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;)Landroid/widget/TabHost;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 105
    .local v2, "textView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_0
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;)Landroid/widget/TabHost;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->getChildAt(I)Landroid/view/View;

    .line 109
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;)Landroid/widget/TabHost;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 112
    .restart local v2    # "textView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 116
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_1
    return-void
.end method
