.class final Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$4;
.super Ljava/lang/Object;
.source "CustomDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$4;->a:Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 439
    return-void
.end method
