.class final Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;
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
    .line 270
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c$2;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Const;->setProtectHarassSwitchState(Z)V

    .line 273
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c$2;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->b(Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;)Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;->notifyChanged()V

    .line 274
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c$2;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeRefreshProtectHarassDetail()V

    .line 275
    return-void
.end method
