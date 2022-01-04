.class final Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$1;
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
    .line 148
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->getDefsetting()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;I)I

    .line 151
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;

    invoke-direct {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;-><init>()V

    const-string v1, "getendmode"

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 152
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->InitEndMode()V

    .line 153
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;)I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->b(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;II)V

    .line 154
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 155
    return-void
.end method
