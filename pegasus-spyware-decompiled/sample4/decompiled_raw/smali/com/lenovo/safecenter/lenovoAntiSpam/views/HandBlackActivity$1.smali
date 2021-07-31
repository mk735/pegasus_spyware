.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;
.super Ljava/lang/Object;
.source "HandBlackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->onBtnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 15
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    const v2, 0x7f0d0295

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 248
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 139
    .local v13, "number":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->b(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;)Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->getRealPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, "checknumber":Ljava/lang/String;
    const-string v0, "content://com.lenovo.safecenter.WhitePersonProvider/whiteperson"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 147
    .local v1, "uri1":Landroid/net/Uri;
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const-string v3, "realnumber=?"

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 159
    .local v14, "phoneCursor":Landroid/database/Cursor;
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 162
    .local v10, "count":I
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 163
    if-lez v10, :cond_3

    .line 165
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    const v2, 0x7f0d0298

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 169
    :cond_3
    const/4 v11, 0x0

    .line 170
    .local v11, "name":Ljava/lang/String;
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 172
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 191
    .end local v11    # "name":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->e(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 193
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;I)I

    .line 195
    :cond_4
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->e(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_5

    .line 197
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;I)I

    .line 199
    :cond_5
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->e(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 201
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;I)I

    .line 203
    :cond_6
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->e(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_7

    .line 205
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;I)I

    .line 207
    :cond_7
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->f(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "modify"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 209
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "id"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v13, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->isLocalBlackEdit(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 211
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    const v2, 0x7f0d0297

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 175
    .end local v4    # "name":Ljava/lang/String;
    .restart local v11    # "name":Ljava/lang/String;
    :cond_8
    const-string v0, "content://com.android.contacts/data/phones"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 177
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "display_name"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PHONE_NUMBERS_EQUAL(data1,\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\',0)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 179
    .local v9, "contract_Cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 181
    const-string v0, "display_name"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 184
    .end local v11    # "name":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    :goto_2
    if-eqz v4, :cond_9

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 186
    :cond_9
    const/4 v4, 0x0

    .line 188
    :cond_a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 215
    .end local v9    # "contract_Cursor":Landroid/database/Cursor;
    :cond_b
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->h(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;)Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    move-result-object v2

    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "id"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->g(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;)I

    move-result v7

    const/4 v8, 0x0

    move-object v5, v13

    invoke-virtual/range {v2 .. v8}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->updateLocalBlack_Demo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 216
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    const-string v2, "com.lenovo.antispam.blackperson.change"

    invoke-static {v0, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->sendBraodcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->finish()V

    goto/16 :goto_0

    .line 222
    :cond_c
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    invoke-static {v0, v13}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->isLocalBlack(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 226
    new-instance v12, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;

    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->g(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;)I

    move-result v0

    const/4 v2, 0x0

    invoke-direct {v12, v4, v13, v0, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 227
    .local v12, "newinfo":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->b(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;)Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->getRealPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->setRealnumber(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->h(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;)Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->insertLocalBlack(Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;)V

    .line 231
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    const-string v2, "com.lenovo.antispam.blackperson.change"

    invoke-static {v0, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->sendBraodcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    const v2, 0x7f0d00ef

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 234
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->finish()V

    goto/16 :goto_0

    .line 239
    .end local v12    # "newinfo":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;
    :cond_d
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    const v2, 0x7f0d0297

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 245
    .end local v1    # "uri1":Landroid/net/Uri;
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "checknumber":Ljava/lang/String;
    .end local v10    # "count":I
    .end local v14    # "phoneCursor":Landroid/database/Cursor;
    :cond_e
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    const v2, 0x7f0d01ea

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .restart local v1    # "uri1":Landroid/net/Uri;
    .restart local v6    # "checknumber":Ljava/lang/String;
    .restart local v9    # "contract_Cursor":Landroid/database/Cursor;
    .restart local v10    # "count":I
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v14    # "phoneCursor":Landroid/database/Cursor;
    :cond_f
    move-object v4, v11

    .end local v11    # "name":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    goto/16 :goto_2
.end method
