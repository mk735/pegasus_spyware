.class final Lcom/lenovo/safecenter/antivirus/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/antivirus/MainActivity;->onBtnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/MainActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/MainActivity;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$2;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v3, 0x7f0d0135

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 266
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    if-nez p3, :cond_3

    .line 272
    sget-boolean v0, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->isupdating:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->isDowning:Z

    if-nez v0, :cond_2

    .line 274
    sput-boolean v1, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->isfrom:Z

    .line 275
    sput-boolean v1, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->isDowning:Z

    .line 276
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$2;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 277
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$2;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/antivirus/MainActivity;->update()V

    goto :goto_0

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$2;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 285
    :cond_3
    if-ne p3, v1, :cond_0

    .line 287
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$2;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/MainActivity;->b(Lcom/lenovo/safecenter/antivirus/MainActivity;)Lcom/lenovo/safecenter/antivirus/domain/VirusLog;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 289
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$2;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$2;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    const-class v3, Lcom/lenovo/safecenter/antivirus/views/LogActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/antivirus/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 293
    :cond_4
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$2;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    const v1, 0x7f0d0317

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
