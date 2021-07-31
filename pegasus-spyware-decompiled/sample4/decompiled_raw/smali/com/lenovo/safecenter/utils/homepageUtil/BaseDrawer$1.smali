.class final Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer$1;
.super Landroid/os/Handler;
.source "BaseDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer$1;->a:Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 32
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 37
    :goto_0
    return-void

    .line 34
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer$1;->a:Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;

    iget-object v1, v1, Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 36
    .local v0, "m":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
