.class final Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity$2;
.super Ljava/lang/Object;
.source "UpdateVersionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity$2;->a:Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity$2;->a:Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/WflUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity$2;->a:Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->a()V

    .line 149
    const-string v0, "sus"

    const-string v1, "Update no Started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity$2;->a:Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->showDialog(I)V

    goto :goto_0
.end method
