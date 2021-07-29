.class final Lcom/lenovo/safecenter/net/doublemode/NetSetting$1;
.super Landroid/os/Handler;
.source "NetSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/net/doublemode/NetSetting;
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
    .line 89
    iput-object p1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$1;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 91
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 117
    :goto_0
    return-void

    .line 93
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    .line 94
    .local v1, "sms":Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$1;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v3}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->a(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/EditText;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$1;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v3}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->b(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/EditText;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$1;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v3}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->c(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)I

    move-result v3

    iget v4, v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->id:I

    if-eq v3, v4, :cond_1

    .line 95
    :cond_0
    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$1;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    iget v4, v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->id:I

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->a(Lcom/lenovo/safecenter/net/doublemode/NetSetting;I)V

    .line 97
    :cond_1
    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$1;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v3}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->a(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$1;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v3}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->b(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$1;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    const v4, 0x7f0d0833

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$1;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v4}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->d(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "SIM_CARD_CITY_DESC"

    const-string v6, "default"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$1;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v4}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->d(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "SIM_CARD_CARRY_DESC"

    const-string v6, "default"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$1;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v3}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->e(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v3, v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 110
    :cond_2
    const v2, 0x7f0d083d

    .line 114
    .local v2, "toast":I
    :goto_1
    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$1;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v3}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->f(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 112
    .end local v2    # "toast":I
    :cond_3
    const v2, 0x7f0d0837

    .restart local v2    # "toast":I
    goto :goto_1

    .line 91
    :pswitch_data_0
    .packed-switch 0x7f0d0836
        :pswitch_0
    .end packed-switch
.end method
