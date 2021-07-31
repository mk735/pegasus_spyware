.class final Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$1;
.super Ljava/lang/Object;
.source "AgainstTheftSafePhoneSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 50
    iput-object p1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$1;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$1;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->finish()V

    .line 54
    return-void
.end method
