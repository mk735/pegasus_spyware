.class final Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;
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
    .line 247
    iput-object p1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 250
    const-string v7, "ydp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkBox_thief click!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v9}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->d(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "theft_preference"

    invoke-interface {v9, v10, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v7, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v7}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->d(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "theft_preference"

    invoke-interface {v7, v8, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 252
    iget-object v6, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v6}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->e(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)V

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v7, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v7}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 256
    iget-object v7, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v7}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->getAllSimState(Landroid/content/Context;)[I

    move-result-object v5

    .line 257
    .local v5, "states":[I
    aget v3, v5, v2

    .line 258
    .local v3, "simState0":I
    aget v4, v5, v6

    .line 259
    .local v4, "simState1":I
    if-ne v3, v13, :cond_4

    move v1, v6

    .line 260
    .local v1, "sim1Ready":Z
    :goto_1
    if-ne v4, v13, :cond_2

    move v2, v6

    .line 261
    .local v2, "sim2Ready":Z
    :cond_2
    if-eq v1, v6, :cond_3

    if-ne v2, v6, :cond_6

    .line 262
    :cond_3
    iget-object v7, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v7}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->f(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 263
    iget-object v6, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v6}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->g(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)V

    goto :goto_0

    .end local v1    # "sim1Ready":Z
    .end local v2    # "sim2Ready":Z
    :cond_4
    move v1, v2

    .line 259
    goto :goto_1

    .line 265
    .restart local v1    # "sim1Ready":Z
    .restart local v2    # "sim2Ready":Z
    :cond_5
    invoke-static {v6}, Lcom/lenovo/safecenter/utils/Const;->setProtecThiefSwitchState(Z)V

    .line 266
    iget-object v7, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v7}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->h(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/widget/ImageView;

    move-result-object v7

    const v8, 0x7f0200df

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 267
    iget-object v7, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-virtual {v7, v6}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->a(Z)V

    goto :goto_0

    .line 270
    :cond_6
    iget-object v6, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    iget-object v6, v6, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->a:Lcom/lenovo/safecenter/dialog/CustomDialog;

    if-nez v6, :cond_8

    .line 271
    if-eq v3, v11, :cond_7

    if-eq v3, v12, :cond_7

    if-eq v4, v11, :cond_7

    if-ne v4, v12, :cond_9

    .line 273
    :cond_7
    iget-object v6, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    const v7, 0x7f0d05e1

    invoke-virtual {v6, v7}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "msg":Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    new-instance v7, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    iget-object v8, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-direct {v7, v8}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0d00f2

    invoke-virtual {v7, v8}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v7

    const v8, 0x7f0d01b9

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->create()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v7

    iput-object v7, v6, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->a:Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 282
    .end local v0    # "msg":Ljava/lang/String;
    :cond_8
    iget-object v6, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    iget-object v6, v6, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->a:Lcom/lenovo/safecenter/dialog/CustomDialog;

    invoke-virtual {v6}, Lcom/lenovo/safecenter/dialog/CustomDialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_0

    .line 283
    iget-object v6, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    iget-object v6, v6, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->a:Lcom/lenovo/safecenter/dialog/CustomDialog;

    invoke-virtual {v6}, Lcom/lenovo/safecenter/dialog/CustomDialog;->show()V

    goto/16 :goto_0

    .line 275
    :cond_9
    iget-object v6, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    const v7, 0x7f0d0099

    invoke-virtual {v6, v7}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_2

    .line 287
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "sim1Ready":Z
    .end local v2    # "sim2Ready":Z
    .end local v3    # "simState0":I
    .end local v4    # "simState1":I
    .end local v5    # "states":[I
    :cond_a
    iget-object v7, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    iget-object v8, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v8}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->b(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v8

    invoke-static {v7, v8}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->a(Lcom/lenovo/safecenter/platform/AgainstTheftSet;I)I

    .line 288
    const-string v7, "test"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SimState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v9}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->c(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v7, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v7}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->c(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)I

    move-result v7

    if-eq v7, v13, :cond_e

    .line 290
    iget-object v6, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    iget-object v6, v6, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->a:Lcom/lenovo/safecenter/dialog/CustomDialog;

    if-nez v6, :cond_c

    .line 291
    iget-object v6, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v6}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->c(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)I

    move-result v6

    if-eq v6, v11, :cond_b

    iget-object v6, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v6}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->c(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)I

    move-result v6

    if-ne v6, v12, :cond_d

    .line 293
    :cond_b
    iget-object v6, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    const v7, 0x7f0d05e1

    invoke-virtual {v6, v7}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 297
    .restart local v0    # "msg":Ljava/lang/String;
    :goto_3
    iget-object v6, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    new-instance v7, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    iget-object v8, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-direct {v7, v8}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0d00f2

    invoke-virtual {v7, v8}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v7

    const v8, 0x7f0d01b9

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->create()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v7

    iput-object v7, v6, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->a:Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 302
    .end local v0    # "msg":Ljava/lang/String;
    :cond_c
    iget-object v6, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    iget-object v6, v6, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->a:Lcom/lenovo/safecenter/dialog/CustomDialog;

    invoke-virtual {v6}, Lcom/lenovo/safecenter/dialog/CustomDialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_0

    .line 303
    iget-object v6, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    iget-object v6, v6, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->a:Lcom/lenovo/safecenter/dialog/CustomDialog;

    invoke-virtual {v6}, Lcom/lenovo/safecenter/dialog/CustomDialog;->show()V

    goto/16 :goto_0

    .line 295
    :cond_d
    iget-object v6, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    const v7, 0x7f0d0099

    invoke-virtual {v6, v7}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_3

    .line 306
    .end local v0    # "msg":Ljava/lang/String;
    :cond_e
    iget-object v7, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v7}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->f(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 307
    iget-object v6, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v6}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->g(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)V

    goto/16 :goto_0

    .line 309
    :cond_f
    invoke-static {v6}, Lcom/lenovo/safecenter/utils/Const;->setProtecThiefSwitchState(Z)V

    .line 310
    iget-object v7, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v7}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->h(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/widget/ImageView;

    move-result-object v7

    const v8, 0x7f0200df

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 311
    iget-object v7, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-virtual {v7, v6}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->a(Z)V

    goto/16 :goto_0
.end method
