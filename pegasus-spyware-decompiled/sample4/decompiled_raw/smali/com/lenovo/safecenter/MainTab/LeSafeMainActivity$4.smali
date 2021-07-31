.class final Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;
.super Ljava/lang/Object;
.source "LeSafeMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 952
    iput-object p1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;->c:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    iput-object p2, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 957
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;->c:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->e(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d04a1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1032
    :goto_0
    return-void

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 962
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;->c:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->e(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d04a3

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 965
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;->c:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->isMailNO(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 967
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;->c:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->e(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d04a2

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 970
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;->c:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->n(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)V

    .line 971
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;->c:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->e(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/WflUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 972
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;->c:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->m(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 973
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;->c:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->l(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "feedback_msg"

    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 979
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;->c:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->l(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "feedback_mail"

    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 986
    :cond_3
    new-instance v0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4$1;-><init>(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$4$1;->start()V

    goto/16 :goto_0
.end method
