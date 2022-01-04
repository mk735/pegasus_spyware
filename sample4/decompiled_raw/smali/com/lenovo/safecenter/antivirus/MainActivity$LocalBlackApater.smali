.class public Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater;
.super Landroid/widget/BaseAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/antivirus/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBlackApater"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/MainActivity;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/antivirus/MainActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 688
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 689
    iput-object p2, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater;->b:Landroid/content/Context;

    .line 690
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 694
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 702
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 708
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x8

    .line 715
    if-nez p2, :cond_1

    .line 716
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03002f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 717
    new-instance v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;

    invoke-direct {v0, p0, v4}, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;-><init>(Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater;B)V

    .line 718
    .local v0, "holder":Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;
    const v1, 0x7f09017d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->a:Landroid/widget/ImageView;

    .line 719
    const v1, 0x7f090178

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->b:Landroid/widget/ImageView;

    .line 720
    const v1, 0x7f090179

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->c:Landroid/widget/ImageView;

    .line 721
    const v1, 0x7f09017a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->d:Landroid/widget/ImageView;

    .line 722
    const v1, 0x7f090176

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->f:Landroid/widget/TextView;

    .line 723
    const v1, 0x7f09017b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->g:Landroid/widget/TextView;

    .line 724
    const v1, 0x7f09017c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->h:Landroid/widget/TextView;

    .line 725
    const v1, 0x7f090174

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->e:Landroid/widget/ImageView;

    .line 726
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 732
    :goto_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 734
    iget-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->f:Landroid/widget/TextView;

    const v2, 0x7f0d050d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 735
    iget-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    const v3, 0x7f0d050e

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/antivirus/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 736
    iget-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->e:Landroid/widget/ImageView;

    const v2, 0x7f020112

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 737
    iget-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 741
    iget-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 742
    iget-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 743
    iget-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 744
    iget-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->h:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 804
    :cond_0
    :goto_1
    return-object p2

    .line 728
    .end local v0    # "holder":Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;

    .restart local v0    # "holder":Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;
    goto :goto_0

    .line 745
    :cond_2
    if-nez p1, :cond_7

    .line 748
    iget-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->f:Landroid/widget/TextView;

    const v2, 0x7f0d02ba

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 749
    iget-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    const v3, 0x7f0d02c3

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/antivirus/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    :try_start_0
    const-string v1, "virus_state"

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "virus_state"

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 763
    :cond_3
    iget-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->h:Landroid/widget/TextView;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/antivirus/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/qv_base.amf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->getDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    :goto_2
    iget-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 779
    iget-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 780
    iget-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 781
    iget-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->e:Landroid/widget/ImageView;

    const v2, 0x7f020329

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 782
    iget-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 764
    :cond_4
    :try_start_1
    const-string v1, "virus_state"

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 766
    iget-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->h:Landroid/widget/TextView;

    const v2, 0x7f0d0136

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 775
    :catch_0
    move-exception v1

    iget-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->h:Landroid/widget/TextView;

    const-string v2, "2012-11-13"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 767
    :cond_5
    :try_start_2
    const-string v1, "virus_state"

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 769
    iget-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->h:Landroid/widget/TextView;

    const v2, 0x7f0d039d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 772
    :cond_6
    iget-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->h:Landroid/widget/TextView;

    const-string v2, "2012-11-13"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 783
    :cond_7
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 786
    iget-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->f:Landroid/widget/TextView;

    const v2, 0x7f0d0310

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 787
    iget-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->g:Landroid/widget/TextView;

    const v2, 0x7f0d0311

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 788
    iget-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 789
    iget-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 790
    iget-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 791
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/MainActivity;->b(Lcom/lenovo/safecenter/antivirus/MainActivity;)Lcom/lenovo/safecenter/antivirus/domain/VirusLog;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 793
    iget-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/MainActivity;->b(Lcom/lenovo/safecenter/antivirus/MainActivity;)Lcom/lenovo/safecenter/antivirus/domain/VirusLog;

    move-result-object v2

    iget-object v2, v2, Lcom/lenovo/safecenter/antivirus/domain/VirusLog;->eventcontent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    :goto_3
    iget-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 801
    iget-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->a:Landroid/widget/ImageView;

    const v2, 0x7f020058

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 802
    iget-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->e:Landroid/widget/ImageView;

    const v2, 0x7f0202b7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 796
    :cond_8
    iget-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->g:Landroid/widget/TextView;

    const v2, 0x7f0d0317

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 797
    iget-object v1, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$LocalBlackApater$a;->h:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method
