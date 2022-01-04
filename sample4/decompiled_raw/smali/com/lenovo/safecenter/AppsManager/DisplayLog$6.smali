.class final Lcom/lenovo/safecenter/AppsManager/DisplayLog$6;
.super Ljava/lang/Object;
.source "DisplayLog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/DisplayLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$6;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$6;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->i(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)I

    move-result v0

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$6;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    const-string v1, "safe_log_tariff"

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->a(Lcom/lenovo/safecenter/AppsManager/DisplayLog;Ljava/lang/String;)V

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$6;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    const-string v1, "safe_log_privacy"

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->a(Lcom/lenovo/safecenter/AppsManager/DisplayLog;Ljava/lang/String;)V

    goto :goto_0
.end method
