.class final Lcom/lenovo/safecenter/safemode/PrivateMainActivity$3;
.super Ljava/lang/Object;
.source "PrivateMainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->findViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$3;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_2

    .line 203
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$3;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->b(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$3;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    const-string v3, "com.lenovo.safecenter.safemode.SofeModeMain"

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->a(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;Ljava/lang/String;)V

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lenovo.safecenter.safemode.SofeModeMain"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "pwd"

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$3;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "pwd"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 212
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$3;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-virtual {v2, v1}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 217
    .end local v1    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v2

    :try_start_1
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$3;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->c(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 286
    :catch_1
    move-exception v0

    .line 288
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$3;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->c(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;)V

    .line 289
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 219
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    const/4 v2, 0x1

    if-ne p3, v2, :cond_5

    .line 229
    :try_start_2
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$3;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->b(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 231
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$3;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    const-string v3, "com.lenovo.safecenter.LENOVO_SAFEBOX"

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->a(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 249
    :catch_2
    move-exception v2

    :try_start_3
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$3;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->c(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 234
    :cond_3
    :try_start_4
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$3;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$3;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "pwd"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/lenovo/safecenter/utils/PwdUtil;->checkPassword(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 236
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lenovo.safecenter.LENOVO_SAFEBOX"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .restart local v1    # "i":Landroid/content/Intent;
    const-string v2, "pwd"

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$3;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "pwd"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 239
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$3;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-virtual {v2, v1}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 243
    .end local v1    # "i":Landroid/content/Intent;
    :cond_4
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$3;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->c(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 251
    :cond_5
    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    .line 262
    :try_start_5
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$3;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->b(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 264
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$3;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    const-string v3, "com.lenovo.safecenter.LENOVO_APPLOCK"

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->a(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 283
    :catch_3
    move-exception v2

    :try_start_6
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$3;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->c(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;)V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 267
    :cond_6
    :try_start_7
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$3;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$3;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "pwd"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/lenovo/safecenter/utils/PwdUtil;->checkPassword(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 269
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lenovo.safecenter.LENOVO_APPLOCK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    .restart local v1    # "i":Landroid/content/Intent;
    const-string v2, "pwd"

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$3;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "pwd"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 272
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$3;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-virtual {v2, v1}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 276
    .end local v1    # "i":Landroid/content/Intent;
    :cond_7
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$3;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->c(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0
.end method
