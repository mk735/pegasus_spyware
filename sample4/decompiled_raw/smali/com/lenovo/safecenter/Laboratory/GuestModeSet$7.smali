.class final Lcom/lenovo/safecenter/Laboratory/GuestModeSet$7;
.super Ljava/lang/Object;
.source "GuestModeSet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/Laboratory/GuestModeSet;
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
    .line 201
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$7;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$7;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->finish()V

    .line 204
    return-void
.end method
