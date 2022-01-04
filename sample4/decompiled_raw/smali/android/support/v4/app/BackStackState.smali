.class final Landroid/support/v4/app/BackStackState;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:[I

.field final b:I

.field final c:I

.field final d:Ljava/lang/String;

.field final e:I

.field final f:I

.field final g:Ljava/lang/CharSequence;

.field final h:I

.field final i:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Landroid/support/v4/app/BackStackState$1;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackState$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->b:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->c:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->d:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->e:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->f:I

    .line 87
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->g:Ljava/lang/CharSequence;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->h:I

    .line 89
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->i:Ljava/lang/CharSequence;

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/a;)V
    .locals 8
    .param p1, "bse"    # Landroid/support/v4/app/a;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v2, 0x0

    .line 41
    .local v2, "numRemoved":I
    iget-object v3, p1, Landroid/support/v4/app/a;->b:Landroid/support/v4/app/a$a;

    .line 42
    .local v3, "op":Landroid/support/v4/app/a$a;
    :goto_0
    if-eqz v3, :cond_1

    .line 43
    iget-object v6, v3, Landroid/support/v4/app/a$a;->g:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, v3, Landroid/support/v4/app/a$a;->g:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v2, v6

    .line 44
    :cond_0
    iget-object v3, v3, Landroid/support/v4/app/a$a;->a:Landroid/support/v4/app/a$a;

    goto :goto_0

    .line 46
    :cond_1
    iget v6, p1, Landroid/support/v4/app/a;->d:I

    mul-int/lit8 v6, v6, 0x5

    add-int/2addr v6, v2

    new-array v6, v6, [I

    iput-object v6, p0, Landroid/support/v4/app/BackStackState;->a:[I

    .line 48
    iget-boolean v6, p1, Landroid/support/v4/app/a;->i:Z

    if-nez v6, :cond_2

    .line 49
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Not on back stack"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 52
    :cond_2
    iget-object v3, p1, Landroid/support/v4/app/a;->b:Landroid/support/v4/app/a$a;

    .line 53
    const/4 v4, 0x0

    .local v4, "pos":I
    move v5, v4

    .line 54
    .end local v4    # "pos":I
    .local v5, "pos":I
    :goto_1
    if-eqz v3, :cond_5

    .line 55
    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    iget v7, v3, Landroid/support/v4/app/a$a;->c:I

    aput v7, v6, v5

    .line 56
    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    iget-object v7, v3, Landroid/support/v4/app/a$a;->d:Landroid/support/v4/app/Fragment;

    iget v7, v7, Landroid/support/v4/app/Fragment;->n:I

    aput v7, v6, v4

    .line 57
    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    iget v7, v3, Landroid/support/v4/app/a$a;->e:I

    aput v7, v6, v5

    .line 58
    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    iget v7, v3, Landroid/support/v4/app/a$a;->f:I

    aput v7, v6, v4

    .line 59
    iget-object v6, v3, Landroid/support/v4/app/a$a;->g:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 60
    iget-object v6, v3, Landroid/support/v4/app/a$a;->g:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 61
    .local v0, "N":I
    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    aput v0, v6, v5

    .line 62
    const/4 v1, 0x0

    .local v1, "i":I
    move v5, v4

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 63
    iget-object v7, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    iget-object v6, v3, Landroid/support/v4/app/a$a;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/Fragment;

    iget v6, v6, Landroid/support/v4/app/Fragment;->n:I

    aput v6, v7, v5

    .line 62
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    goto :goto_2

    :cond_3
    move v4, v5

    .line 68
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    :goto_3
    iget-object v3, v3, Landroid/support/v4/app/a$a;->a:Landroid/support/v4/app/a$a;

    move v5, v4

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    goto :goto_1

    .line 66
    :cond_4
    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    const/4 v7, 0x0

    aput v7, v6, v5

    goto :goto_3

    .line 70
    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    :cond_5
    iget v6, p1, Landroid/support/v4/app/a;->g:I

    iput v6, p0, Landroid/support/v4/app/BackStackState;->b:I

    .line 71
    iget v6, p1, Landroid/support/v4/app/a;->h:I

    iput v6, p0, Landroid/support/v4/app/BackStackState;->c:I

    .line 72
    iget-object v6, p1, Landroid/support/v4/app/a;->k:Ljava/lang/String;

    iput-object v6, p0, Landroid/support/v4/app/BackStackState;->d:Ljava/lang/String;

    .line 73
    iget v6, p1, Landroid/support/v4/app/a;->m:I

    iput v6, p0, Landroid/support/v4/app/BackStackState;->e:I

    .line 74
    iget v6, p1, Landroid/support/v4/app/a;->n:I

    iput v6, p0, Landroid/support/v4/app/BackStackState;->f:I

    .line 75
    iget-object v6, p1, Landroid/support/v4/app/a;->o:Ljava/lang/CharSequence;

    iput-object v6, p0, Landroid/support/v4/app/BackStackState;->g:Ljava/lang/CharSequence;

    .line 76
    iget v6, p1, Landroid/support/v4/app/a;->p:I

    iput v6, p0, Landroid/support/v4/app/BackStackState;->h:I

    .line 77
    iget-object v6, p1, Landroid/support/v4/app/a;->q:Ljava/lang/CharSequence;

    iput-object v6, p0, Landroid/support/v4/app/BackStackState;->i:Ljava/lang/CharSequence;

    .line 78
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/b;)Landroid/support/v4/app/a;
    .locals 12
    .param p1, "fm"    # Landroid/support/v4/app/b;

    .prologue
    const/4 v11, 0x1

    .line 93
    new-instance v1, Landroid/support/v4/app/a;

    invoke-direct {v1, p1}, Landroid/support/v4/app/a;-><init>(Landroid/support/v4/app/b;)V

    .line 94
    .local v1, "bse":Landroid/support/v4/app/a;
    const/4 v5, 0x0

    .line 95
    .local v5, "pos":I
    :goto_0
    iget-object v8, p0, Landroid/support/v4/app/BackStackState;->a:[I

    array-length v8, v8

    if-ge v5, v8, :cond_3

    .line 96
    new-instance v4, Landroid/support/v4/app/a$a;

    invoke-direct {v4}, Landroid/support/v4/app/a$a;-><init>()V

    .line 97
    .local v4, "op":Landroid/support/v4/app/a$a;
    iget-object v8, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "pos":I
    .local v6, "pos":I
    aget v8, v8, v5

    iput v8, v4, Landroid/support/v4/app/a$a;->c:I

    .line 98
    sget-boolean v8, Landroid/support/v4/app/b;->a:Z

    if-eqz v8, :cond_0

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BSE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " set base fragment #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/support/v4/app/BackStackState;->a:[I

    aget v10, v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    iget-object v8, p1, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 101
    .local v2, "f":Landroid/support/v4/app/Fragment;
    iput-object v2, v4, Landroid/support/v4/app/a$a;->d:Landroid/support/v4/app/Fragment;

    .line 102
    iget-object v8, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "pos":I
    .restart local v6    # "pos":I
    aget v8, v8, v5

    iput v8, v4, Landroid/support/v4/app/a$a;->e:I

    .line 103
    iget-object v8, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    aget v8, v8, v6

    iput v8, v4, Landroid/support/v4/app/a$a;->f:I

    .line 104
    iget-object v8, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "pos":I
    .restart local v6    # "pos":I
    aget v0, v8, v5

    .line 105
    .local v0, "N":I
    if-lez v0, :cond_2

    .line 106
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, v4, Landroid/support/v4/app/a$a;->g:Ljava/util/ArrayList;

    .line 107
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 108
    sget-boolean v8, Landroid/support/v4/app/b;->a:Z

    if-eqz v8, :cond_1

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BSE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " set remove fragment #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/support/v4/app/BackStackState;->a:[I

    aget v10, v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_1
    iget-object v8, p1, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/Fragment;

    .line 111
    .local v7, "r":Landroid/support/v4/app/Fragment;
    iget-object v8, v4, Landroid/support/v4/app/a$a;->g:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v3, v3, 0x1

    move v6, v5

    .end local v5    # "pos":I
    .restart local v6    # "pos":I
    goto :goto_1

    .end local v3    # "i":I
    .end local v7    # "r":Landroid/support/v4/app/Fragment;
    :cond_2
    move v5, v6

    .line 114
    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    invoke-virtual {v1, v4}, Landroid/support/v4/app/a;->a(Landroid/support/v4/app/a$a;)V

    goto/16 :goto_0

    .line 116
    .end local v0    # "N":I
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    .end local v4    # "op":Landroid/support/v4/app/a$a;
    :cond_3
    iget v8, p0, Landroid/support/v4/app/BackStackState;->b:I

    iput v8, v1, Landroid/support/v4/app/a;->g:I

    .line 117
    iget v8, p0, Landroid/support/v4/app/BackStackState;->c:I

    iput v8, v1, Landroid/support/v4/app/a;->h:I

    .line 118
    iget-object v8, p0, Landroid/support/v4/app/BackStackState;->d:Ljava/lang/String;

    iput-object v8, v1, Landroid/support/v4/app/a;->k:Ljava/lang/String;

    .line 119
    iget v8, p0, Landroid/support/v4/app/BackStackState;->e:I

    iput v8, v1, Landroid/support/v4/app/a;->m:I

    .line 120
    iput-boolean v11, v1, Landroid/support/v4/app/a;->i:Z

    .line 121
    iget v8, p0, Landroid/support/v4/app/BackStackState;->f:I

    iput v8, v1, Landroid/support/v4/app/a;->n:I

    .line 122
    iget-object v8, p0, Landroid/support/v4/app/BackStackState;->g:Ljava/lang/CharSequence;

    iput-object v8, v1, Landroid/support/v4/app/a;->o:Ljava/lang/CharSequence;

    .line 123
    iget v8, p0, Landroid/support/v4/app/BackStackState;->h:I

    iput v8, v1, Landroid/support/v4/app/a;->p:I

    .line 124
    iget-object v8, p0, Landroid/support/v4/app/BackStackState;->i:Ljava/lang/CharSequence;

    iput-object v8, v1, Landroid/support/v4/app/a;->q:Ljava/lang/CharSequence;

    .line 125
    invoke-virtual {v1, v11}, Landroid/support/v4/app/a;->a(I)V

    .line 126
    return-object v1
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 135
    iget v0, p0, Landroid/support/v4/app/BackStackState;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget v0, p0, Landroid/support/v4/app/BackStackState;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget v0, p0, Landroid/support/v4/app/BackStackState;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget v0, p0, Landroid/support/v4/app/BackStackState;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->g:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 141
    iget v0, p0, Landroid/support/v4/app/BackStackState;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->i:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 143
    return-void
.end method
