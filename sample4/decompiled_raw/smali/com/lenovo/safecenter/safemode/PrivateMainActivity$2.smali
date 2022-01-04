.class final Lcom/lenovo/safecenter/safemode/PrivateMainActivity$2;
.super Ljava/lang/Object;
.source "PrivateMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/safemode/PrivateMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$2;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 119
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$2;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/WflUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$2;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->a(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;)Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    move-result-object v0

    if-nez v0, :cond_0

    .line 121
    iget-object v9, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$2;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    new-instance v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$2;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    const-string v2, "com.lenovo.safebox"

    const-string v4, "self"

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v8}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZZZLcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;)V

    invoke-static {v9, v0}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->a(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;)Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$2;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->a(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;)Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->upDate(Z)V

    .line 128
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$2;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    const/4 v1, 0x4

    invoke-static {v0, v1, v8}, Lcom/lenovo/safecenter/utils/DialogUtil;->createManualUpdateDialog(Landroid/content/Context;ILcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;)Landroid/app/Dialog;

    goto :goto_0
.end method
