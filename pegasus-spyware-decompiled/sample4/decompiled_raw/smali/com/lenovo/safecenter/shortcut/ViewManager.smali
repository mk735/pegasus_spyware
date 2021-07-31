.class public final Lcom/lenovo/safecenter/shortcut/ViewManager;
.super Ljava/lang/Object;
.source "ViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/shortcut/ViewManager$a;
    }
.end annotation


# static fields
.field private static a:Landroid/view/WindowManager;

.field private static b:Landroid/view/View;

.field public static wLayoutParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/shortcut/ViewManager;->wLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 16
    sput-object v1, Lcom/lenovo/safecenter/shortcut/ViewManager;->a:Landroid/view/WindowManager;

    .line 17
    sput-object v1, Lcom/lenovo/safecenter/shortcut/ViewManager;->b:Landroid/view/View;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method public static addView(Landroid/content/Context;Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 7
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "paramRect"    # Landroid/graphics/Rect;
    .param p2, "paramView"    # Landroid/view/View;

    .prologue
    const/4 v6, -0x1

    .line 26
    sget-object v3, Lcom/lenovo/safecenter/shortcut/ViewManager;->b:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 51
    :goto_0
    return-void

    .line 27
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 28
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsoluteLayout;

    .line 29
    .local v1, "localAbsoluteLayout1":Landroid/widget/AbsoluteLayout;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    sput-object v3, Lcom/lenovo/safecenter/shortcut/ViewManager;->a:Landroid/view/WindowManager;

    .line 30
    const-string v4, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "localAbsoluteLayout1 == null? "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    if-nez v1, :cond_2

    .line 32
    const-string v3, "TAG"

    const-string v4, " localAbsoluteLayout1 != null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v2, Landroid/widget/AbsoluteLayout;

    invoke-direct {v2, p0}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 34
    .local v2, "localAbsoluteLayout2":Landroid/widget/AbsoluteLayout;
    invoke-virtual {v2, p2}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 35
    new-instance v3, Lcom/lenovo/safecenter/shortcut/ViewManager$a;

    invoke-direct {v3, p0, p1, p2}, Lcom/lenovo/safecenter/shortcut/ViewManager$a;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 36
    sget-object v3, Lcom/lenovo/safecenter/shortcut/ViewManager;->wLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x7d3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 37
    sget-object v3, Lcom/lenovo/safecenter/shortcut/ViewManager;->wLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x28

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 38
    sget-object v3, Lcom/lenovo/safecenter/shortcut/ViewManager;->wLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 39
    sget-object v3, Lcom/lenovo/safecenter/shortcut/ViewManager;->wLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 40
    sget-object v3, Lcom/lenovo/safecenter/shortcut/ViewManager;->wLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 41
    sget-object v3, Lcom/lenovo/safecenter/shortcut/ViewManager;->wLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x33

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 42
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 43
    .local v0, "layoutParams":Landroid/widget/AbsoluteLayout$LayoutParams;
    const-string v3, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " y = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sget-object v3, Lcom/lenovo/safecenter/shortcut/ViewManager;->wLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 45
    sget-object v3, Lcom/lenovo/safecenter/shortcut/ViewManager;->wLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 46
    sput-object v2, Lcom/lenovo/safecenter/shortcut/ViewManager;->b:Landroid/view/View;

    .line 50
    .end local v0    # "layoutParams":Landroid/widget/AbsoluteLayout$LayoutParams;
    .end local v2    # "localAbsoluteLayout2":Landroid/widget/AbsoluteLayout;
    :goto_2
    sget-object v3, Lcom/lenovo/safecenter/shortcut/ViewManager;->a:Landroid/view/WindowManager;

    sget-object v4, Lcom/lenovo/safecenter/shortcut/ViewManager;->b:Landroid/view/View;

    sget-object v5, Lcom/lenovo/safecenter/shortcut/ViewManager;->wLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 30
    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 48
    :cond_2
    sput-object v1, Lcom/lenovo/safecenter/shortcut/ViewManager;->b:Landroid/view/View;

    goto :goto_2
.end method

.method public static removeView(Landroid/content/Context;Landroid/view/View;)V
    .locals 5
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "paramView"    # Landroid/view/View;

    .prologue
    .line 58
    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 61
    .local v1, "localView":Landroid/view/View;
    sget-object v2, Lcom/lenovo/safecenter/shortcut/ViewManager;->a:Landroid/view/WindowManager;

    if-eqz v2, :cond_0

    .line 63
    :try_start_0
    sget-object v2, Lcom/lenovo/safecenter/shortcut/ViewManager;->a:Landroid/view/WindowManager;

    invoke-interface {v2, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 64
    sget-object v2, Lcom/lenovo/safecenter/shortcut/ViewManager;->a:Landroid/view/WindowManager;

    sget-object v3, Lcom/lenovo/safecenter/shortcut/ViewManager;->b:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    const/4 v2, 0x0

    sput-object v2, Lcom/lenovo/safecenter/shortcut/ViewManager;->b:Landroid/view/View;

    .line 72
    .end local v1    # "localView":Landroid/view/View;
    :cond_0
    return-void

    .line 65
    .restart local v1    # "localView":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Ex + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
