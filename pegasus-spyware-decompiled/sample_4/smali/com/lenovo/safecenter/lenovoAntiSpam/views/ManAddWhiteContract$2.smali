.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$2;
.super Ljava/lang/Object;
.source "ManAddWhiteContract.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->showDialog(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$2;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    iput-object p2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 546
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$2;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract$2;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;->initApp_deleteWhite(Ljava/util/List;)V

    .line 547
    return-void
.end method
