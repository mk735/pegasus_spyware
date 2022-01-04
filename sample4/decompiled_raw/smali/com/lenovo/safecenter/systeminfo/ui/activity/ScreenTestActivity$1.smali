.class final Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity$1;
.super Ljava/lang/Object;
.source "ScreenTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity$1;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity$1;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;

    iget v1, v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;->a:I

    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity$1;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;

    iget v0, v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;->a:I

    packed-switch v0, :pswitch_data_0

    .line 61
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity$1;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;->a(Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;)Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_0

    .line 51
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity$1;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;->a(Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_0

    .line 54
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity$1;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;->a(Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_0

    .line 57
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity$1;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;->a(Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f070031

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_0

    .line 60
    :pswitch_4
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity$1;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;->finish()V

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
