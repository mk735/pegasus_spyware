.class final Lcom/lenovo/safecenter/MainTab/HelpActivity$1;
.super Landroid/text/method/LinkMovementMethod;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/MainTab/HelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/MainTab/HelpActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/MainTab/HelpActivity;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity$1;->a:Lcom/lenovo/safecenter/MainTab/HelpActivity;

    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 101
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 103
    .local v0, "action":I
    const/4 v10, 0x1

    if-eq v0, v10, :cond_0

    if-nez v0, :cond_4

    .line 105
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v8, v10

    .line 106
    .local v8, "x":I
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v9, v10

    .line 108
    .local v9, "y":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v10

    sub-int/2addr v8, v10

    .line 109
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v10

    sub-int/2addr v9, v10

    .line 111
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v10

    add-int/2addr v8, v10

    .line 112
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v10

    add-int/2addr v9, v10

    .line 114
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 115
    .local v3, "layout":Landroid/text/Layout;
    invoke-virtual {v3, v9}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v4

    .line 116
    .local v4, "line":I
    int-to-float v10, v8

    invoke-virtual {v3, v4, v10}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v6

    .line 118
    .local v6, "off":I
    const-class v10, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v6, v6, v10}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ClickableSpan;

    .line 120
    .local v5, "link":[Landroid/text/style/ClickableSpan;
    array-length v10, v5

    if-eqz v10, :cond_3

    .line 121
    const/4 v10, 0x1

    if-ne v0, v10, :cond_2

    .line 123
    const/4 v10, 0x0

    :try_start_0
    aget-object v10, v5, v10

    check-cast v10, Landroid/text/style/URLSpan;

    invoke-virtual {v10}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 124
    .local v7, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 125
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v2, v10, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 126
    .local v2, "intent":Landroid/content/Intent;
    const-string v10, "com.android.browser.application_id"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    const/4 v10, 0x1

    .line 144
    .end local v3    # "layout":Landroid/text/Layout;
    .end local v4    # "line":I
    .end local v5    # "link":[Landroid/text/style/ClickableSpan;
    .end local v6    # "off":I
    .end local v8    # "x":I
    .end local v9    # "y":I
    :goto_1
    return v10

    .line 129
    .restart local v3    # "layout":Landroid/text/Layout;
    .restart local v4    # "line":I
    .restart local v5    # "link":[Landroid/text/style/ClickableSpan;
    .restart local v6    # "off":I
    .restart local v8    # "x":I
    .restart local v9    # "y":I
    :catch_0
    move-exception v10

    iget-object v10, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity$1;->a:Lcom/lenovo/safecenter/MainTab/HelpActivity;

    const v11, 0x7f0d06d6

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 132
    :cond_2
    if-nez v0, :cond_1

    .line 133
    const/4 v10, 0x0

    aget-object v10, v5, v10

    invoke-interface {p2, v10}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    const/4 v11, 0x0

    aget-object v11, v5, v11

    invoke-interface {p2, v11}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    invoke-static {p2, v10, v11}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    .line 140
    :cond_3
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 144
    .end local v3    # "layout":Landroid/text/Layout;
    .end local v4    # "line":I
    .end local v5    # "link":[Landroid/text/style/ClickableSpan;
    .end local v6    # "off":I
    .end local v8    # "x":I
    .end local v9    # "y":I
    :cond_4
    invoke-super/range {p0 .. p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v10

    goto :goto_1
.end method
