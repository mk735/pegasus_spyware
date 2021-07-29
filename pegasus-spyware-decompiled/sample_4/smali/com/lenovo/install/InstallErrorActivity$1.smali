.class final Lcom/lenovo/install/InstallErrorActivity$1;
.super Ljava/lang/Object;
.source "InstallErrorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/install/InstallErrorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/install/InstallErrorActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/install/InstallErrorActivity;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/lenovo/install/InstallErrorActivity$1;->a:Lcom/lenovo/install/InstallErrorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/install/InstallErrorActivity$1;->a:Lcom/lenovo/install/InstallErrorActivity;

    invoke-virtual {v0}, Lcom/lenovo/install/InstallErrorActivity;->finish()V

    .line 33
    return-void
.end method
