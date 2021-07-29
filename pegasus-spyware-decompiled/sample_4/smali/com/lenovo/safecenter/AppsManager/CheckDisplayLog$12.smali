.class final Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$12;
.super Ljava/lang/Object;
.source "CheckDisplayLog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;Z)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$12;->b:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    iput-boolean p2, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$12;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$12;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$12;->b:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->l(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$12;->b:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->finish()V

    .line 257
    return-void
.end method
