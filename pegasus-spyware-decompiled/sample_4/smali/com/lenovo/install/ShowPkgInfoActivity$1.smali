.class final Lcom/lenovo/install/ShowPkgInfoActivity$1;
.super Ljava/lang/Object;
.source "ShowPkgInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/install/ShowPkgInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/install/ShowPkgInfoActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/install/ShowPkgInfoActivity;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lenovo/install/ShowPkgInfoActivity$1;->a:Lcom/lenovo/install/ShowPkgInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/install/ShowPkgInfoActivity$1;->a:Lcom/lenovo/install/ShowPkgInfoActivity;

    invoke-virtual {v0}, Lcom/lenovo/install/ShowPkgInfoActivity;->finish()V

    .line 41
    return-void
.end method
