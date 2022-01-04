.class public Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter;
.super Landroid/widget/BaseAdapter;
.source "LogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/antivirus/views/LogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VirusAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/views/LogActivity;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/VirusLog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/antivirus/views/LogActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/antivirus/domain/VirusLog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusLog;>;"
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter;->a:Lcom/lenovo/safecenter/antivirus/views/LogActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 149
    iput-object p2, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter;->b:Landroid/content/Context;

    .line 150
    iput-object p3, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter;->c:Ljava/util/List;

    .line 151
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 171
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 178
    if-nez p2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter;->b:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030033

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 180
    new-instance v0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter$a;

    invoke-direct {v0, p0, v5}, Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter$a;-><init>(Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter;B)V

    .line 182
    .local v0, "holder":Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter$a;
    const v2, 0x7f09019b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter$a;->a:Landroid/widget/LinearLayout;

    .line 183
    const v2, 0x7f09019a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter$a;->b:Landroid/widget/TextView;

    .line 184
    const v2, 0x7f09019e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter$a;->c:Landroid/widget/TextView;

    .line 185
    const v2, 0x7f09019d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter$a;->d:Landroid/widget/TextView;

    .line 186
    const v2, 0x7f09019c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter$a;->f:Landroid/widget/ImageView;

    .line 187
    const v2, 0x7f09019f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter$a;->e:Landroid/view/View;

    .line 188
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 193
    :goto_0
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/antivirus/domain/VirusLog;

    .line 194
    .local v1, "log":Lcom/lenovo/safecenter/antivirus/domain/VirusLog;
    iget-object v2, v1, Lcom/lenovo/safecenter/antivirus/domain/VirusLog;->logdate:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 196
    iget-object v2, v0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter$a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 197
    iget-object v2, v0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter$a;->d:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/lenovo/safecenter/antivirus/domain/VirusLog;->eventcontent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v2, v0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter$a;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter;->a:Lcom/lenovo/safecenter/antivirus/views/LogActivity;

    iget-object v4, v1, Lcom/lenovo/safecenter/antivirus/domain/VirusLog;->eventtime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->formatAllTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v2, v0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v2, v0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter$a;->e:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object v2, v1, Lcom/lenovo/safecenter/antivirus/domain/VirusLog;->eventicon:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    iget-object v2, v0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter$a;->f:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter;->a:Lcom/lenovo/safecenter/antivirus/views/LogActivity;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02004b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    :goto_1
    return-object p2

    .line 190
    .end local v0    # "holder":Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter$a;
    .end local v1    # "log":Lcom/lenovo/safecenter/antivirus/domain/VirusLog;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter$a;

    .restart local v0    # "holder":Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter$a;
    goto :goto_0

    .line 206
    .restart local v1    # "log":Lcom/lenovo/safecenter/antivirus/domain/VirusLog;
    :cond_1
    iget-object v2, v0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter$a;->f:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter;->a:Lcom/lenovo/safecenter/antivirus/views/LogActivity;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02004c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 210
    :cond_2
    iget-object v2, v0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    iget-object v2, v0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter$a;->b:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/lenovo/safecenter/antivirus/domain/VirusLog;->logdate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v2, v0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter$a;->e:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v2, v0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter$a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method
