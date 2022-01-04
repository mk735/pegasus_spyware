.class public Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;
.super Lcom/lenovo/safecenter/platform/BaseTitleActivity;
.source "DailyTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;,
        Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/ListView;

.field private c:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater;

.field private d:Z

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->d:Z

    .line 39
    new-instance v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$1;-><init>(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->e:Landroid/os/Handler;

    .line 373
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;)V
    .locals 4
    .param p0, "x0"    # Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    .prologue
    .line 34
    const-string v0, "com.lenovo.intent.action.kidmode"

    invoke-static {p0}, Lcom/lenovo/safecenter/utils/PwdUtil;->hasPassword(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p0}, Lcom/lenovo/safecenter/utils/DialogUtil;->showPwdDialog(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->e:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lenovo/safecenter/utils/WflUtils;->startSettingPasswordActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;)Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->c:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;)V
    .locals 4
    .param p0, "x0"    # Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    .prologue
    .line 34
    const-string v0, "com.lenovo.safecenter.view.ForbiddenApplication"

    invoke-static {p0}, Lcom/lenovo/safecenter/utils/PwdUtil;->hasPassword(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p0}, Lcom/lenovo/safecenter/utils/DialogUtil;->showPwdDialog(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->e:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lenovo/safecenter/utils/WflUtils;->startSettingPasswordActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;)V
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.lenovo.safecenter.SafePaymentActivity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static isShowKidmode(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 235
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->nacServerIsExist()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "child_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_0

    sget v2, Lcom/lenovo/safecenter/utils/Const;->SDK_VERSION:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 243
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 289
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onClick(Landroid/view/View;)V

    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 293
    :goto_0
    return-void

    .line 292
    :pswitch_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->finish()V

    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x7f0904b9
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->b:Landroid/widget/ListView;

    .line 56
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->b:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 57
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->b:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->setContentView(Landroid/view/View;)V

    .line 59
    const v0, 0x7f020286

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0d0692

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 62
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$2;-><init>(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 125
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 162
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onDestroy()V

    .line 163
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 129
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 130
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onPause()V

    .line 131
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const v6, 0x7f02010f

    const/4 v5, 0x0

    const/4 v4, 0x1

    const v3, 0x7f020058

    .line 135
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onResume()V

    .line 136
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->a:Ljava/util/ArrayList;

    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->nacServerIsExist()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;-><init>(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;)V

    const v1, 0x7f0d0025

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->a(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;I)I

    const v1, 0x7f0d0225

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->b(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;I)I

    const-string v1, "type_tools"

    const-string v2, "action_guestmode"

    invoke-static {p0, v1, v2}, Lcom/lenovo/safecenter/utils/NewFunctionNoticeManager;->hasActionInType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v4, v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->a:Z

    :cond_0
    const v1, 0x7f020110

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->c(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;I)I

    invoke-virtual {p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "guest_mode_on"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    const v1, 0x7f0200de

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->d(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;I)I

    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "child_mode_on"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_1

    sget v0, Lcom/lenovo/safecenter/utils/Const;->SDK_VERSION:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_4

    :cond_1
    iput-boolean v5, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->d:Z

    new-instance v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;-><init>(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;)V

    const v1, 0x7f0d0023

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->a(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;I)I

    const v1, 0x7f0d0224

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->b(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;I)I

    invoke-static {v0, v6}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->c(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;I)I

    invoke-static {v0, v3}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->d(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;I)I

    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    new-instance v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;-><init>(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;)V

    const v1, 0x7f0d06b9

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->a(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;I)I

    const v1, 0x7f0d06b8

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->b(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;I)I

    const v1, 0x7f02031b

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->c(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;I)I

    invoke-static {v0, v3}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->d(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;I)I

    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;-><init>(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;)V

    const v1, 0x7f0d06b6

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->a(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;I)I

    const v1, 0x7f0d06ba

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->b(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;I)I

    const v1, 0x7f020127

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->c(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;I)I

    invoke-static {v0, v3}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->d(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;I)I

    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;-><init>(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;)V

    const v1, 0x7f0d06cb

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->a(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;I)I

    const v1, 0x7f0d06cc

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->b(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;I)I

    const v1, 0x7f020211

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->c(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;I)I

    invoke-static {v0, v3}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->d(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;I)I

    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;-><init>(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;)V

    const v1, 0x7f0d05ae

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->a(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;I)I

    const v1, 0x7f0d0229

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->b(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;I)I

    const v1, 0x7f020111

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->c(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;I)I

    invoke-static {v0, v3}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->d(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;I)I

    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater;

    invoke-direct {v0, p0, p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater;-><init>(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->c:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater;

    .line 139
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->c:Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$ToolsApater;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    return-void

    .line 137
    :cond_3
    const v1, 0x7f0200df

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->d(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;I)I

    goto/16 :goto_0

    :cond_4
    iput-boolean v4, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->d:Z

    new-instance v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;-><init>(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;)V

    const-string v1, "type_tools"

    const-string v2, "action_kidmode"

    invoke-static {p0, v1, v2}, Lcom/lenovo/safecenter/utils/NewFunctionNoticeManager;->hasActionInType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-boolean v4, v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->a:Z

    :cond_5
    const v1, 0x7f0d078a

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->a(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;I)I

    const v1, 0x7f0d078b

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->b(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;I)I

    invoke-static {v0, v6}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->c(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;I)I

    invoke-static {v0, v3}, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;->d(Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools$a;I)I

    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/DailyTools;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method
