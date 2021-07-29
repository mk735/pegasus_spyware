.class final Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$5;
.super Ljava/lang/Object;
.source "AgainstTheftSafePhoneSetActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$5;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v6, 0x1

    .line 179
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$5;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/safecenter/utils/PwdUtil;->getPasswordWithJieMi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "password":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$5;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$5;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->a(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$5;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    const v5, 0x7f0d014b

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$5;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    const v5, 0x7f0d014a

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v6}, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->sendMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 182
    const/4 v1, 0x0

    sput-boolean v1, Lcom/lenovo/safecenter/utils/Const;->isTariff:Z

    .line 183
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$5;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d01cf

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 184
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$5;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->i(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)V

    .line 185
    return-void
.end method
