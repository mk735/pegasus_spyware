.class final Lcom/lenovo/safecenter/safemode/WhiteCall$5;
.super Ljava/lang/Object;
.source "WhiteCall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/safemode/WhiteCall;
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
    .line 192
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/WhiteCall$5;->a:Lcom/lenovo/safecenter/safemode/WhiteCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall$5;->a:Lcom/lenovo/safecenter/safemode/WhiteCall;

    invoke-static {v0}, Lcom/lenovo/safecenter/safemode/WhiteCall;->c(Lcom/lenovo/safecenter/safemode/WhiteCall;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/database/AppDatabase;->deleteAllCall()V

    .line 195
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall$5;->a:Lcom/lenovo/safecenter/safemode/WhiteCall;

    invoke-static {v0}, Lcom/lenovo/safecenter/safemode/WhiteCall;->d(Lcom/lenovo/safecenter/safemode/WhiteCall;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 196
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall$5;->a:Lcom/lenovo/safecenter/safemode/WhiteCall;

    invoke-static {v0}, Lcom/lenovo/safecenter/safemode/WhiteCall;->f(Lcom/lenovo/safecenter/safemode/WhiteCall;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 197
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall$5;->a:Lcom/lenovo/safecenter/safemode/WhiteCall;

    invoke-static {v0}, Lcom/lenovo/safecenter/safemode/WhiteCall;->a(Lcom/lenovo/safecenter/safemode/WhiteCall;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 199
    return-void
.end method
