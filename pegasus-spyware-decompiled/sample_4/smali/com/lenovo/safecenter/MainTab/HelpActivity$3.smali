.class final Lcom/lenovo/safecenter/MainTab/HelpActivity$3;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/MainTab/HelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/MainTab/HelpActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/MainTab/HelpActivity;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity$3;->a:Lcom/lenovo/safecenter/MainTab/HelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity$3;->a:Lcom/lenovo/safecenter/MainTab/HelpActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->b(Lcom/lenovo/safecenter/MainTab/HelpActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity$3;->a:Lcom/lenovo/safecenter/MainTab/HelpActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->c(Lcom/lenovo/safecenter/MainTab/HelpActivity;)Lcom/lenovo/safecenter/MainTab/MyScrollLayout;

    move-result-object v0

    iget v0, v0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->mCurScreen:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity$3;->a:Lcom/lenovo/safecenter/MainTab/HelpActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->d(Lcom/lenovo/safecenter/MainTab/HelpActivity;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity$3;->a:Lcom/lenovo/safecenter/MainTab/HelpActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->c(Lcom/lenovo/safecenter/MainTab/HelpActivity;)Lcom/lenovo/safecenter/MainTab/MyScrollLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity$3;->a:Lcom/lenovo/safecenter/MainTab/HelpActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->c(Lcom/lenovo/safecenter/MainTab/HelpActivity;)Lcom/lenovo/safecenter/MainTab/MyScrollLayout;

    move-result-object v1

    iget v1, v1, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->mCurScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->snapToScreen(I)V

    .line 197
    :cond_0
    return-void
.end method
