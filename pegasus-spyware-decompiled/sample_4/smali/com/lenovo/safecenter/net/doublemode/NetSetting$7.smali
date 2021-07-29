.class final Lcom/lenovo/safecenter/net/doublemode/NetSetting$7;
.super Ljava/lang/Object;
.source "NetSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/net/doublemode/NetSetting;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)V
    .locals 0

    .prologue
    .line 1063
    iput-object p1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$7;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1065
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$7;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v2}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->a(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1066
    .local v1, "content":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$7;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v2}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->b(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1067
    .local v0, "address":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1069
    :cond_0
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$7;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v2}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->f(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d083a

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1081
    :goto_0
    return-void

    .line 1074
    :cond_1
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$7;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v2}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->d(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "sms_message"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1077
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$7;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v2}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->d(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "sms_address"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
