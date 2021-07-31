.class final Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$17;
.super Ljava/lang/Object;
.source "AntiSpamMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->showDelLocalBlack(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1256
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$17;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    iput-object p2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$17;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$17;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$17;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->delLocalBlack(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1259
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$17;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    const v1, 0x7f0d065e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1261
    return-void
.end method
