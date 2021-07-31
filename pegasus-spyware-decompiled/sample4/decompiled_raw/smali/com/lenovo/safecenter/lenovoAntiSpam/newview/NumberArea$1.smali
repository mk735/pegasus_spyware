.class final Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea$1;
.super Ljava/lang/Object;
.source "NumberArea.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 49
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;

    iget-object v2, v2, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "number":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 51
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;)Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->getLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "area":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 57
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;

    iget-object v2, v2, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .end local v0    # "area":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 59
    .restart local v0    # "area":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;

    iget-object v2, v2, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;->b:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 63
    .end local v0    # "area":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;

    iget-object v2, v2, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;->b:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 45
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 39
    return-void
.end method
