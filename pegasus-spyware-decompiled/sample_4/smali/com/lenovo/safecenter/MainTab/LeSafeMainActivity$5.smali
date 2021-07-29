.class final Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$5;
.super Ljava/lang/Object;
.source "LeSafeMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;
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
    .line 1099
    iput-object p1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$5;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$5;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->b(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/app/ProgressDialog;

    .line 1102
    return-void
.end method
