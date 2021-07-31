.class public Lcom/lenovo/safecenter/utils/DialogUtil;
.super Ljava/lang/Object;
.source "DialogUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/utils/DialogUtil$SettingFloatNumberDialogListener;,
        Lcom/lenovo/safecenter/utils/DialogUtil$SettingNumberDialogListener;,
        Lcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;,
        Lcom/lenovo/safecenter/utils/DialogUtil$ModifyPasswordDialogListener;
    }
.end annotation


# static fields
.field public static final ID_MANUAL_OPTIMIZATION_PROTECT_THIEF:I = 0x0

.field public static final ID_NO_ACTION:I = 0x2

.field public static final NOTICE_DIALOG_DOWNLOAD_LECLOUD:I = 0x3

.field public static final NOTICE_DIALOG_KILL_VIRUS:I = 0x1

.field private static a:Lcom/lenovo/safecenter/dialog/CustomDialog;

.field private static b:Lcom/lenovo/safecenter/dialog/CustomDialog;

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/safecenter/utils/DialogUtil;->b:Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 337
    const/4 v0, 0x0

    sput v0, Lcom/lenovo/safecenter/utils/DialogUtil;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static NoticeDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;)Landroid/app/Dialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "positiveText"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;

    .prologue
    .line 367
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lenovo/safecenter/utils/DialogUtil$5;

    invoke-direct {v1, p1, p0, p5}, Lcom/lenovo/safecenter/utils/DialogUtil$5;-><init>(ILandroid/content/Context;Lcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;)V

    invoke-virtual {v0, p4, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    new-instance v2, Lcom/lenovo/safecenter/utils/DialogUtil$4;

    invoke-direct {v2}, Lcom/lenovo/safecenter/utils/DialogUtil$4;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v0

    return-object v0
.end method

.method public static NoticePositiveDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;)Landroid/app/Dialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;

    .prologue
    .line 413
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/utils/DialogUtil$6;

    invoke-direct {v2, p1, p4}, Lcom/lenovo/safecenter/utils/DialogUtil$6;-><init>(ILcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 25
    sput p0, Lcom/lenovo/safecenter/utils/DialogUtil;->c:I

    return p0
.end method

.method static synthetic a()Lcom/lenovo/safecenter/dialog/CustomDialog;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/lenovo/safecenter/utils/DialogUtil;->a:Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-object v0
.end method

.method static synthetic b()Lcom/lenovo/safecenter/dialog/CustomDialog;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/lenovo/safecenter/utils/DialogUtil;->b:Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-object v0
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/lenovo/safecenter/utils/DialogUtil;->c:I

    return v0
.end method

.method public static createAutoUpdateRatechoice(Landroid/content/Context;ILcom/lenovo/safecenter/utils/DialogUtil$SettingNumberDialogListener;)Landroid/app/Dialog;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "listener"    # Lcom/lenovo/safecenter/utils/DialogUtil$SettingNumberDialogListener;

    .prologue
    .line 342
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0377

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-static {p0}, Lcom/lenovo/safecenter/utils/updateLab/AutoUpdateLabManager;->getUpdateModeStringArray(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/lenovo/safecenter/utils/updateLab/AutoUpdateLabManager;->getAutoUpdateMode(Landroid/content/Context;)I

    move-result v2

    new-instance v3, Lcom/lenovo/safecenter/utils/DialogUtil$3;

    invoke-direct {v3}, Lcom/lenovo/safecenter/utils/DialogUtil$3;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setSingleChoiceItems([Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/utils/DialogUtil$2;

    invoke-direct {v2, p2, p1}, Lcom/lenovo/safecenter/utils/DialogUtil$2;-><init>(Lcom/lenovo/safecenter/utils/DialogUtil$SettingNumberDialogListener;I)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v0

    return-object v0
.end method

.method public static createManualUpdateDialog(Landroid/content/Context;ILcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;)Landroid/app/Dialog;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "listener"    # Lcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;

    .prologue
    const/4 v3, 0x0

    const v8, 0x7f0d0047

    const v7, 0x7f0d0046

    const v6, 0x7f0d03b8

    .line 276
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03006a

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 278
    .local v2, "view":Landroid/view/View;
    const v4, 0x7f0902b4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 279
    .local v0, "note1":Landroid/widget/TextView;
    packed-switch p1, :pswitch_data_0

    .line 334
    :goto_0
    return-object v3

    .line 281
    :pswitch_0
    const v3, 0x7f0d059d

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 282
    new-instance v3, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v6}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d03be

    new-instance v5, Lcom/lenovo/safecenter/utils/DialogUtil$13;

    invoke-direct {v5, p0}, Lcom/lenovo/safecenter/utils/DialogUtil$13;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/lenovo/safecenter/utils/DialogUtil$12;

    invoke-direct {v4}, Lcom/lenovo/safecenter/utils/DialogUtil$12;-><init>()V

    invoke-virtual {v3, v8, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v3

    goto :goto_0

    .line 300
    :pswitch_1
    const v3, 0x7f0d03b9

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 301
    new-instance v3, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v6}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/lenovo/safecenter/utils/DialogUtil$14;

    invoke-direct {v4}, Lcom/lenovo/safecenter/utils/DialogUtil$14;-><init>()V

    invoke-virtual {v3, v7, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v3

    goto :goto_0

    .line 311
    :pswitch_2
    const v3, 0x7f0d039a

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 312
    const v3, 0x7f0902b5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 314
    .local v1, "note2":Landroid/widget/TextView;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    new-instance v3, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v6}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/lenovo/safecenter/utils/DialogUtil$16;

    invoke-direct {v4, p2, p1}, Lcom/lenovo/safecenter/utils/DialogUtil$16;-><init>(Lcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;I)V

    invoke-virtual {v3, v7, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/lenovo/safecenter/utils/DialogUtil$15;

    invoke-direct {v4}, Lcom/lenovo/safecenter/utils/DialogUtil$15;-><init>()V

    invoke-virtual {v3, v8, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 279
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createSettingNumberDialog(Landroid/content/Context;ILcom/lenovo/safecenter/utils/DialogUtil$SettingNumberDialogListener;)Landroid/app/Dialog;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "listener"    # Lcom/lenovo/safecenter/utils/DialogUtil$SettingNumberDialogListener;

    .prologue
    .line 438
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03006f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 440
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0902be

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 441
    .local v1, "note1":Landroid/widget/TextView;
    packed-switch p1, :pswitch_data_0

    .line 444
    :goto_0
    const v4, 0x7f0902bf

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 459
    .local v0, "editText":Landroid/widget/EditText;
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitSMS()I

    move-result v2

    .line 460
    .local v2, "sms":I
    if-eqz v2, :cond_0

    .line 461
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 463
    :cond_0
    new-instance v4, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v4, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0d03bc

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d0046

    new-instance v6, Lcom/lenovo/safecenter/utils/DialogUtil$8;

    invoke-direct {v6, v0, p0, p2, p1}, Lcom/lenovo/safecenter/utils/DialogUtil$8;-><init>(Landroid/widget/EditText;Landroid/content/Context;Lcom/lenovo/safecenter/utils/DialogUtil$SettingNumberDialogListener;I)V

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d0047

    new-instance v6, Lcom/lenovo/safecenter/utils/DialogUtil$7;

    invoke-direct {v6}, Lcom/lenovo/safecenter/utils/DialogUtil$7;-><init>()V

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v4

    return-object v4

    .line 443
    .end local v0    # "editText":Landroid/widget/EditText;
    .end local v2    # "sms":I
    :pswitch_0
    const v4, 0x7f0d03ba

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 441
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static dismissShowPwdDialog()V
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/lenovo/safecenter/utils/DialogUtil;->a:Lcom/lenovo/safecenter/dialog/CustomDialog;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/lenovo/safecenter/utils/DialogUtil;->a:Lcom/lenovo/safecenter/dialog/CustomDialog;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog;->dismiss()V

    .line 61
    :cond_0
    return-void
.end method

.method public static showPasswordQuestionDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "question"    # Ljava/lang/String;
    .param p3, "answer"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03006d

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 185
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0902ba

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 187
    .local v1, "questionTv":Landroid/widget/TextView;
    const v4, 0x7f0902bb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 189
    .local v0, "answerEt":Landroid/widget/EditText;
    const/4 v2, 0x0

    .line 190
    .local v2, "title":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 193
    :goto_0
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    new-instance v4, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v4, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d0047

    new-instance v6, Lcom/lenovo/safecenter/utils/DialogUtil$11;

    invoke-direct {v6}, Lcom/lenovo/safecenter/utils/DialogUtil$11;-><init>()V

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d0046

    new-instance v6, Lcom/lenovo/safecenter/utils/DialogUtil$10;

    invoke-direct {v6, v0, p0, p1}, Lcom/lenovo/safecenter/utils/DialogUtil$10;-><init>(Landroid/widget/EditText;Landroid/content/Context;I)V

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v4

    sput-object v4, Lcom/lenovo/safecenter/utils/DialogUtil;->b:Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 264
    return-void

    .line 192
    :pswitch_0
    const v4, 0x7f0d056c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static showPwdDialog(Ljava/lang/String;Landroid/content/Context;)V
    .locals 7
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-static {}, Lcom/lenovo/safecenter/utils/DialogUtil;->dismissShowPwdDialog()V

    .line 66
    invoke-static {p1}, Lcom/lenovo/safecenter/utils/PwdUtil;->hasPassword(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03008c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 74
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f09034f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 76
    .local v1, "message":Landroid/widget/TextView;
    const v3, 0x7f0d0055

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 77
    const v3, 0x7f090350

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 79
    .local v0, "edit":Landroid/widget/EditText;
    new-instance v3, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v3, p1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d0053

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d0046

    new-instance v5, Lcom/lenovo/safecenter/utils/DialogUtil$9;

    invoke-direct {v5, v0, p1, p0, v1}, Lcom/lenovo/safecenter/utils/DialogUtil$9;-><init>(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)V

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d0047

    new-instance v5, Lcom/lenovo/safecenter/utils/DialogUtil$1;

    invoke-direct {v5}, Lcom/lenovo/safecenter/utils/DialogUtil$1;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v3

    sput-object v3, Lcom/lenovo/safecenter/utils/DialogUtil;->a:Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 169
    .end local v0    # "edit":Landroid/widget/EditText;
    .end local v1    # "message":Landroid/widget/TextView;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method
