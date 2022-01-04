.class final Lcom/lenovo/safecenter/support/CallInfoWin$2;
.super Ljava/lang/Object;
.source "CallInfoWin.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/support/CallInfoWin;->show(Landroid/text/SpannableString;ZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Landroid/util/DisplayMetrics;

.field b:I

.field c:I

.field d:[I

.field final synthetic e:Lcom/lenovo/safecenter/support/CallInfoWin;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/support/CallInfoWin;)V
    .locals 1

    .prologue
    .line 210
    iput-object p1, p0, Lcom/lenovo/safecenter/support/CallInfoWin$2;->e:Lcom/lenovo/safecenter/support/CallInfoWin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iget-object v0, p0, Lcom/lenovo/safecenter/support/CallInfoWin$2;->e:Lcom/lenovo/safecenter/support/CallInfoWin;

    iget-object v0, v0, Lcom/lenovo/safecenter/support/CallInfoWin;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/support/CallInfoWin$2;->a:Landroid/util/DisplayMetrics;

    .line 214
    iget-object v0, p0, Lcom/lenovo/safecenter/support/CallInfoWin$2;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/lenovo/safecenter/support/CallInfoWin$2;->b:I

    .line 216
    iget-object v0, p0, Lcom/lenovo/safecenter/support/CallInfoWin$2;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/lenovo/safecenter/support/CallInfoWin$2;->c:I

    .line 218
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lenovo/safecenter/support/CallInfoWin$2;->d:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 222
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v4, v6

    .line 223
    .local v4, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v5, v6

    .line 225
    .local v5, "y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 226
    .local v1, "eventaction":I
    packed-switch v1, :pswitch_data_0

    .line 291
    :goto_0
    return v9

    .line 230
    :pswitch_0
    iget-object v6, p0, Lcom/lenovo/safecenter/support/CallInfoWin$2;->d:[I

    iget-object v7, p0, Lcom/lenovo/safecenter/support/CallInfoWin$2;->e:Lcom/lenovo/safecenter/support/CallInfoWin;

    iget-object v7, v7, Lcom/lenovo/safecenter/support/CallInfoWin;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v7, v4, v7

    aput v7, v6, v9

    .line 231
    iget-object v6, p0, Lcom/lenovo/safecenter/support/CallInfoWin$2;->d:[I

    iget-object v7, p0, Lcom/lenovo/safecenter/support/CallInfoWin$2;->e:Lcom/lenovo/safecenter/support/CallInfoWin;

    iget-object v7, v7, Lcom/lenovo/safecenter/support/CallInfoWin;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v7, v5, v7

    aput v7, v6, v8

    goto :goto_0

    .line 263
    :pswitch_1
    iget-object v6, p0, Lcom/lenovo/safecenter/support/CallInfoWin$2;->d:[I

    aget v6, v6, v9

    sub-int v2, v4, v6

    .line 264
    .local v2, "l":I
    iget-object v6, p0, Lcom/lenovo/safecenter/support/CallInfoWin$2;->d:[I

    aget v6, v6, v8

    sub-int v3, v5, v6

    .line 266
    .local v3, "t":I
    iget-object v6, p0, Lcom/lenovo/safecenter/support/CallInfoWin$2;->e:Lcom/lenovo/safecenter/support/CallInfoWin;

    iget-object v6, v6, Lcom/lenovo/safecenter/support/CallInfoWin;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v6, v2

    iget v7, p0, Lcom/lenovo/safecenter/support/CallInfoWin$2;->b:I

    if-le v6, v7, :cond_0

    .line 267
    iget v6, p0, Lcom/lenovo/safecenter/support/CallInfoWin$2;->b:I

    iget-object v7, p0, Lcom/lenovo/safecenter/support/CallInfoWin$2;->e:Lcom/lenovo/safecenter/support/CallInfoWin;

    iget-object v7, v7, Lcom/lenovo/safecenter/support/CallInfoWin;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int v2, v6, v7

    .line 269
    :cond_0
    if-gez v3, :cond_2

    .line 270
    const/4 v3, 0x0

    .line 274
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/lenovo/safecenter/support/CallInfoWin$2;->e:Lcom/lenovo/safecenter/support/CallInfoWin;

    iget-object v6, v6, Lcom/lenovo/safecenter/support/CallInfoWin;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, p0, Lcom/lenovo/safecenter/support/CallInfoWin$2;->e:Lcom/lenovo/safecenter/support/CallInfoWin;

    iget-object v7, v7, Lcom/lenovo/safecenter/support/CallInfoWin;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v2

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 275
    iget-object v6, p0, Lcom/lenovo/safecenter/support/CallInfoWin$2;->e:Lcom/lenovo/safecenter/support/CallInfoWin;

    iget-object v6, v6, Lcom/lenovo/safecenter/support/CallInfoWin;->mLp:Landroid/view/WindowManager$LayoutParams;

    iput v3, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 278
    :try_start_0
    iget-object v6, p0, Lcom/lenovo/safecenter/support/CallInfoWin$2;->e:Lcom/lenovo/safecenter/support/CallInfoWin;

    iget-object v6, v6, Lcom/lenovo/safecenter/support/CallInfoWin;->mWm:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/lenovo/safecenter/support/CallInfoWin$2;->e:Lcom/lenovo/safecenter/support/CallInfoWin;

    invoke-static {v7}, Lcom/lenovo/safecenter/support/CallInfoWin;->a(Lcom/lenovo/safecenter/support/CallInfoWin;)Landroid/widget/LinearLayout;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/safecenter/support/CallInfoWin$2;->e:Lcom/lenovo/safecenter/support/CallInfoWin;

    iget-object v8, v8, Lcom/lenovo/safecenter/support/CallInfoWin;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v6, v7, v8}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 271
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v6, p0, Lcom/lenovo/safecenter/support/CallInfoWin$2;->e:Lcom/lenovo/safecenter/support/CallInfoWin;

    iget-object v6, v6, Lcom/lenovo/safecenter/support/CallInfoWin;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v6, v3

    iget v7, p0, Lcom/lenovo/safecenter/support/CallInfoWin$2;->c:I

    if-le v6, v7, :cond_1

    .line 272
    iget v6, p0, Lcom/lenovo/safecenter/support/CallInfoWin$2;->c:I

    iget-object v7, p0, Lcom/lenovo/safecenter/support/CallInfoWin$2;->e:Lcom/lenovo/safecenter/support/CallInfoWin;

    iget-object v7, v7, Lcom/lenovo/safecenter/support/CallInfoWin;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int v3, v6, v7

    goto :goto_1

    .line 284
    .end local v2    # "l":I
    .end local v3    # "t":I
    :pswitch_2
    iget-object v6, p0, Lcom/lenovo/safecenter/support/CallInfoWin$2;->e:Lcom/lenovo/safecenter/support/CallInfoWin;

    iget-object v6, v6, Lcom/lenovo/safecenter/support/CallInfoWin;->a:Landroid/content/Context;

    iget-object v7, p0, Lcom/lenovo/safecenter/support/CallInfoWin$2;->e:Lcom/lenovo/safecenter/support/CallInfoWin;

    iget-object v7, v7, Lcom/lenovo/safecenter/support/CallInfoWin;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v8, p0, Lcom/lenovo/safecenter/support/CallInfoWin$2;->e:Lcom/lenovo/safecenter/support/CallInfoWin;

    iget-object v8, v8, Lcom/lenovo/safecenter/support/CallInfoWin;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v6, v7, v8}, Lcom/lenovo/safecenter/support/CallInfoWin;->setCallShowPostion(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
