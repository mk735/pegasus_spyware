.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm$2;
.super Ljava/lang/Object;
.source "SpamConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm$2;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm$2;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->finish()V

    .line 112
    return-void
.end method
