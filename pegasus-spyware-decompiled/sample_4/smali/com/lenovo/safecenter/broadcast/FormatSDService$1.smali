.class final Lcom/lenovo/safecenter/broadcast/FormatSDService$1;
.super Ljava/lang/Thread;
.source "FormatSDService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/broadcast/FormatSDService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/broadcast/FormatSDService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/broadcast/FormatSDService;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lenovo/safecenter/broadcast/FormatSDService$1;->a:Lcom/lenovo/safecenter/broadcast/FormatSDService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/FormatSDService$1;->a:Lcom/lenovo/safecenter/broadcast/FormatSDService;

    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/FormatSDService$1;->a:Lcom/lenovo/safecenter/broadcast/FormatSDService;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/broadcast/FormatSDService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/broadcast/FormatSDService;->formatSDcard(Landroid/content/Context;)V

    .line 37
    return-void
.end method
