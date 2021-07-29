.class final Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 241
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getProtectHarassSwitchState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;)V

    .line 250
    :goto_0
    return-void

    .line 246
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Const;->setProtectHarassSwitchState(Z)V

    .line 247
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->b(Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;)Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;->notifyChanged()V

    .line 248
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeRefreshProtectHarassDetail()V

    goto :goto_0
.end method
