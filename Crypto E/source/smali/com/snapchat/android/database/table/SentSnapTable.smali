.class public Lcom/snapchat/android/database/table/SentSnapTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lcom/snapchat/android/model/SentSnap;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field private static b:Lcom/snapchat/android/database/table/SentSnapTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 44
    invoke-static {}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->values()[Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    move-result-object v1

    .line 45
    array-length v2, v1

    .line 46
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/snapchat/android/database/table/SentSnapTable;->a:[Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 48
    sget-object v3, Lcom/snapchat/android/database/table/SentSnapTable;->a:[Ljava/lang/String;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    return-void
.end method

.method private static a(Landroid/database/Cursor;)Lcom/snapchat/android/model/SentSnap;
    .locals 18
    .parameter

    .prologue
    .line 241
    sget-object v2, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->a:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 242
    sget-object v2, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->b:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 243
    sget-object v2, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->c:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 244
    sget-object v2, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->l:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 245
    sget-object v2, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->d:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 246
    sget-object v2, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->e:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 247
    sget-object v3, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->f:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->b()I

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 248
    sget-object v3, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->g:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->b()I

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 249
    sget-object v3, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->h:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->b()I

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 250
    sget-object v11, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->i:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v11}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->b()I

    move-result v11

    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 252
    sget-object v11, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->j:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v11}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->b()I

    move-result v11

    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v14, 0x1

    if-ne v11, v14, :cond_0

    const/16 v17, 0x1

    .line 253
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v14, 0x0

    .line 255
    :goto_1
    new-instance v3, Lcom/snapchat/android/model/SentSnap;

    invoke-static {v2}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->a(Ljava/lang/String;)Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v11

    invoke-direct/range {v3 .. v17}, Lcom/snapchat/android/model/SentSnap;-><init>(Ljava/lang/String;Ljava/lang/String;JJILcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JZ)V

    return-object v3

    .line 252
    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    .line 253
    :cond_1
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    goto :goto_1
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/Map;
    .locals 9
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/Snap$TargetView;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 203
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 205
    const-string v1, "SentSnaps"

    sget-object v2, Lcom/snapchat/android/database/table/SentSnapTable;->a:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 210
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->m:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->b()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-static {v0}, Lcom/snapchat/android/model/Snap$TargetView;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/Snap$TargetView;

    move-result-object v0

    .line 215
    if-eqz p1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 231
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 234
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 237
    :cond_2
    return-object v8

    .line 219
    :cond_3
    :try_start_1
    invoke-static {v1}, Lcom/snapchat/android/database/table/SentSnapTable;->a(Landroid/database/Cursor;)Lcom/snapchat/android/model/SentSnap;

    move-result-object v2

    .line 220
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->k:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->b()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 221
    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 222
    if-nez v0, :cond_4

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 225
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-virtual {v2}, Lcom/snapchat/android/model/SentSnap;->V()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Lcom/snapchat/android/model/SentSnap;->y()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 227
    invoke-virtual {v2}, Lcom/snapchat/android/model/SentSnap;->h()V

    .line 228
    invoke-static {}, Lcom/snapchat/android/model/SnapWomb;->a()Lcom/snapchat/android/model/SnapWomb;

    move-result-object v4

    invoke-virtual {v2}, Lcom/snapchat/android/model/SentSnap;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/snapchat/android/model/SnapWomb;->c(Ljava/lang/String;)V

    .line 230
    :cond_5
    invoke-interface {v8, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public static a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/snapchat/android/model/SentSnap;Lcom/snapchat/android/model/Snap$TargetView;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 171
    if-eqz p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 176
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->a:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/snapchat/android/model/SentSnap;->ak()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->b:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/snapchat/android/model/SentSnap;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->c:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/snapchat/android/model/SentSnap;->af()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 179
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->l:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/snapchat/android/model/SentSnap;->ae()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 180
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->f:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/snapchat/android/model/SentSnap;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->d:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/snapchat/android/model/SentSnap;->ao()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 182
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->j:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/snapchat/android/model/SentSnap;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->e:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/snapchat/android/model/SentSnap;->al()Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->g:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/snapchat/android/model/SentSnap;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->h:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/snapchat/android/model/SentSnap;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->i:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/snapchat/android/model/SentSnap;->r()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 188
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->k:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->m:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lcom/snapchat/android/model/Snap$TargetView;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v0, "SentSnapTable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveSnapInTransaction values="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    const-string v0, "SentSnaps"

    const/4 v1, 0x0

    const/4 v3, 0x5

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 182
    goto :goto_1
.end method

.method public static declared-synchronized b()Lcom/snapchat/android/database/table/SentSnapTable;
    .locals 2

    .prologue
    .line 53
    const-class v1, Lcom/snapchat/android/database/table/SentSnapTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable;->b:Lcom/snapchat/android/database/table/SentSnapTable;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/snapchat/android/database/table/SentSnapTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/SentSnapTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/SentSnapTable;->b:Lcom/snapchat/android/database/table/SentSnapTable;

    .line 56
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable;->b:Lcom/snapchat/android/database/table/SentSnapTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/model/SentSnap;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 32
    check-cast p1, Lcom/snapchat/android/model/SentSnap;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/table/SentSnapTable;->a(Lcom/snapchat/android/model/SentSnap;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "SentSnaps"

    return-object v0
.end method

.method public a(Lcom/snapchat/android/model/User;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    return-void
.end method

.method protected b(Lcom/snapchat/android/model/User;)Ljava/util/Collection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/User;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/model/SentSnap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 7

    .prologue
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    invoke-static {}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->values()[Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    move-result-object v2

    .line 73
    array-length v3, v2

    .line 74
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 75
    aget-object v4, v2, v0

    .line 76
    if-lez v0, :cond_0

    .line 77
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->a(Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->b(Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v4}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->d()Ljava/lang/String;

    move-result-object v4

    .line 81
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 82
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()[Lcom/snapchat/android/database/schema/Schema;
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->values()[Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method
