.class final Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity$2;
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
    .line 63
    iput-object p1, p0, Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity$2;->a:Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity$2;->a:Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/MainTab/VersionUpdateDIalogActivity;->finish()V

    .line 68
    return-void
.end method
