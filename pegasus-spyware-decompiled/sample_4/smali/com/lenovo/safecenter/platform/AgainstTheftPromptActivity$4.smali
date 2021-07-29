.class final Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$4;
.super Ljava/lang/Object;
.source "AgainstTheftPromptActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$4;->a:Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$4;->a:Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->a:Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 113
    return-void
.end method
