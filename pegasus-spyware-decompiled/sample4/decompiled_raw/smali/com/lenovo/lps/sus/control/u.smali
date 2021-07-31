.class final Lcom/lenovo/lps/sus/control/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/lenovo/lps/sus/control/SUSPromptActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/lps/sus/control/SUSPromptActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/sus/control/u;->a:Lcom/lenovo/lps/sus/control/SUSPromptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v0, "SUS"

    const-string v1, "SUSPromptActivity popupPromptionDialog NegativeButton myMSGHandler=null"

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/u;->a:Lcom/lenovo/lps/sus/control/SUSPromptActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->a(Lcom/lenovo/lps/sus/control/SUSPromptActivity;Z)V

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/u;->a:Lcom/lenovo/lps/sus/control/SUSPromptActivity;

    invoke-static {v0}, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->a(Lcom/lenovo/lps/sus/control/SUSPromptActivity;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
