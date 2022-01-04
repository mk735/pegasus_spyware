.class final Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4$1;
.super Ljava/lang/Thread;
.source "LeSafeMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;)V
    .locals 0

    .prologue
    .line 986
    iput-object p1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4$1;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 988
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4$1;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;

    iget-object v1, v1, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;->c:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4$1;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;

    iget-object v2, v2, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4$1;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;

    iget-object v3, v3, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;->b:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->feedback(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 992
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 996
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4$1;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;

    iget-object v1, v1, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;->c:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->m(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 997
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4$1;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;

    iget-object v1, v1, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;->c:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->l(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "feedback_msg"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1002
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4$1;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;

    iget-object v1, v1, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;->c:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->l(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "feedback_mail"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1027
    :goto_1
    return-void

    .line 993
    :catch_0
    move-exception v0

    .line 994
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1009
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const-wide/16 v1, 0x1f4

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1013
    :goto_2
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4$1;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;

    iget-object v1, v1, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;->c:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->m(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1014
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4$1;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;

    iget-object v1, v1, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;->c:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->l(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "feedback_msg"

    iget-object v3, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4$1;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;

    iget-object v3, v3, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1020
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4$1;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;

    iget-object v1, v1, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;->c:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->l(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "feedback_mail"

    iget-object v3, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4$1;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;

    iget-object v3, v3, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;->b:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 1010
    :catch_1
    move-exception v0

    .line 1011
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method
