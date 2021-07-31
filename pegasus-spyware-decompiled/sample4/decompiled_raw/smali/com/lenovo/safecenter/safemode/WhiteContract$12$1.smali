.class final Lcom/lenovo/safecenter/safemode/WhiteContract$12$1;
.super Ljava/lang/Thread;
.source "WhiteContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/WhiteContract$12;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/support/Contract;

.field final synthetic b:Lcom/lenovo/safecenter/safemode/WhiteContract$12;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/WhiteContract$12;Lcom/lenovo/safecenter/support/Contract;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$12$1;->b:Lcom/lenovo/safecenter/safemode/WhiteContract$12;

    iput-object p2, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$12$1;->a:Lcom/lenovo/safecenter/support/Contract;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$12$1;->b:Lcom/lenovo/safecenter/safemode/WhiteContract$12;

    iget-object v0, v0, Lcom/lenovo/safecenter/safemode/WhiteContract$12;->c:Lcom/lenovo/safecenter/safemode/WhiteContract;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$12$1;->a:Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/safemode/WhiteContract;->initCopyDel(Lcom/lenovo/safecenter/support/Contract;)V

    .line 279
    return-void
.end method
