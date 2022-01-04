.class final Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$2;
.super Ljava/lang/Object;
.source "PhoneAccelerateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity$2;->a:Lcom/lenovo/performancecenter/performance/PhoneAccelerateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 250
    const/4 v0, 0x1

    return v0
.end method
