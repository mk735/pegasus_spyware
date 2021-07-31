.class final Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity$2;
.super Ljava/lang/Object;
.source "FirstUsePasswordSettingActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 164
    iput-object p1, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity$2;->a:Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity$2;->a:Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;

    invoke-static {v0, p4, p5}, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;->a(Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;J)J

    .line 170
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
