.class final Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$6;
.super Ljava/lang/Object;
.source "AntiSpamMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->setOnclick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)V
    .locals 0

    .prologue
    .line 658
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$6;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 662
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$6;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$6;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    const-class v3, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->startActivity(Landroid/content/Intent;)V

    .line 664
    return-void
.end method
