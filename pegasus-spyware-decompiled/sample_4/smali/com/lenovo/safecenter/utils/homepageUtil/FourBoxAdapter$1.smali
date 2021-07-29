.class final Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter$1;
.super Landroid/os/Handler;
.source "FourBoxAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter$1;->a:Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 39
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 42
    :goto_0
    return-void

    .line 41
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter$1;->a:Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
