.class final Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$2;
.super Ljava/lang/Object;
.source "DailyTools.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
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
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 67
    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    invoke-static {v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->a(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;

    invoke-static {v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->a(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;)I

    move-result v0

    .line 68
    .local v0, "idIcon":I
    sparse-switch v0, :sswitch_data_0

    .line 117
    :goto_0
    return-void

    .line 70
    :sswitch_0
    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    const-class v5, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 74
    :sswitch_1
    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    const-class v5, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 78
    :sswitch_2
    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    const-class v5, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 81
    :sswitch_3
    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    invoke-static {v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->b(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    invoke-static {v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->c(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;)V

    .line 83
    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    const-string v3, "type_tools"

    const-string v4, "action_kidmode"

    invoke-static {v2, v3, v4}, Lcom/lenovo/safecenter/utils/NewFunctionNoticeManager;->removeActionToType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    invoke-static {v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->a(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;

    iput-boolean v5, v2, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->a:Z

    .line 88
    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    invoke-static {v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->d(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;)Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater;->notifyDataSetChanged()V

    goto :goto_0

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    invoke-static {v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->e(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;)V

    goto :goto_0

    .line 95
    :sswitch_4
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lenovo.safecenter.view.DialogActivity"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, "it":Landroid/content/Intent;
    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "guest_mode_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 99
    const-string v2, "style"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    :goto_1
    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    invoke-virtual {v2, v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->startActivity(Landroid/content/Intent;)V

    .line 104
    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    const-string v3, "type_tools"

    const-string v4, "action_guestmode"

    invoke-static {v2, v3, v4}, Lcom/lenovo/safecenter/utils/NewFunctionNoticeManager;->removeActionToType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    invoke-static {v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->a(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;

    iput-boolean v5, v2, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->a:Z

    .line 109
    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    invoke-static {v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->d(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;)Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 101
    :cond_1
    const-string v2, "style"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 112
    .end local v1    # "it":Landroid/content/Intent;
    :sswitch_5
    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    invoke-static {v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->f(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;)V

    goto/16 :goto_0

    .line 115
    :sswitch_6
    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    const-class v5, Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 68
    :sswitch_data_0
    .sparse-switch
        0x7f020037 -> :sswitch_6
        0x7f02010f -> :sswitch_3
        0x7f020110 -> :sswitch_4
        0x7f020111 -> :sswitch_5
        0x7f020127 -> :sswitch_1
        0x7f020211 -> :sswitch_2
        0x7f02031b -> :sswitch_0
    .end sparse-switch
.end method
