.class final Lcom/lenovo/install/InstallActivity$9;
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
.field final synthetic a:Lcom/lenovo/install/InstallActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/install/InstallActivity;)V
    .locals 0

    .prologue
    .line 891
    iput-object p1, p0, Lcom/lenovo/install/InstallActivity$9;->a:Lcom/lenovo/install/InstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 893
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity$9;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v0}, Lcom/lenovo/install/InstallActivity;->p(Lcom/lenovo/install/InstallActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "next_notip"

    iget-object v2, p0, Lcom/lenovo/install/InstallActivity$9;->a:Lcom/lenovo/install/InstallActivity;

    iget-boolean v2, v2, Lcom/lenovo/install/InstallActivity;->e:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 896
    iget-object v0, p0, Lcom/lenovo/install/InstallActivity$9;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v0}, Lcom/lenovo/install/InstallActivity;->C(Lcom/lenovo/install/InstallActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 897
    return-void
.end method
