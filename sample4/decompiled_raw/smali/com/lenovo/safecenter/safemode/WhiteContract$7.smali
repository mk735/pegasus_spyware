.class final Lcom/lenovo/safecenter/safemode/WhiteContract$7;
.super Ljava/lang/Object;
.source "WhiteContract.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/safemode/WhiteContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/lenovo/safecenter/safemode/WhiteContract;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/WhiteContract;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$7;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    iput-object p2, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$7;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$7;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$7;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 85
    new-instance v0, Lcom/lenovo/safecenter/safemode/WhiteContract$7$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/safemode/WhiteContract$7$1;-><init>(Lcom/lenovo/safecenter/safemode/WhiteContract$7;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/safemode/WhiteContract$7$1;->start()V

    .line 104
    return-void
.end method
