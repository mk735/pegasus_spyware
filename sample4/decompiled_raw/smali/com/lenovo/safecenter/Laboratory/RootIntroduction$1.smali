.class final Lcom/lenovo/safecenter/Laboratory/RootIntroduction$1;
.super Ljava/lang/Object;
.source "RootIntroduction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/Laboratory/RootIntroduction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/Laboratory/RootIntroduction;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/Laboratory/RootIntroduction;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/RootIntroduction$1;->a:Lcom/lenovo/safecenter/Laboratory/RootIntroduction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/RootIntroduction$1;->a:Lcom/lenovo/safecenter/Laboratory/RootIntroduction;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/Laboratory/RootIntroduction;->finish()V

    .line 28
    return-void
.end method
