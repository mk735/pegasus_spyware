.class final Lcom/lenovo/safecenter/platform/AgainstTheftSet$7;
.super Ljava/lang/Object;
.source "AgainstTheftSet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/platform/AgainstTheftSet;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$7;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 177
    iget-object v8, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$7;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v8}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 178
    iget-object v8, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$7;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v8}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->getAllSimState(Landroid/content/Context;)[I

    move-result-object v5

    .line 179
    .local v5, "states":[I
    aget v3, v5, v6

    .line 180
    .local v3, "simState0":I
    aget v4, v5, v7

    .line 181
    .local v4, "simState1":I
    if-eq v3, v11, :cond_0

    if-eq v3, v9, :cond_0

    if-ne v3, v10, :cond_4

    :cond_0
    move v1, v7

    .line 183
    .local v1, "sim1Ready":Z
    :goto_0
    if-eq v4, v11, :cond_1

    if-eq v4, v9, :cond_1

    if-ne v4, v10, :cond_5

    :cond_1
    move v2, v7

    .line 185
    .local v2, "sim2Ready":Z
    :goto_1
    if-eq v1, v7, :cond_2

    if-ne v2, v7, :cond_6

    .line 186
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v7, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$7;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-virtual {v7}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    .local v0, "i":Landroid/content/Intent;
    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 189
    iget-object v7, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$7;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-virtual {v7, v0, v6}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->startActivityForResult(Landroid/content/Intent;I)V

    .line 222
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "sim1Ready":Z
    .end local v2    # "sim2Ready":Z
    .end local v3    # "simState0":I
    .end local v4    # "simState1":I
    .end local v5    # "states":[I
    :cond_3
    :goto_2
    return-void

    .restart local v3    # "simState0":I
    .restart local v4    # "simState1":I
    .restart local v5    # "states":[I
    :cond_4
    move v1, v6

    .line 181
    goto :goto_0

    .restart local v1    # "sim1Ready":Z
    :cond_5
    move v2, v6

    .line 183
    goto :goto_1

    .line 191
    .restart local v2    # "sim2Ready":Z
    :cond_6
    iget-object v6, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$7;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    iget-object v6, v6, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->a:Lcom/lenovo/safecenter/dialog/CustomDialog;

    if-nez v6, :cond_7

    .line 192
    iget-object v6, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$7;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    new-instance v7, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    iget-object v8, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$7;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-direct {v7, v8}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0d00f2

    invoke-virtual {v7, v8}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v7

    const v8, 0x7f0d0099

    invoke-virtual {v7, v8}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v7

    const v8, 0x7f0d01b9

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->create()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v7

    iput-object v7, v6, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->a:Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 197
    :cond_7
    iget-object v6, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$7;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    iget-object v6, v6, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->a:Lcom/lenovo/safecenter/dialog/CustomDialog;

    invoke-virtual {v6}, Lcom/lenovo/safecenter/dialog/CustomDialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_3

    .line 198
    iget-object v6, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$7;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    iget-object v6, v6, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->a:Lcom/lenovo/safecenter/dialog/CustomDialog;

    invoke-virtual {v6}, Lcom/lenovo/safecenter/dialog/CustomDialog;->show()V

    goto :goto_2

    .line 202
    .end local v1    # "sim1Ready":Z
    .end local v2    # "sim2Ready":Z
    .end local v3    # "simState0":I
    .end local v4    # "simState1":I
    .end local v5    # "states":[I
    :cond_8
    iget-object v8, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$7;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    iget-object v9, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$7;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v9}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->b(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v9

    invoke-static {v8, v9}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->a(Lcom/lenovo/safecenter/platform/AgainstTheftSet;I)I

    .line 203
    const-string v8, "test"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SimState: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$7;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v10}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->c(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v8, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$7;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v8}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->c(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)I

    move-result v8

    if-eq v8, v7, :cond_9

    iget-object v7, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$7;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v7}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->c(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)I

    move-result v7

    if-nez v7, :cond_b

    .line 206
    :cond_9
    iget-object v6, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$7;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    iget-object v6, v6, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->a:Lcom/lenovo/safecenter/dialog/CustomDialog;

    if-nez v6, :cond_a

    .line 207
    iget-object v6, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$7;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    new-instance v7, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    iget-object v8, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$7;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-direct {v7, v8}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0d00f2

    invoke-virtual {v7, v8}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v7

    const v8, 0x7f0d0099

    invoke-virtual {v7, v8}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v7

    const v8, 0x7f0d01b9

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->create()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v7

    iput-object v7, v6, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->a:Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 212
    :cond_a
    iget-object v6, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$7;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    iget-object v6, v6, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->a:Lcom/lenovo/safecenter/dialog/CustomDialog;

    invoke-virtual {v6}, Lcom/lenovo/safecenter/dialog/CustomDialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_3

    .line 213
    iget-object v6, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$7;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    iget-object v6, v6, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->a:Lcom/lenovo/safecenter/dialog/CustomDialog;

    invoke-virtual {v6}, Lcom/lenovo/safecenter/dialog/CustomDialog;->show()V

    goto/16 :goto_2

    .line 216
    :cond_b
    new-instance v0, Landroid/content/Intent;

    iget-object v7, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$7;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-virtual {v7}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    .restart local v0    # "i":Landroid/content/Intent;
    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 219
    iget-object v7, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$7;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-virtual {v7, v0, v6}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2
.end method
