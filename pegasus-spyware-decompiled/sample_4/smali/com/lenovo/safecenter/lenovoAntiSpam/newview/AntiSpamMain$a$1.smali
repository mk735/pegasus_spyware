.class final Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$1;
.super Ljava/lang/Object;
.source "AntiSpamMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;)V
    .locals 0

    .prologue
    .line 1055
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->k(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)V

    .line 1061
    return-void
.end method
