.class final Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$5;
.super Ljava/lang/Object;
.source "SignActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->showReport_fail(Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;

.field final synthetic b:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$5;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    iput-object p2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$5;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 445
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$5;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$5;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->deleteSign(Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;)V

    .line 447
    return-void
.end method
