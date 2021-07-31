.class final Lcom/lenovo/safecenter/safemode/WhiteCall$3;
.super Ljava/lang/Object;
.source "WhiteCall.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/WhiteCall;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/WhiteCall;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/WhiteCall;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/WhiteCall$3;->a:Lcom/lenovo/safecenter/safemode/WhiteCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteCall$3;->a:Lcom/lenovo/safecenter/safemode/WhiteCall;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/WhiteCall;->d(Lcom/lenovo/safecenter/safemode/WhiteCall;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteCall$3;->a:Lcom/lenovo/safecenter/safemode/WhiteCall;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/WhiteCall;->e(Lcom/lenovo/safecenter/safemode/WhiteCall;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
