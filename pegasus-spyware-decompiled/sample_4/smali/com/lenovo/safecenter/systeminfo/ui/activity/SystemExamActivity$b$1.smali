.class final Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b$1;
.super Ljava/lang/Object;
.source "SystemExamActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b$1;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 330
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 331
    return-void
.end method
