.class final Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$2;
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
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)V
    .locals 1

    .prologue
    .line 272
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$2;->b:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$2;->a:Z

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$2;->b:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->m(Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog$2;->b:Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/AppsManager/CheckDisplayLog;->finish()V

    .line 278
    return-void
.end method
