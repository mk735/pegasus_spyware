.class final Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity$1;
.super Ljava/lang/Object;
.source "AgainstTheftSafeMailSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity$1;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity$1;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;->finish()V

    .line 42
    return-void
.end method
