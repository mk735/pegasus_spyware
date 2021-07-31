.class final Lcom/lenovo/safecenter/safemode/WhiteSms$4;
.super Ljava/lang/Object;
.source "WhiteSms.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/WhiteSms;->onBtnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/WhiteSms;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/WhiteSms;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/WhiteSms$4;->a:Lcom/lenovo/safecenter/safemode/WhiteSms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 147
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSms$4;->a:Lcom/lenovo/safecenter/safemode/WhiteSms;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/WhiteSms;->b(Lcom/lenovo/safecenter/safemode/WhiteSms;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSms$4;->a:Lcom/lenovo/safecenter/safemode/WhiteSms;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/WhiteSms;->c(Lcom/lenovo/safecenter/safemode/WhiteSms;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
