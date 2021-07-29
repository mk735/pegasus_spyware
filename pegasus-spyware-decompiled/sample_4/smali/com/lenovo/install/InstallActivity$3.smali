.class final Lcom/lenovo/install/InstallActivity$3;
.super Ljava/lang/Object;
.source "InstallActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/install/InstallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/install/InstallActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/install/InstallActivity;)V
    .locals 0

    .prologue
    .line 951
    iput-object p1, p0, Lcom/lenovo/install/InstallActivity$3;->a:Lcom/lenovo/install/InstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    .prologue
    .line 953
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity$3;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v0}, Lcom/lenovo/install/InstallActivity;->E(Lcom/lenovo/install/InstallActivity;)Landroid/widget/PopupWindow;

    .line 954
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity$3;->a:Lcom/lenovo/install/InstallActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lenovo/install/InstallActivity;->d:Z

    .line 955
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity$3;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v0}, Lcom/lenovo/install/InstallActivity;->F(Lcom/lenovo/install/InstallActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020059

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 956
    return-void
.end method
