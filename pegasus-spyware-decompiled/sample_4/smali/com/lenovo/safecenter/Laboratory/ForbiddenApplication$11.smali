.class final Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$11;
.super Ljava/lang/Object;
.source "ForbiddenApplication.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$11;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$11;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->finish()V

    .line 231
    return-void
.end method
