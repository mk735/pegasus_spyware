.class public Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;
.super Lcom/lenovo/safecenter/platform/BaseTitleActivity;
.source "AntiSpamMain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$b;,
        Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;,
        Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$c;
    }
.end annotation


# instance fields
.field a:Landroid/os/Handler;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ExpandableListView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/SafeLog;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/lenovo/safecenter/database/AppDatabase;

.field private n:Landroid/widget/PopupWindow;

.field private o:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;

.field private p:Landroid/app/ProgressDialog;

.field private q:I

.field private r:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$c;

.field private s:Landroid/widget/RelativeLayout;

.field private t:I

.field private u:Landroid/view/GestureDetector;

.field private v:Landroid/view/View$OnTouchListener;

.field private w:Landroid/view/View;

.field private x:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->q:I

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->t:I

    .line 83
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$1;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->a:Landroid/os/Handler;

    .line 1282
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->t:I

    return p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->p:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d01bb

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$9;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$9;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$8;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$8;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-void
.end method

.method static synthetic b(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->q:I

    return p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->o:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    .prologue
    .line 67
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->q:I

    return v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->l:Ljava/util/List;

    return-object v0
.end method

.method public static delLocalBlack(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1216
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1217
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v5, "content://com.lenovo.safecenter.LocalBlackProvider/localblack"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1218
    .local v3, "uri":Landroid/net/Uri;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " PHONE_NUMBERS_EQUAL(phonenumber,\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\',0)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1219
    .local v1, "i":I
    if-gtz v1, :cond_0

    .line 1227
    .end local v1    # "i":I
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_0
    return v4

    .line 1223
    .restart local v1    # "i":I
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    .line 1224
    .end local v1    # "i":I
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 1225
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    .prologue
    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->n:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->u:Landroid/view/GestureDetector;

    return-object v0
.end method

.method public static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 499
    if-eqz p0, :cond_0

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 502
    :cond_0
    if-eqz p0, :cond_1

    const-string v0, "+86"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 505
    :cond_1
    return-object p0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)Landroid/widget/ExpandableListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->g:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)V
    .locals 4
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->m:Lcom/lenovo/safecenter/database/AppDatabase;

    const-string v1, "safe_log_harass"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->q:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/database/AppDatabase;->deleteLogForTable(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->changeBtn()V

    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->o:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->updateStatus()V

    return-void
.end method

.method static synthetic i(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    .prologue
    .line 67
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->t:I

    return v0
.end method

.method public static isLocalBlack(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1236
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1237
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "content://com.lenovo.safecenter.LocalBlackProvider/localblack"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1238
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PHONE_NUMBERS_EQUAL(phonenumber,\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',0)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1239
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1240
    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1241
    if-lez v6, :cond_0

    .line 1243
    const/4 v2, 0x1

    .line 1247
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "count":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    :goto_0
    return v2

    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "count":I
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_0
    move v2, v8

    .line 1245
    goto :goto_0

    .line 1247
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "count":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v2

    move v2, v8

    goto :goto_0
.end method

.method static synthetic j(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)Lcom/lenovo/safecenter/database/AppDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->m:Lcom/lenovo/safecenter/database/AppDatabase;

    return-object v0
.end method

.method static synthetic k(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    .prologue
    .line 67
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d01bb

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d04ff

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$2;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$2;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$22;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$22;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-void
.end method

.method static synthetic l(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)V
    .locals 6
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    .prologue
    const/4 v5, 0x1

    .line 67
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->l:Ljava/util/List;

    iget v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->t:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/SafeLog;

    iget-object v1, v0, Lcom/lenovo/safecenter/support/SafeLog;->number:Ljava/lang/String;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "address"

    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->l:Ljava/util/List;

    iget v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->t:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/SafeLog;

    iget-object v0, v0, Lcom/lenovo/safecenter/support/SafeLog;->number:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "date"

    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->l:Ljava/util/List;

    iget v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->t:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/SafeLog;

    iget-object v0, v0, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "read"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "status"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "type"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "body"

    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->l:Ljava/util/List;

    iget v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->t:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/SafeLog;

    iget-object v0, v0, Lcom/lenovo/safecenter/support/SafeLog;->content:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "content://sms"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->m:Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->l:Ljava/util/List;

    iget v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->t:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/SafeLog;

    iget v0, v0, Lcom/lenovo/safecenter/support/SafeLog;->id:I

    invoke-virtual {v2, v0}, Lcom/lenovo/safecenter/database/AppDatabase;->deleteHarassLog(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->l:Ljava/util/List;

    iget v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->t:I

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->changeBtn()V

    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->o:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->updateStatus()V

    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->t:I

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->g:Landroid/widget/ExpandableListView;

    iget v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->t:I

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    :cond_0
    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->isStarnge(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/CheckCenter;->insertWhitePerson(Landroid/content/Context;Ljava/lang/String;)Z

    const v0, 0x7f0d065f

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->isLocalBlack(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->showDelLocalBlack(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public callTo()V
    .locals 5

    .prologue
    .line 964
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->l:Ljava/util/List;

    iget v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->t:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/SafeLog;

    iget-object v1, v1, Lcom/lenovo/safecenter/support/SafeLog;->number:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 966
    .local v0, "callIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->startActivity(Landroid/content/Intent;)V

    .line 967
    return-void
.end method

.method public changeBtn()V
    .locals 2

    .prologue
    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 427
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->g:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getFooterViewsCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 429
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->g:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->w:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->removeFooterView(Landroid/view/View;)Z

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->g:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->g:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->w:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->addFooterView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public changgeword(I)Landroid/text/SpannableString;
    .locals 8
    .param p1, "fromtype"    # I

    .prologue
    const/16 v7, 0x21

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 949
    const v2, 0x7f0d0763

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getStr_fromtype(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 950
    .local v1, "text":Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 951
    .local v0, "spannable":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getStr_fromtype(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 956
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getStr_fromtype(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v5, v3, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 959
    return-object v0
.end method

.method public deleteLog()V
    .locals 3

    .prologue
    .line 752
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->m:Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->l:Ljava/util/List;

    iget v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->t:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/SafeLog;

    iget v0, v0, Lcom/lenovo/safecenter/support/SafeLog;->id:I

    invoke-virtual {v1, v0}, Lcom/lenovo/safecenter/database/AppDatabase;->deleteHarassLog(I)V

    .line 753
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->l:Ljava/util/List;

    iget v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->t:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 754
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->changeBtn()V

    .line 755
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->o:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->notifyDataSetChanged()V

    .line 756
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->updateStatus()V

    .line 757
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->t:I

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 759
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->g:Landroid/widget/ExpandableListView;

    iget v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->t:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 761
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->u:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1329
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1332
    :cond_0
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public findViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 673
    const v0, 0x7f09009b

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->b:Landroid/widget/TextView;

    .line 674
    const v0, 0x7f09009a

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->c:Landroid/widget/TextView;

    .line 675
    const v0, 0x7f09009f

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->d:Landroid/widget/TextView;

    .line 676
    const v0, 0x7f0900a2

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->e:Landroid/widget/TextView;

    .line 678
    const v0, 0x7f0900a7

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->f:Landroid/widget/TextView;

    .line 679
    const v0, 0x7f0900a6

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->g:Landroid/widget/ExpandableListView;

    .line 680
    const v0, 0x7f0900a0

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->h:Landroid/widget/LinearLayout;

    .line 681
    const v0, 0x7f09009d

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->i:Landroid/widget/LinearLayout;

    .line 682
    const v0, 0x7f09009e

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->j:Landroid/widget/ImageView;

    .line 683
    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->k:Landroid/widget/ImageView;

    .line 684
    const v0, 0x7f0900a3

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->s:Landroid/widget/RelativeLayout;

    .line 685
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->g:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 686
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->g:Landroid/widget/ExpandableListView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 687
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->g:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 689
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030081

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->w:Landroid/view/View;

    .line 690
    sget v0, Lcom/lenovo/safecenter/utils/Const;->SDK_VERSION:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 692
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->g:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->w:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->addFooterView(Landroid/view/View;)V

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->w:Landroid/view/View;

    const v1, 0x7f09031a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->x:Landroid/widget/Button;

    .line 695
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->x:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$7;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$7;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 712
    return-void
.end method

.method public getHarassType(I)I
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 360
    if-ne p1, v5, :cond_2

    .line 362
    invoke-static {p0, v5}, Lcom/lenovo/safecenter/utils/Const;->getHarassCount(Landroid/content/Context;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 364
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 367
    .local v1, "mDefaultPreference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 368
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "total_harass_call"

    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->m:Lcom/lenovo/safecenter/database/AppDatabase;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/database/AppDatabase;->getHarassLogCount(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 370
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "mDefaultPreference":Landroid/content/SharedPreferences;
    :cond_0
    invoke-static {p0, v5}, Lcom/lenovo/safecenter/utils/Const;->getHarassCount(Landroid/content/Context;I)I

    move-result v2

    .line 384
    :cond_1
    :goto_0
    return v2

    .line 371
    :cond_2
    if-nez p1, :cond_1

    .line 373
    invoke-static {p0, v2}, Lcom/lenovo/safecenter/utils/Const;->getHarassCount(Landroid/content/Context;I)I

    move-result v3

    if-nez v3, :cond_3

    .line 375
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 378
    .restart local v1    # "mDefaultPreference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 379
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "total_harass_sms"

    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->m:Lcom/lenovo/safecenter/database/AppDatabase;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/database/AppDatabase;->getHarassLogCount(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 381
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "mDefaultPreference":Landroid/content/SharedPreferences;
    :cond_3
    invoke-static {p0, v2}, Lcom/lenovo/safecenter/utils/Const;->getHarassCount(Landroid/content/Context;I)I

    move-result v2

    goto :goto_0
.end method

.method public getStr_fromtype(I)Ljava/lang/String;
    .locals 4
    .param p1, "fromtype"    # I

    .prologue
    const v3, 0x7f0d075c

    .line 903
    const-string v0, "msg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromtype==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 906
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->q:I

    if-nez v0, :cond_0

    .line 908
    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 944
    :goto_0
    return-object v0

    .line 911
    :cond_0
    const v0, 0x7f0d075d

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 914
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 917
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->q:I

    if-nez v0, :cond_2

    .line 919
    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 922
    :cond_2
    const v0, 0x7f0d0761

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 924
    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 926
    const v0, 0x7f0d0762

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 927
    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 929
    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 931
    :cond_5
    const/4 v0, 0x7

    if-ne p1, v0, :cond_6

    .line 933
    const v0, 0x7f0d075e

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 935
    :cond_6
    const/16 v0, 0x8

    if-ne p1, v0, :cond_7

    .line 937
    const v0, 0x7f0d075f

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 939
    :cond_7
    const/16 v0, 0x9

    if-ne p1, v0, :cond_8

    .line 941
    const v0, 0x7f0d0760

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 944
    :cond_8
    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public initData(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    const v5, 0x7f070019

    const v4, 0x7f070004

    const v3, 0x7f020311

    const v2, 0x7f020310

    .line 389
    if-nez p1, :cond_1

    .line 391
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->m:Lcom/lenovo/safecenter/database/AppDatabase;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/database/AppDatabase;->loadHarassLog(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->l:Ljava/util/List;

    .line 392
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;

    invoke-direct {v0, p0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->o:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;

    .line 393
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 394
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 395
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->j:Landroid/widget/ImageView;

    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 396
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->k:Landroid/widget/ImageView;

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 397
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 398
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 399
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->f:Landroid/widget/TextView;

    const v1, 0x7f0d0504

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 400
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->x:Landroid/widget/Button;

    const v1, 0x7f0d01a4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 414
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->changeBtn()V

    .line 415
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->g:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->o:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 416
    return-void

    .line 401
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->m:Lcom/lenovo/safecenter/database/AppDatabase;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/database/AppDatabase;->loadHarassLog(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->l:Ljava/util/List;

    .line 404
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;

    invoke-direct {v0, p0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->o:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;

    .line 405
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 406
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 407
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 408
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 409
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->k:Landroid/widget/ImageView;

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 410
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->j:Landroid/widget/ImageView;

    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 411
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->f:Landroid/widget/TextView;

    const v1, 0x7f0d0505

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 412
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->x:Landroid/widget/Button;

    const v1, 0x7f0d01a5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public isStarnge(Ljava/lang/String;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 510
    invoke-static {p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 511
    sget-object v0, Lcom/lenovo/safecenter/support/SecurityService;->secutityPerson:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/lenovo/safecenter/utils/SafeCenter;->getAllLocalBlack(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/lenovo/safecenter/utils/SafeCenter;->getAllNetBlack(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/lenovo/safecenter/support/SecurityService;->whitePerson:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    :cond_0
    const/4 v0, 0x0

    .line 515
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 449
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0904b9

    if-ne v2, v3, :cond_2

    .line 452
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 453
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->startActivity(Landroid/content/Intent;)V

    .line 454
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->finish()V

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 463
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0904ba

    if-ne v2, v3, :cond_3

    .line 465
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 470
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0902f5

    if-ne v2, v3, :cond_4

    .line 472
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 475
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0902f8

    if-ne v2, v3, :cond_5

    .line 477
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 478
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 479
    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 482
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0902f7

    if-ne v2, v3, :cond_6

    .line 484
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 486
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 489
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0902f9

    if-ne v2, v3, :cond_0

    .line 491
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v2, 0x7f020286

    .line 260
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 261
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->setContentView(I)V

    .line 262
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0d0230

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 263
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->findViews()V

    .line 264
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$c;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$c;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->r:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$c;

    .line 265
    new-instance v0, Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->m:Lcom/lenovo/safecenter/database/AppDatabase;

    .line 267
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->setOnclick()V

    .line 270
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->q:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_0
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$b;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$b;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->u:Landroid/view/GestureDetector;

    .line 281
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$21;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$21;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->v:Landroid/view/View$OnTouchListener;

    .line 290
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 305
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onDestroy()V

    .line 310
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 313
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 315
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 316
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->startActivity(Landroid/content/Intent;)V

    .line 317
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 320
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 600
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onPause()V

    .line 605
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 606
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 331
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onResume()V

    .line 340
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->registerAction()V

    .line 341
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->q:I

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->initData(I)V

    .line 342
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->updateStatus()V

    .line 351
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->setHarassSet()V

    .line 354
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 355
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 296
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onStop()V

    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->r:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$c;

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public registerAction()V
    .locals 2

    .prologue
    .line 186
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 187
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.lenovo.antispam.notify"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string v1, "com.lenovo.antispam.clearlogs"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->r:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$c;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    return-void
.end method

.method public report()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 851
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->p:Landroid/app/ProgressDialog;

    .line 852
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->p:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 853
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->p:Landroid/app/ProgressDialog;

    const v1, 0x7f0d0160

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 854
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->p:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 855
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->p:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 856
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$15;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$15;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$15;->start()V

    .line 875
    return-void
.end method

.method public reportHarssLog()I
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 883
    iget v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->t:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 885
    iget v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->q:I

    if-nez v1, :cond_1

    .line 887
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->l:Ljava/util/List;

    iget v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->t:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/SafeLog;

    iget-object v1, v1, Lcom/lenovo/safecenter/support/SafeLog;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/safecenter/utils/MyUtils;->replaceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->l:Ljava/util/List;

    iget v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->t:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/SafeLog;

    iget-object v1, v1, Lcom/lenovo/safecenter/support/SafeLog;->content:Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/safecenter/utils/MyUtils;->replaceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v2, v3, v1}, Lcom/lenovo/safecenter/support/HttpUtils;->reportHarssLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 896
    :cond_0
    :goto_0
    return v0

    .line 889
    :cond_1
    iget v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->q:I

    if-ne v1, v0, :cond_0

    .line 891
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->l:Ljava/util/List;

    iget v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->t:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/SafeLog;

    iget-object v1, v1, Lcom/lenovo/safecenter/support/SafeLog;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/safecenter/utils/MyUtils;->replaceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->l:Ljava/util/List;

    iget v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->t:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/SafeLog;

    iget-object v1, v1, Lcom/lenovo/safecenter/support/SafeLog;->content:Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/safecenter/utils/MyUtils;->replaceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v2, v3, v1}, Lcom/lenovo/safecenter/support/HttpUtils;->reportHarssLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 892
    .local v0, "state":I
    goto :goto_0
.end method

.method public setHarassSet()V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1196
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "intercall_mode_type"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1199
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1200
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1211
    :goto_0
    return-void

    .line 1206
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1207
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1209
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->b:Landroid/widget/TextView;

    const v1, 0x7f0d04e2

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getHarassType(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getHarassType(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setOnclick()V
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->g:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$3;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$3;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 635
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->h:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$4;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$4;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->i:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$5;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$5;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 658
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->s:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$6;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$6;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 666
    return-void
.end method

.method public showDelLocalBlack(Ljava/lang/String;)V
    .locals 4
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1253
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d01bb

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d065d

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0660

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$17;

    invoke-direct {v2, p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$17;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0661

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$16;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$16;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 1269
    return-void
.end method

.method public showReportDialog()V
    .locals 5

    .prologue
    const v4, 0x7f0d01bb

    const v3, 0x7f0d0047

    const v2, 0x7f0d0046

    .line 793
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->q:I

    if-nez v0, :cond_1

    .line 795
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d04fb

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$11;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$11;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)V

    invoke-virtual {v0, v2, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$10;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$10;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)V

    invoke-virtual {v0, v3, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 846
    :cond_0
    :goto_0
    return-void

    .line 811
    :cond_1
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->q:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 813
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d04fc

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$14;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$14;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)V

    invoke-virtual {v0, v2, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$13;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$13;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)V

    invoke-virtual {v0, v3, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    goto :goto_0
.end method

.method public showReport_fail()V
    .locals 3

    .prologue
    .line 136
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d01bb

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d04fe

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d03be

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$19;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$19;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$18;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$18;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 157
    return-void
.end method

.method public showReport_success()V
    .locals 3

    .prologue
    .line 119
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d01bb

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d04fd

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$12;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$12;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 130
    return-void
.end method

.method public showpopupWindow()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x1

    .line 230
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03007f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 231
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0902f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0902f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0902f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0902f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0, v5, v5, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->n:Landroid/widget/PopupWindow;

    .line 234
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->n:Landroid/widget/PopupWindow;

    const v2, 0x7f0e000c

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 235
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->n:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 237
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 238
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->n:Landroid/widget/PopupWindow;

    const v2, 0x7f0904b8

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getScreenWidth()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 239
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->update()V

    .line 241
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->n:Landroid/widget/PopupWindow;

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$20;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$20;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 246
    return-void
.end method

.method public updateStatus()V
    .locals 9

    .prologue
    const v8, 0x7f0d04e1

    const v2, 0x7f0d017a

    const v7, 0x7f0d010e

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 196
    const-string v0, "1"

    invoke-static {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/CheckCenter;->getHarassCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "1"

    invoke-static {p0, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/CheckCenter;->getHarassCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->q:I

    if-ne v0, v6, :cond_0

    .line 201
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->m:Lcom/lenovo/safecenter/database/AppDatabase;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/database/AppDatabase;->updatehasSee(Ljava/lang/String;)V

    .line 202
    sput v5, Lcom/lenovo/safecenter/support/SafeCenterService;->harass_call_count:I

    .line 204
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/Const;->saveHarassLogsCount(Landroid/content/Context;)V

    .line 205
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/MyUtils;->showLeSecNotification(Landroid/content/Context;)V

    .line 211
    :cond_0
    :goto_0
    const-string v0, "0"

    invoke-static {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/CheckCenter;->getHarassCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    .line 213
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "0"

    invoke-static {p0, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/CheckCenter;->getHarassCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->q:I

    if-nez v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->m:Lcom/lenovo/safecenter/database/AppDatabase;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/database/AppDatabase;->updatehasSee(Ljava/lang/String;)V

    .line 218
    sput v5, Lcom/lenovo/safecenter/support/SafeCenterService;->harass_msg_count:I

    .line 219
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/Const;->saveHarassLogsCount(Landroid/content/Context;)V

    .line 220
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/MyUtils;->showLeSecNotification(Landroid/content/Context;)V

    .line 226
    :cond_1
    :goto_1
    return-void

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
