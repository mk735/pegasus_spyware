.class final Lcom/lenovo/safecenter/AppsManager/SettingsActivity$3;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$3;->a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 513
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$3;->a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->m(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Landroid/app/ProgressDialog;

    .line 514
    return-void
.end method
