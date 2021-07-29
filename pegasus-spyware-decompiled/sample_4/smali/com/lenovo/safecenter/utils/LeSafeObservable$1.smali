.class final Lcom/lenovo/safecenter/utils/LeSafeObservable$1;
.super Landroid/os/Handler;
.source "LeSafeObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/utils/LeSafeObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/utils/LeSafeObservable;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/utils/LeSafeObservable;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 93
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 185
    :goto_0
    return-void

    .line 95
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->a(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V

    .line 96
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    .line 99
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->b(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V

    .line 100
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    .line 103
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->c(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V

    .line 104
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    .line 107
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->d(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V

    .line 108
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    .line 111
    :pswitch_4
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->e(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V

    .line 112
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    :pswitch_5
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->f(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V

    .line 116
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    .line 119
    :pswitch_6
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->g(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V

    .line 120
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    .line 123
    :pswitch_7
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->h(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V

    .line 124
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 127
    :pswitch_8
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->i(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V

    .line 128
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 131
    :pswitch_9
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->j(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V

    .line 132
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 135
    :pswitch_a
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->k(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V

    .line 136
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 139
    :pswitch_b
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->l(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V

    .line 140
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 143
    :pswitch_c
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->m(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V

    .line 144
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 147
    :pswitch_d
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->n(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V

    .line 148
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 151
    :pswitch_e
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->o(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V

    .line 152
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 155
    :pswitch_f
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->p(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V

    .line 156
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 159
    :pswitch_10
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->q(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V

    .line 160
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 163
    :pswitch_11
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->r(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V

    .line 164
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 167
    :pswitch_12
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->s(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V

    .line 168
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 171
    :pswitch_13
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->t(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V

    .line 172
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 175
    :pswitch_14
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->u(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V

    .line 176
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 179
    :pswitch_15
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->v(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V

    .line 180
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 183
    :pswitch_16
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->w(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V

    .line 184
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method
