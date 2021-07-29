.class final Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$7;
.super Ljava/lang/Object;
.source "HarassSet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 316
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "intercall_mode_type"

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 317
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->InitMode()V

    .line 319
    return-void
.end method
