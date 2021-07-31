.class final Lcom/lenovo/safecenter/safemode/WhiteSms$6;
.super Ljava/lang/Object;
.source "WhiteSms.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/safemode/WhiteSms;
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
    .line 165
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/WhiteSms$6;->a:Lcom/lenovo/safecenter/safemode/WhiteSms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSms$6;->a:Lcom/lenovo/safecenter/safemode/WhiteSms;

    invoke-static {v0}, Lcom/lenovo/safecenter/safemode/WhiteSms;->d(Lcom/lenovo/safecenter/safemode/WhiteSms;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/database/AppDatabase;->deleteSms(I)V

    .line 168
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSms$6;->a:Lcom/lenovo/safecenter/safemode/WhiteSms;

    invoke-static {v0}, Lcom/lenovo/safecenter/safemode/WhiteSms;->b(Lcom/lenovo/safecenter/safemode/WhiteSms;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 169
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSms$6;->a:Lcom/lenovo/safecenter/safemode/WhiteSms;

    invoke-static {v0}, Lcom/lenovo/safecenter/safemode/WhiteSms;->e(Lcom/lenovo/safecenter/safemode/WhiteSms;)Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;->notifyDataSetChanged()V

    .line 170
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSms$6;->a:Lcom/lenovo/safecenter/safemode/WhiteSms;

    invoke-static {v0}, Lcom/lenovo/safecenter/safemode/WhiteSms;->a(Lcom/lenovo/safecenter/safemode/WhiteSms;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 171
    return-void
.end method
