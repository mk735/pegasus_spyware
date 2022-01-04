.class final Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$19;
.super Ljava/lang/Object;
.source "AntiSpamMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->showReport_fail()V
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
    .line 140
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$19;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 143
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .local v0, "component":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 145
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 146
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$19;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-virtual {v2, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->startActivity(Landroid/content/Intent;)V

    .line 147
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 149
    return-void
.end method
