.class final Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity$1;
.super Ljava/lang/Object;
.source "FirstUsePasswordSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity$1;->a:Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity$1;->a:Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->finish()V

    .line 82
    return-void
.end method
