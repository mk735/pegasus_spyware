.class final Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity$1;
.super Ljava/lang/Object;
.source "VersionUpdateDIalogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity$1;->a:Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity$1;->a:Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity;

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity$1;->a:Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity$1;->a:Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "apkname"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity$1;->a:Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "filesize"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/lps/sus/SUS;->downloadApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 54
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity$1;->a:Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity;->finish()V

    .line 55
    return-void
.end method
