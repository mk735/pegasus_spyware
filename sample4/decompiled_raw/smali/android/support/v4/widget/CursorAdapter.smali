.class public abstract Landroid/support/v4/widget/CursorAdapter;
.super Landroid/widget/BaseAdapter;
.source "CursorAdapter.java"

# interfaces
.implements Landroid/support/v4/widget/a$a;
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/CursorAdapter$b;,
        Landroid/support/v4/widget/CursorAdapter$a;
    }
.end annotation


# static fields
.field public static final FLAG_AUTO_REQUERY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_REGISTER_CONTENT_OBSERVER:I = 0x2


# instance fields
.field protected mAutoRequery:Z

.field protected mChangeObserver:Landroid/support/v4/widget/CursorAdapter$a;

.field protected mContext:Landroid/content/Context;

.field protected mCursor:Landroid/database/Cursor;

.field protected mCursorFilter:Landroid/support/v4/widget/a;

.field protected mDataSetObserver:Landroid/database/DataSetObserver;

.field protected mDataValid:Z

.field protected mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

.field protected mRowIDColumn:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 123
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/CursorAdapter;->a(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "flags"    # I

    .prologue
    .line 151
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/CursorAdapter;->a(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "autoRequery"    # Z

    .prologue
    .line 138
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 139
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/CursorAdapter;->a(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 140
    return-void

    .line 139
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "flags"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 165
    and-int/lit8 v2, p3, 0x1

    if-ne v2, v0, :cond_2

    .line 166
    or-int/lit8 p3, p3, 0x2

    .line 167
    iput-boolean v0, p0, Landroid/support/v4/widget/CursorAdapter;->mAutoRequery:Z

    .line 171
    :goto_0
    if-eqz p2, :cond_3

    .line 172
    .local v0, "cursorPresent":Z
    :goto_1
    iput-object p2, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 173
    iput-boolean v0, p0, Landroid/support/v4/widget/CursorAdapter;->mDataValid:Z

    .line 174
    iput-object p1, p0, Landroid/support/v4/widget/CursorAdapter;->mContext:Landroid/content/Context;

    .line 175
    if-eqz v0, :cond_4

    const-string v2, "_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    :goto_2
    iput v2, p0, Landroid/support/v4/widget/CursorAdapter;->mRowIDColumn:I

    .line 176
    and-int/lit8 v2, p3, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 177
    new-instance v2, Landroid/support/v4/widget/CursorAdapter$a;

    invoke-direct {v2, p0}, Landroid/support/v4/widget/CursorAdapter$a;-><init>(Landroid/support/v4/widget/CursorAdapter;)V

    iput-object v2, p0, Landroid/support/v4/widget/CursorAdapter;->mChangeObserver:Landroid/support/v4/widget/CursorAdapter$a;

    .line 178
    new-instance v2, Landroid/support/v4/widget/CursorAdapter$b;

    invoke-direct {v2, p0, v1}, Landroid/support/v4/widget/CursorAdapter$b;-><init>(Landroid/support/v4/widget/CursorAdapter;B)V

    iput-object v2, p0, Landroid/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 184
    :goto_3
    if-eqz v0, :cond_1

    .line 185
    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mChangeObserver:Landroid/support/v4/widget/CursorAdapter$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mChangeObserver:Landroid/support/v4/widget/CursorAdapter$a;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 186
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 188
    :cond_1
    return-void

    .line 169
    .end local v0    # "cursorPresent":Z
    :cond_2
    iput-boolean v1, p0, Landroid/support/v4/widget/CursorAdapter;->mAutoRequery:Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 171
    goto :goto_1

    .line 175
    .restart local v0    # "cursorPresent":Z
    :cond_4
    const/4 v2, -0x1

    goto :goto_2

    .line 180
    :cond_5
    iput-object v4, p0, Landroid/support/v4/widget/CursorAdapter;->mChangeObserver:Landroid/support/v4/widget/CursorAdapter$a;

    .line 181
    iput-object v4, p0, Landroid/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    goto :goto_3
.end method


# virtual methods
.method public abstract bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 316
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 317
    .local v0, "old":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 318
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 320
    :cond_0
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 368
    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Landroid/support/v4/widget/CursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 205
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 263
    iget-boolean v1, p0, Landroid/support/v4/widget/CursorAdapter;->mDataValid:Z

    if-eqz v1, :cond_1

    .line 264
    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 266
    if-nez p2, :cond_0

    .line 267
    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2, p3}, Landroid/support/v4/widget/CursorAdapter;->newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 271
    .local v0, "v":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/widget/CursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 274
    .end local v0    # "v":Landroid/view/View;
    :goto_1
    return-object v0

    .line 269
    :cond_0
    move-object v0, p2

    .restart local v0    # "v":Landroid/view/View;
    goto :goto_0

    .line 274
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mCursorFilter:Landroid/support/v4/widget/a;

    if-nez v0, :cond_0

    .line 406
    new-instance v0, Landroid/support/v4/widget/a;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/a;-><init>(Landroid/support/v4/widget/a$a;)V

    iput-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mCursorFilter:Landroid/support/v4/widget/a;

    .line 408
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mCursorFilter:Landroid/support/v4/widget/a;

    return-object v0
.end method

.method public getFilterQueryProvider()Landroid/widget/FilterQueryProvider;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 213
    iget-boolean v0, p0, Landroid/support/v4/widget/CursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 215
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 217
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    const-wide/16 v0, 0x0

    .line 225
    iget-boolean v2, p0, Landroid/support/v4/widget/CursorAdapter;->mDataValid:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 226
    iget-object v2, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Landroid/support/v4/widget/CursorAdapter;->mRowIDColumn:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 232
    :cond_0
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 245
    iget-boolean v1, p0, Landroid/support/v4/widget/CursorAdapter;->mDataValid:Z

    if-nez v1, :cond_0

    .line 246
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "this should only be called when the cursor is valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 249
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t move cursor to position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    :cond_1
    if-nez p2, :cond_2

    .line 253
    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2, p3}, Landroid/support/v4/widget/CursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 257
    .local v0, "v":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/widget/CursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 258
    return-object v0

    .line 255
    .end local v0    # "v":Landroid/view/View;
    :cond_2
    move-object v0, p2

    .restart local v0    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x1

    return v0
.end method

.method protected init(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "autoRequery"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 161
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/CursorAdapter;->a(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 162
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 297
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/widget/CursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public abstract newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 448
    iget-boolean v0, p0, Landroid/support/v4/widget/CursorAdapter;->mAutoRequery:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/widget/CursorAdapter;->mDataValid:Z

    .line 452
    :cond_0
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 1
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 397
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    .line 401
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V
    .locals 0
    .param p1, "filterQueryProvider"    # Landroid/widget/FilterQueryProvider;

    .prologue
    .line 437
    iput-object p1, p0, Landroid/support/v4/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    .line 438
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .line 333
    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    .line 334
    const/4 v0, 0x0

    .line 355
    :goto_0
    return-object v0

    .line 336
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 337
    .local v0, "oldCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 338
    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mChangeObserver:Landroid/support/v4/widget/CursorAdapter$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mChangeObserver:Landroid/support/v4/widget/CursorAdapter$a;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 339
    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 341
    :cond_2
    iput-object p1, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 342
    if-eqz p1, :cond_5

    .line 343
    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mChangeObserver:Landroid/support/v4/widget/CursorAdapter$a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mChangeObserver:Landroid/support/v4/widget/CursorAdapter$a;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 344
    :cond_3
    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 345
    :cond_4
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/CursorAdapter;->mRowIDColumn:I

    .line 346
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/widget/CursorAdapter;->mDataValid:Z

    .line 348
    invoke-virtual {p0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 350
    :cond_5
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/widget/CursorAdapter;->mRowIDColumn:I

    .line 351
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/widget/CursorAdapter;->mDataValid:Z

    .line 353
    invoke-virtual {p0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
