.class final Lcom/lenovo/safecenter/Laboratory/AppUninstall$1;
.super Ljava/lang/Object;
.source "AppUninstall.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/Laboratory/AppUninstall;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$1;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$1;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->finish()V

    .line 109
    return-void
.end method
