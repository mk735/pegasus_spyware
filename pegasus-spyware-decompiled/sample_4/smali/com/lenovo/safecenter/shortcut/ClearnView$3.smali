.class final Lcom/lenovo/safecenter/shortcut/ClearnView$3;
.super Ljava/lang/Object;
.source "ClearnView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/shortcut/ClearnView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/shortcut/ClearnView;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/shortcut/ClearnView;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$3;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v3, 0x10008000

    .line 133
    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$3;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$3;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v1}, Lcom/lenovo/safecenter/shortcut/ClearnView;->b(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/safecenter/shortcut/ClearnView;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$3;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v1}, Lcom/lenovo/safecenter/shortcut/ClearnView;->b(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lenovo/safecenter/MainTab/SplashActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 136
    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$3;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v1}, Lcom/lenovo/safecenter/shortcut/ClearnView;->b(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 143
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$3;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v1}, Lcom/lenovo/safecenter/shortcut/ClearnView;->b(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$3;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/shortcut/ViewManager;->removeView(Landroid/content/Context;Landroid/view/View;)V

    .line 144
    return-void

    .line 139
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$3;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v1}, Lcom/lenovo/safecenter/shortcut/ClearnView;->b(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 141
    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$3;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v1}, Lcom/lenovo/safecenter/shortcut/ClearnView;->b(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
