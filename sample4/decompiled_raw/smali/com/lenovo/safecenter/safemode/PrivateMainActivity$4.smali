.class final Lcom/lenovo/safecenter/safemode/PrivateMainActivity$4;
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
    .line 360
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$4;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 363
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/PrivateMainActivity$4;->a:Lcom/lenovo/safecenter/safemode/PrivateMainActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/safemode/PrivateMainActivity;->d(Lcom/lenovo/safecenter/safemode/PrivateMainActivity;)Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 364
    return-void
.end method
