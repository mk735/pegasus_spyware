.class final Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$12;
.super Ljava/lang/Object;
.source "LeSafeMainActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->showpopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)V
    .locals 0

    .prologue
    .line 771
    iput-object p1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$12;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    .prologue
    .line 773
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$12;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->j(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/widget/PopupWindow;

    .line 774
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$12;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->k(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201d1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 775
    return-void
.end method
