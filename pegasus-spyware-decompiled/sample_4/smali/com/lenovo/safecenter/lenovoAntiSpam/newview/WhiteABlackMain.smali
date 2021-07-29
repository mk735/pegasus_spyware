.class public Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;
.super Landroid/app/TabActivity;
.source "WhiteABlackMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TabHost;

.field private b:Landroid/view/GestureDetector;

.field private c:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 189
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->a:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->b:Landroid/view/GestureDetector;

    return-object v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->b:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 244
    :cond_0
    invoke-super {p0, p1}, Landroid/app/TabActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getView(Ljava/lang/String;II)Landroid/view/View;
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "drawID"    # I

    .prologue
    const/16 v7, 0x8

    .line 159
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030117

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 160
    .local v3, "view1":Landroid/view/View;
    const v4, 0x7f09047b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 161
    .local v2, "txtnumber":Landroid/widget/TextView;
    const v4, 0x7f090593

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 162
    .local v1, "tab_img":Landroid/widget/ImageView;
    const v4, 0x7f090594

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, "img":Landroid/view/View;
    const-string v4, "ss"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "img=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 165
    const/4 v4, 0x1

    if-ne p2, v4, :cond_0

    .line 166
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 170
    :goto_0
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    return-object v3

    .line 168
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904b9

    if-ne v0, v1, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->finish()V

    .line 181
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const/4 v6, 0x7

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->requestWindowFeature(I)Z

    .line 65
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->addEntryPrivacySpaceCount()I

    .line 66
    const v6, 0x7f030063

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->setContentView(I)V

    .line 67
    const v6, 0x7f020286

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v7, 0x7f0d0240

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v8}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 68
    sget-object v6, Lcom/lenovo/safecenter/utils/DataHelpUtils;->allActivity:Ljava/util/ArrayList;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->getTabHost()Landroid/widget/TabHost;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->a:Landroid/widget/TabHost;

    .line 71
    const v6, 0x7f0d0764

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f02012e

    invoke-virtual {p0, v6, v9, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->getView(Ljava/lang/String;II)Landroid/view/View;

    move-result-object v5

    .line 75
    .local v5, "view":Landroid/view/View;
    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->a:Landroid/widget/TabHost;

    const-string v7, "0"

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 76
    .local v3, "filterMsgSpec":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v3, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 78
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v2, "filterMsgIntent":Landroid/content/Intent;
    const-string v6, "type"

    invoke-virtual {v2, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    invoke-virtual {v3, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 84
    const v6, 0x7f0d0765

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f02012c

    invoke-virtual {p0, v6, v10, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->getView(Ljava/lang/String;II)Landroid/view/View;

    move-result-object v5

    .line 86
    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->a:Landroid/widget/TabHost;

    const-string v7, "1"

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 87
    .local v1, "filterCallSpec":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v1, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-class v6, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    invoke-direct {v0, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v0, "filterCallIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 91
    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->a:Landroid/widget/TabHost;

    invoke-virtual {v6, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 92
    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->a:Landroid/widget/TabHost;

    invoke-virtual {v6, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 94
    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->a:Landroid/widget/TabHost;

    new-instance v7, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain$1;

    invoke-direct {v7, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain$1;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;)V

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 118
    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->a:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f09047b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 120
    .local v4, "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->a:Landroid/widget/TabHost;

    invoke-virtual {v6, v9}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 127
    new-instance v6, Landroid/view/GestureDetector;

    new-instance v7, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain$a;

    invoke-direct {v7, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain$a;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;)V

    invoke-direct {v6, v7}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->b:Landroid/view/GestureDetector;

    .line 128
    new-instance v6, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain$2;

    invoke-direct {v6, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain$2;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;)V

    iput-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->c:Landroid/view/View$OnTouchListener;

    .line 139
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 149
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 150
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 151
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 144
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 145
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/TabActivity;->onStop()V

    .line 156
    return-void
.end method

.method public setLeftImgGone(I)V
    .locals 1
    .param p1, "gone"    # I

    .prologue
    .line 53
    const v0, 0x7f0904b9

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    return-void
.end method

.method public setRightImgGone(I)V
    .locals 1
    .param p1, "gone"    # I

    .prologue
    .line 58
    const v0, 0x7f0904ba

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    return-void
.end method

.method public setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V
    .locals 5
    .param p1, "leftImgId"    # Ljava/lang/Integer;
    .param p2, "titleStrId"    # I
    .param p3, "rightImgId"    # Ljava/lang/Integer;

    .prologue
    const v4, 0x7f0904bb

    const/16 v3, 0x8

    .line 30
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x7

    const v2, 0x7f0300e1

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 33
    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 34
    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    if-eqz p1, :cond_0

    .line 38
    const v0, 0x7f0904b9

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    :goto_0
    if-eqz p3, :cond_1

    .line 45
    const v0, 0x7f0904ba

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    :goto_1
    return-void

    .line 40
    :cond_0
    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->setLeftImgGone(I)V

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;->setRightImgGone(I)V

    goto :goto_1
.end method
