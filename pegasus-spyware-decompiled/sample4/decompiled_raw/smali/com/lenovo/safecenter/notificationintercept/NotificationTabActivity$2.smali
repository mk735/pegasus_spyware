.class final Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$2;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "NotificationTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$2;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 180
    if-nez p1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$2;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->e(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity$2;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;->f(Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method
