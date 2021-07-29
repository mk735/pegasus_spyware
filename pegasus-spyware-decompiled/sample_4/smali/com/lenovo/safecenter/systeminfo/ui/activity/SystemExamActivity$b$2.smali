.class final Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b$2;
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
    .line 320
    iput-object p1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 323
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    const-class v2, Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 324
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;

    iget-object v1, v1, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-virtual {v1, v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->startActivity(Landroid/content/Intent;)V

    .line 326
    return-void
.end method
