.class final Lcom/lenovo/lps/sus/control/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lenovo/lps/sus/control/am;->b(Z)V

    invoke-static {}, Lcom/lenovo/lps/sus/control/am;->j()V

    const-string v0, "SUS"

    const-string v1, "SUSPromptActivity popupPromptionDialog PositiveButton"

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/sus/c/a;->e()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
