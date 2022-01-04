.class final Lcom/lenovo/safecenter/MainTab/AboutActivity$1;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/MainTab/AboutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/MainTab/AboutActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/MainTab/AboutActivity;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lenovo/safecenter/MainTab/AboutActivity$1;->a:Lcom/lenovo/safecenter/MainTab/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/AboutActivity$1;->a:Lcom/lenovo/safecenter/MainTab/AboutActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/MainTab/AboutActivity;->finish()V

    .line 64
    return-void
.end method
