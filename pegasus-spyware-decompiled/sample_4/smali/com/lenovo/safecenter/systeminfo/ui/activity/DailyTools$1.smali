.class final Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$1;
.super Landroid/os/Handler;
.source "DailyTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$1;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 41
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 45
    :goto_0
    return-void

    .line 43
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$1;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 44
    .local v0, "m":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
