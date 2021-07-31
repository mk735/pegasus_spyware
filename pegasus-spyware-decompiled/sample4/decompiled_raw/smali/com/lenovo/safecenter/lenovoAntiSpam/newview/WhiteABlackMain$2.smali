.class final Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain$2;
.super Ljava/lang/Object;
.source "WhiteABlackMain.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain$2;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain$2;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->b(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
