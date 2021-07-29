.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$2;
.super Ljava/lang/Object;
.source "ManLocalBlackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->setOnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$2;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 257
    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$2;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-direct {v1, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;-><init>(Landroid/content/Context;)V

    .line 258
    .local v1, "db_help":Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$2;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->g(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->getBlackListcount(I)I

    move-result v0

    .line 259
    .local v0, "count":I
    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_0

    .line 261
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$2;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    const v3, 0x7f0d02a7

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 267
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$2;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->showDialog(I)V

    goto :goto_0
.end method
