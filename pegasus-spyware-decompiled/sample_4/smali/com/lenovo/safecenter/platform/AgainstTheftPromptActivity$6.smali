.class final Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$6;
.super Ljava/lang/Object;
.source "AgainstTheftPromptActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 115
    iput-object p1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$6;->a:Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$6;->a:Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->a:Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 119
    return-void
.end method
