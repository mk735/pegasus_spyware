.class final Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$b;
.super Landroid/widget/BaseExpandableListAdapter;
.source "NotificationRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;)V
    .locals 1

    .prologue
    .line 159
    iput-object p1, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$b;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 160
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$b;->b:Landroid/view/LayoutInflater;

    .line 161
    return-void
.end method


# virtual methods
.method public final getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 169
    int-to-long v0, p2

    return-wide v0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 175
    if-nez p4, :cond_0

    .line 176
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$b;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300c4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 195
    :cond_0
    return-object p4
.end method

.method public final getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$b;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->c(Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getGroupCount()I
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$b;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->c(Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 215
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x1

    .line 221
    if-nez p3, :cond_1

    .line 223
    new-instance v1, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$c;

    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$b;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;

    invoke-direct {v1, v3}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$c;-><init>(Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;)V

    .line 224
    .local v1, "groupHolder":Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$c;
    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$b;->b:Landroid/view/LayoutInflater;

    const v4, 0x7f0300c6

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 225
    const v3, 0x7f09035f

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$c;->a:Landroid/widget/ImageView;

    .line 226
    const v3, 0x7f09044d

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$c;->b:Landroid/widget/TextView;

    .line 227
    const v3, 0x7f090452

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$c;->c:Landroid/widget/TextView;

    .line 228
    const v3, 0x7f090451

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$c;->d:Landroid/widget/TextView;

    .line 229
    const v3, 0x7f090453

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$c;->e:Landroid/widget/TextView;

    .line 231
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 235
    :goto_0
    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$b;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->c(Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;

    .line 236
    .local v2, "notiBean":Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;
    if-eqz v2, :cond_0

    .line 237
    monitor-enter v2

    .line 238
    :try_start_0
    iget-object v3, v1, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$c;->a:Landroid/widget/ImageView;

    iget-object v4, v2, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    iget-object v3, v1, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$c;->b:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;->c:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v3, v1, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$c;->c:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;->d:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm MM-dd"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    iget-object v3, v1, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$c;->d:Landroid/widget/TextView;

    iget-wide v4, v2, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget v3, v2, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;->g:I

    if-ne v3, v6, :cond_2

    .line 244
    iget-object v3, v1, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$c;->e:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$b;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;

    const v5, 0x7f0d064c

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v3, v1, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$c;->e:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$b;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070018

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 251
    :goto_1
    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$b;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->a(Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;)I

    move-result v3

    if-ne v3, p1, :cond_4

    .line 253
    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$b;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->b(Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;)Landroid/widget/ExpandableListView;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 254
    iget-object v3, v1, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$c;->c:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 264
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    .end local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_0
    return-object p3

    .line 233
    .end local v1    # "groupHolder":Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$c;
    .end local v2    # "notiBean":Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$c;

    .restart local v1    # "groupHolder":Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$c;
    goto :goto_0

    .line 247
    .restart local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    .restart local v2    # "notiBean":Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$a;
    :cond_2
    :try_start_1
    iget-object v3, v1, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$c;->e:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$b;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;

    const v5, 0x7f0d064d

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v3, v1, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$c;->e:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$b;->a:Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 264
    .end local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 257
    .restart local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_3
    :try_start_2
    iget-object v3, v1, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$c;->c:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_2

    .line 261
    :cond_4
    iget-object v3, v1, Lcom/lenovo/safecenter/notificationintercept/NotificationRecordActivity$c;->c:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public final isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method
