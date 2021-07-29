.class final Lcom/lenovo/safecenter/shortcut/ClearnView$b;
.super Landroid/os/Handler;
.source "ClearnView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/shortcut/ClearnView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/shortcut/ClearnView;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/shortcut/ClearnView;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$b;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 428
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 439
    :goto_0
    return-void

    .line 437
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$b;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v0}, Lcom/lenovo/safecenter/shortcut/ClearnView;->y(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/graphics/drawable/ClipDrawable;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 438
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$b;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v0}, Lcom/lenovo/safecenter/shortcut/ClearnView;->z(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 428
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
