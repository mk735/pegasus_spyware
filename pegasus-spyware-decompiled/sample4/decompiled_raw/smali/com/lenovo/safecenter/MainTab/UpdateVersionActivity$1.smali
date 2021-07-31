.class final Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity$1;
.super Ljava/lang/Object;
.source "UpdateVersionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity$1;->a:Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity$1;->a:Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->finish()V

    .line 121
    return-void
.end method
