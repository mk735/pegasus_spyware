.class final Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim$a;
.super Landroid/os/Handler;
.source "CommonLoadingAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;


# direct methods
.method private constructor <init>(Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim$a;->a:Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;B)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim$a;-><init>(Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 50
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 51
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 61
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iget-object v3, p0, Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim$a;->a:Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;

    invoke-static {v3}, Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;->a(Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim$a;->a:Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0710

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    iget v3, p1, Landroid/os/Message;->arg1:I

    rem-int/lit8 v2, v3, 0x3

    .line 56
    .local v2, "intSym":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 57
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 59
    :cond_0
    iget-object v3, p0, Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim$a;->a:Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;

    invoke-static {v3}, Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;->b(Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v3, p0, Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim$a;->a:Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;

    invoke-static {v3}, Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;->c(Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim$a;->a:Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;

    invoke-static {v4}, Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;->c(Lcom/lenovo/safecenter/floatwindow/view/CommonLoadingAnim;)Landroid/os/Handler;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v6, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
