.class final Lcom/lenovo/safecenter/Laboratory/GuestModeSet$12;
.super Ljava/lang/Object;
.source "GuestModeSet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/Laboratory/GuestModeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$12;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 376
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$12;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->i(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$12;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->h(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Lcom/lenovo/safecenter/support/AppInfo;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/database/AppDatabase;->insertApp(Lcom/lenovo/safecenter/support/AppInfo;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 377
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$12;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->p(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)V

    .line 378
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$12;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->c(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 379
    new-instance v0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$12$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$12$1;-><init>(Lcom/lenovo/safecenter/Laboratory/GuestModeSet$12;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$12$1;->start()V

    .line 388
    :cond_0
    return-void
.end method
