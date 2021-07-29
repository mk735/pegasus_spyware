.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$7;
.super Ljava/lang/Object;
.source "NightPreActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    invoke-static {v0, p2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;I)I

    .line 182
    return-void
.end method
