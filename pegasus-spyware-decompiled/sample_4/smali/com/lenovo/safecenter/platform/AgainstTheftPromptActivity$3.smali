.class final Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$3;
.super Ljava/lang/Object;
.source "AgainstTheftPromptActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 58
    iput-object p1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$3;->a:Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity$3;->a:Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lenovo.antivirus.gifmain"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftPromptActivity;->startActivity(Landroid/content/Intent;)V

    .line 62
    const/4 v0, 0x1

    return v0
.end method
