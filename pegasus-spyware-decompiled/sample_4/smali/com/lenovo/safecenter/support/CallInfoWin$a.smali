.class final Lcom/lenovo/safecenter/support/CallInfoWin$a;
.super Ljava/lang/Object;
.source "CallInfoWin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/support/CallInfoWin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/support/CallInfoWin;


# direct methods
.method private constructor <init>(Lcom/lenovo/safecenter/support/CallInfoWin;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/lenovo/safecenter/support/CallInfoWin$a;->a:Lcom/lenovo/safecenter/support/CallInfoWin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/safecenter/support/CallInfoWin;B)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/safecenter/support/CallInfoWin;

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/support/CallInfoWin$a;-><init>(Lcom/lenovo/safecenter/support/CallInfoWin;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/lenovo/safecenter/support/CallInfoWin$a;->a:Lcom/lenovo/safecenter/support/CallInfoWin;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/CallInfoWin;->hide()V

    .line 326
    return-void
.end method
