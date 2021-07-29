.class final Lcom/lenovo/safecenter/Laboratory/GuestModeSet$5;
.super Ljava/lang/Object;
.source "GuestModeSet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$5;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 552
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$5;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->x(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/app/ProgressDialog;

    .line 553
    return-void
.end method
