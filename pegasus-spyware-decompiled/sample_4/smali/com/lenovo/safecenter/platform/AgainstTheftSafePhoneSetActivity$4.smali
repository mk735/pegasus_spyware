.class final Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$4;
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
    .line 187
    iput-object p1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$4;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$4;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d01cf

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 190
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$4;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->i(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)V

    .line 191
    return-void
.end method
