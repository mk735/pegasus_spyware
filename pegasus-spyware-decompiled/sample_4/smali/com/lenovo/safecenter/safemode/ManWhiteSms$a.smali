.class final Lcom/lenovo/safecenter/safemode/ManWhiteSms$a;
.super Landroid/os/Handler;
.source "ManWhiteSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/safemode/ManWhiteSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/ManWhiteSms;


# direct methods
.method private constructor <init>(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$a;->a:Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/safecenter/safemode/ManWhiteSms;B)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/safemode/ManWhiteSms$a;-><init>(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 46
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 58
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$a;->a:Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->a(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)Z

    .line 49
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$a;->a:Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->b(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$a;->a:Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->b(Lcom/lenovo/safecenter/safemode/ManWhiteSms;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ManWhiteSms$a;->a:Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/safemode/ManWhiteSms;->finish()V

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
