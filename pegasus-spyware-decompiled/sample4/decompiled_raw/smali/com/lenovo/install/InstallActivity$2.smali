.class final Lcom/lenovo/install/InstallActivity$2;
.super Ljava/lang/Object;
.source "InstallActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/install/InstallActivity;->popAwindow(Ljava/lang/String;)V
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
    .line 904
    iput-object p1, p0, Lcom/lenovo/install/InstallActivity$2;->a:Lcom/lenovo/install/InstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    .prologue
    .line 906
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity$2;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v0}, Lcom/lenovo/install/InstallActivity;->D(Lcom/lenovo/install/InstallActivity;)Landroid/widget/PopupWindow;

    .line 907
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity$2;->a:Lcom/lenovo/install/InstallActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lenovo/install/InstallActivity;->d:Z

    .line 908
    return-void
.end method
