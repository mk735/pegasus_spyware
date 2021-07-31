.class final Lcom/lenovo/safecenter/utils/DialogUtil$13;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/utils/DialogUtil;->createManualUpdateDialog(Landroid/content/Context;ILcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/DialogUtil$13;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/DialogUtil$13;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/WflUtils;->startWirelessSettingsActivity(Landroid/content/Context;)V

    .line 291
    return-void
.end method
