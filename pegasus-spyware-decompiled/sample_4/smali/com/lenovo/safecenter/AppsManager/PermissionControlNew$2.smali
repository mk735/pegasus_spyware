.class final Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$2;
.super Ljava/lang/Object;
.source "PermissionControlNew.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$2;->a:Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 76
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 77
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$2;->a:Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->b(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "#29b1ef"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 78
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$2;->a:Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->b(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "#6600ff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$2;->a:Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->b(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "#29b1ef"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
