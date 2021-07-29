.class final Lcom/lenovo/safecenter/safemode/SofeModeMain$1;
.super Landroid/os/Handler;
.source "SofeModeMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/safemode/SofeModeMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/SofeModeMain;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/SofeModeMain;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/SofeModeMain$1;->a:Lcom/lenovo/safecenter/safemode/SofeModeMain;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 46
    iget v0, p1, Landroid/os/Message;->what:I

    .line 49
    return-void
.end method
