.class final Lcom/lenovo/safecenter/safemode/ManWhiteSms$2;
.super Ljava/lang/Object;
.source "ManWhiteSms.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/ManWhiteSms;->onBtnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/ManWhiteSms;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$2;->a:Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$2;->a:Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->finish()V

    .line 166
    return-void
.end method
