.class final Lcom/lenovo/performancecenter/performance/BootSpeedActivity$2;
.super Ljava/lang/Object;
.source "BootSpeedActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/performance/BootSpeedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$2;->a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$2;->a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    invoke-static {v0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->k(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)Landroid/widget/PopupWindow;

    .line 451
    return-void
.end method
