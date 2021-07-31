.class final Lcom/lenovo/safecenter/AppsManager/AppPermManager$8;
.super Ljava/lang/Object;
.source "AppPermManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/AppPermManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)V
    .locals 0

    .prologue
    .line 951
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$8;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 953
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$8;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->J(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/app/ProgressDialog;

    .line 954
    return-void
.end method
