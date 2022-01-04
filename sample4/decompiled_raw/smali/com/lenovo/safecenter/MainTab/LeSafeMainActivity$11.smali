.class final Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$11;
.super Ljava/lang/Object;
.source "LeSafeMainActivity.java"

# interfaces
.implements Lcom/lenovo/safecenter/utils/Panel$OnPanelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$11;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPanelClosed(Lcom/lenovo/safecenter/utils/Panel;)V
    .locals 1
    .param p1, "panel"    # Lcom/lenovo/safecenter/utils/Panel;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$11;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->i(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)V

    .line 572
    return-void
.end method

.method public final onPanelOpened(Lcom/lenovo/safecenter/utils/Panel;)V
    .locals 1
    .param p1, "panel"    # Lcom/lenovo/safecenter/utils/Panel;

    .prologue
    .line 567
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$11;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->h(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)V

    .line 568
    return-void
.end method
