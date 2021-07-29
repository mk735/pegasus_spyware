.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$2;
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
    .line 251
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$2;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$2;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->finish()V

    .line 254
    return-void
.end method
