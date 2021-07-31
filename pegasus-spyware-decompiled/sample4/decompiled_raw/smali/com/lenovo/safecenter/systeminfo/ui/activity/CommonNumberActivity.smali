.class public Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;
.super Lcom/lenovo/safecenter/platform/BaseTitleActivity;
.source "CommonNumberActivity.java"


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private a:Landroid/widget/ExpandableListView;

.field private b:Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;)Landroid/widget/ExpandableListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;->a:Landroid/widget/ExpandableListView;

    return-object v0
.end method


# virtual methods
.method public addContact(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 192
    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 193
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 194
    .local v0, "cResolver":Landroid/content/ContentResolver;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 195
    .local v7, "values":Landroid/content/ContentValues;
    invoke-virtual {v0, v6, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 197
    .local v3, "insertedUri":Landroid/net/Uri;
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 200
    .local v1, "insertedContactId":J
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 201
    .local v4, "nameValues":Landroid/content/ContentValues;
    const-string v8, "raw_contact_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 203
    const-string v8, "mimetype"

    const-string v9, "vnd.android.cursor.item/name"

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v8, "data2"

    invoke-virtual {v4, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 209
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 210
    .local v5, "phoneValues":Landroid/content/ContentValues;
    const-string v8, "raw_contact_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 212
    const-string v8, "mimetype"

    const-string v9, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v8, "data1"

    invoke-virtual {v5, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v8, "data2"

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    invoke-virtual {p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 217
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 220
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onClick(Landroid/view/View;)V

    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 224
    :goto_0
    return-void

    .line 223
    :pswitch_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;->finish()V

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x7f0904b9
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f0201af

    .line 44
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f030062

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;->setContentView(I)V

    .line 46
    const v0, 0x7f020286

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0d06b6

    invoke-virtual {p0, v0, v1, v3}, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 48
    const v0, 0x7f09028e

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;->a:Landroid/widget/ExpandableListView;

    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/lenovo/safecenter/systeminfo/service/CommonNumberService;->getInstance()Lcom/lenovo/safecenter/systeminfo/service/CommonNumberService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/systeminfo/service/CommonNumberService;->findAllCategoriesAndCommonNumber()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;->c:Ljava/util/HashMap;

    new-instance v0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;

    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;->c:Ljava/util/HashMap;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;->b:Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;

    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;->a:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;->b:Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;->a:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity$1;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity$1;-><init>(Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;->a:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity$2;-><init>(Lcom/lenovo/safecenter/systeminfo/ui/activity/CommonNumberActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 49
    return-void
.end method
