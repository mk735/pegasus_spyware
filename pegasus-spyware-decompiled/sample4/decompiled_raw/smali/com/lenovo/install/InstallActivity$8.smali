.class final Lcom/lenovo/install/InstallActivity$8;
.super Ljava/lang/Object;
.source "InstallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/install/InstallActivity;->popAwindow(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/lenovo/install/InstallActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/install/InstallActivity;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 880
    iput-object p1, p0, Lcom/lenovo/install/InstallActivity$8;->b:Lcom/lenovo/install/InstallActivity;

    iput-object p2, p0, Lcom/lenovo/install/InstallActivity$8;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 882
    iget-object v1, p0, Lcom/lenovo/install/InstallActivity$8;->b:Lcom/lenovo/install/InstallActivity;

    iget-object v0, p0, Lcom/lenovo/install/InstallActivity$8;->b:Lcom/lenovo/install/InstallActivity;

    iget-boolean v0, v0, Lcom/lenovo/install/InstallActivity;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/lenovo/install/InstallActivity;->e:Z

    .line 883
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity$8;->b:Lcom/lenovo/install/InstallActivity;

    iget-boolean v0, v0, Lcom/lenovo/install/InstallActivity;->e:Z

    if-eqz v0, :cond_1

    .line 884
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity$8;->a:Landroid/widget/ImageView;

    const v1, 0x7f0200eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 888
    :goto_1
    return-void

    .line 882
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 886
    :cond_1
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity$8;->a:Landroid/widget/ImageView;

    const v1, 0x7f0200ef

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method
