.class final Lcom/lenovo/safecenter/antivirus/views/LogActivity$4;
.super Ljava/lang/Object;
.source "LogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/antivirus/views/LogActivity;->OnBtnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/views/LogActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/views/LogActivity;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$4;->a:Lcom/lenovo/safecenter/antivirus/views/LogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$4;->a:Lcom/lenovo/safecenter/antivirus/views/LogActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->g(Lcom/lenovo/safecenter/antivirus/views/LogActivity;)V

    .line 125
    return-void
.end method
