.class final Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;
.super Landroid/os/Handler;
.source "FullSystemScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 27
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 125
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 126
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    .line 478
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 128
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->b(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->c(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    .line 132
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    .line 133
    .local v15, "scanResult":Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 135
    .local v13, "progress":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0d02c7

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->g(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/TextView;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->d(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->e(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->f(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->h(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/ProgressBar;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->h(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/ProgressBar;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->i(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->h(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/ProgressBar;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ProgressBar;->getMax()I

    move-result v24

    div-int v24, v13, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 144
    .local v9, "percentStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->j(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/TextView;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget v0, v15, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->apkType:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->k(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/List;

    move-result-object v21

    new-instance v22, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;

    iget-object v0, v15, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    iget-object v0, v15, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-direct/range {v22 .. v25}, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->l(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->notifyDataSetChanged()V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->m(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/ListView;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->k(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .line 152
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->k(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/List;

    move-result-object v22

    new-instance v23, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;

    iget-object v0, v15, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    iget-object v0, v15, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    move-object/from16 v25, v0

    iget v0, v15, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    move/from16 v21, v0

    const/16 v26, 0x3

    move/from16 v0, v21

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    const/16 v21, 0x1

    :goto_2
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/16 v21, 0x0

    goto :goto_2

    .line 160
    .end local v9    # "percentStr":Ljava/lang/String;
    .end local v13    # "progress":I
    .end local v15    # "scanResult":Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->b(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->c(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0d02c7

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->g(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/TextView;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->d(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->e(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->f(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->h(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/ProgressBar;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->e(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v21

    mul-int/lit8 v21, v21, 0x64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->n(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v22

    div-int v8, v21, v22

    .line 166
    .local v8, "percent":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->h(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/ProgressBar;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->i(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 168
    .restart local v9    # "percentStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->j(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/TextView;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->k(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/List;

    move-result-object v22

    new-instance v23, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->o(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->e(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ApplicationInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v24

    const-string v25, "isvirus"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v24

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;-><init>(Landroid/content/pm/ApplicationInfo;Z)V

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->l(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->notifyDataSetChanged()V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->m(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/ListView;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->k(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .line 178
    .end local v8    # "percent":I
    .end local v9    # "percentStr":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->p(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/LinearLayout;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->q(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/LinearLayout;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    const-string v21, "scantime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v21

    const-string v22, "netScan_switch"

    const/16 v23, 0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/utils/ScanUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->r(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0x7

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 194
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->r(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0x9

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 196
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->openNetworkSettings()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 197
    :catch_0
    move-exception v5

    .line 198
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 202
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->r(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0x9

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 207
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->s(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    invoke-static/range {v21 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;I)I

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->t(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/TextView;

    move-result-object v21

    const v22, 0x7f0d0308

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(I)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->r(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/os/Handler;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->u(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->k(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/List;

    move-result-object v21

    new-instance v22, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;

    invoke-direct/range {v22 .. v22}, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;-><init>()V

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->l(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->notifyDataSetChanged()V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->m(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/ListView;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .line 219
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->s(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->u(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;I)I

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->r(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/os/Handler;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->u(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->k(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/List;

    move-result-object v21

    new-instance v22, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;

    invoke-direct/range {v22 .. v22}, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;-><init>()V

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->l(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->notifyDataSetChanged()V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->m(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/ListView;

    move-result-object v21

    const/16 v22, 0x1

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .line 234
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->s(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->u(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;I)I

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->r(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/os/Handler;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->u(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->k(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/List;

    move-result-object v21

    new-instance v22, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;

    invoke-direct/range {v22 .. v22}, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;-><init>()V

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->l(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->notifyDataSetChanged()V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->m(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/ListView;

    move-result-object v21

    const/16 v22, 0x2

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .line 246
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->getInstalledApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;Ljava/util/List;)Ljava/util/List;

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->o(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    invoke-static/range {v21 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->b(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;I)I

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    new-instance v22, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->n(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v25

    invoke-direct/range {v22 .. v25}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;-><init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;II)V

    invoke-static/range {v21 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;)Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->u(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;I)I

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->r(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/os/Handler;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->u(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->k(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/List;

    move-result-object v21

    new-instance v22, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;

    invoke-direct/range {v22 .. v22}, Lcom/lenovo/safecenter/antivirus/domain/ScanInfo;-><init>()V

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->l(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/domain/PermAdapter;->notifyDataSetChanged()V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->m(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/ListView;

    move-result-object v21

    const/16 v22, 0x2

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .line 260
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->s(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v22, v0

    const-class v21, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-static/range {v21 .. v21}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v21

    check-cast v21, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;Lcom/tencent/tmsecure/module/qscanner/QScannerManager;)Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->t(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/TextView;

    move-result-object v21

    const v22, 0x7f0d02c5

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(I)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->u(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;I)I

    .line 267
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->v(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;

    move-result-object v21

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->v(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;->isAlive()Z

    move-result v21

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->w(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 269
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    new-instance v22, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;-><init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)V

    invoke-static/range {v21 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;)Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->v(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;->start()V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->setGoing(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 273
    :catch_1
    move-exception v5

    .line 275
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 279
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_8
    const-string v21, "viruspkgname"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    .line 280
    .local v20, "virus_pkgname":Ljava/lang/String;
    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_9

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    const-string v22, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->c(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;I)I

    .line 283
    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_9

    .line 284
    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, "arr$":[Ljava/lang/String;
    array-length v7, v4

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_3
    if-ge v6, v7, :cond_9

    aget-object v19, v4, v6

    .line 286
    .local v19, "vir":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->x(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/HashMap;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 291
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v19    # "vir":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->t(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/TextView;

    move-result-object v21

    const v22, 0x7f0d02c5

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(I)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->u(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;I)I

    .line 294
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->y(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;->a(Z)V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->y(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 296
    :catch_2
    move-exception v5

    .line 298
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 305
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v20    # "virus_pkgname":Ljava/lang/String;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->t(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/TextView;

    move-result-object v21

    const v22, 0x7f0d0403

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(I)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    const v22, 0x7f09015e

    invoke-virtual/range {v21 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    const v22, 0x7f09015c

    invoke-virtual/range {v21 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 309
    new-instance v21, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1$1;-><init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;)V

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1$1;->start()V

    goto/16 :goto_0

    .line 329
    :pswitch_8
    const-string v21, "msg"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ScanUtils.isNetScan_cancel="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-boolean v23, Lcom/lenovo/safecenter/antivirus/utils/ScanUtils;->isNetScan_cancel:Z

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "case 8"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    sget-boolean v21, Lcom/lenovo/safecenter/antivirus/utils/ScanUtils;->isNetScan_cancel:Z

    if-nez v21, :cond_0

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->B(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Z

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->t(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/TextView;

    move-result-object v21

    const v22, 0x7f0d02cd

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(I)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->C(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/TextView;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->A(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/List;

    move-result-object v21

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->A(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    if-lez v21, :cond_c

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->A(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;

    .line 338
    .local v18, "v_str":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->x(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/HashMap;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getPkgName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_a

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->x(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/HashMap;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getPkgName()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getPkgName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->getVirusDescKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;->getVirusDesc()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_4

    .line 351
    .end local v18    # "v_str":Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->x(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/HashMap;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->size()I

    move-result v22

    invoke-static/range {v21 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->c(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;I)I

    .line 354
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_c
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .local v14, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->x(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/HashMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 357
    .local v11, "pkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 359
    .local v10, "pkg":Ljava/lang/String;
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const-string v21, ","

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 363
    .end local v10    # "pkg":Ljava/lang/String;
    :cond_d
    const-string v21, "viruspkgname"

    const-string v22, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 365
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    if-lez v21, :cond_e

    .line 366
    const-string v21, "viruspkgname"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 371
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->D(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)J

    move-result-wide v24

    sub-long v22, v22, v24

    invoke-static/range {v21 .. v23}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;J)J

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->setView()V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->f(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->E(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v22

    add-int v16, v21, v22

    .line 374
    .local v16, "sumdesc":I
    if-nez v16, :cond_10

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeHasScanedVirus()V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->t(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/TextView;

    move-result-object v21

    const v22, 0x7f0d03d3

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(I)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->C(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/TextView;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->C(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/TextView;

    move-result-object v21

    const v22, 0x7f0d0313

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(I)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->F(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Z

    move-result v21

    if-nez v21, :cond_f

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->G(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v22, v0

    const v23, 0x7f0d031d

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    const-string v24, "0"

    invoke-virtual/range {v21 .. v24}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_f
    :goto_6
    const/16 v21, 0x0

    sput-boolean v21, Lcom/lenovo/safecenter/antivirus/utils/ScanUtils;->isNetScan_cancel:Z

    goto/16 :goto_0

    .line 390
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeHasVirus()V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->F(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Z

    move-result v21

    if-nez v21, :cond_11

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->G(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v22, v0

    const v23, 0x7f0d031e

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->f(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    const-string v24, "1"

    invoke-virtual/range {v21 .. v24}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->C(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/TextView;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v22, v0

    const v23, 0x7f0d0314

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 410
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v11    # "pkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .end local v16    # "sumdesc":I
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->t(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/TextView;

    move-result-object v21

    const v22, 0x7f0d0404

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(I)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->C(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/TextView;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->f(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->E(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v22

    add-int v17, v21, v22

    .line 413
    .local v17, "sumdesc1":I
    if-nez v17, :cond_13

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->stopAnimation()V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeKilledVirus()V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->C(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/TextView;

    move-result-object v21

    const v22, 0x7f0d0405

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(I)V

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->F(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Z

    move-result v21

    if-nez v21, :cond_12

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->G(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v22, v0

    const v23, 0x7f0d031d

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    const-string v24, "0"

    invoke-virtual/range {v21 .. v24}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :cond_12
    :goto_7
    const-string v21, "viruspkgname"

    const-string v22, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->x(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/HashMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v21

    if-lez v21, :cond_16

    .line 445
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 446
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->x(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/HashMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 448
    .restart local v11    # "pkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 450
    .restart local v10    # "pkg":Ljava/lang/String;
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    const-string v21, ","

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 427
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v11    # "pkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeHasVirus()V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->F(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Z

    move-result v21

    if-nez v21, :cond_14

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->G(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v22, v0

    const v23, 0x7f0d031e

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->f(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    const-string v24, "1"

    invoke-virtual/range {v21 .. v24}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->C(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/TextView;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v22, v0

    const v23, 0x7f0d0314

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 454
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v11    # "pkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_15
    const-string v21, "viruspkgname"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 458
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v11    # "pkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->setView()V

    goto/16 :goto_0

    .line 462
    .end local v17    # "sumdesc1":I
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 463
    .local v12, "play":Z
    if-eqz v12, :cond_17

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->startAnimation()V

    goto/16 :goto_0

    .line 466
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->stopAnimation()V

    goto/16 :goto_0

    .line 471
    .end local v12    # "play":Z
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    move-object/from16 v22, v0

    const v23, 0x7f0d025e

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
