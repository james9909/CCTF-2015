.class public Lcom/snapchat/android/database/table/ReceivedSnapTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lcom/snapchat/android/model/ReceivedSnap;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field private static b:Lcom/snapchat/android/database/table/ReceivedSnapTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 48
    invoke-static {}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->values()[Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    move-result-object v1

    .line 49
    array-length v2, v1

    .line 50
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable;->a:[Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 52
    sget-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable;->a:[Ljava/lang/String;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    return-void
.end method

.method private a(Landroid/database/Cursor;)Lcom/snapchat/android/model/ReceivedSnap;
    .locals 46
    .parameter

    .prologue
    .line 283
    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->a:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 284
    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->b:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 285
    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->p:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 286
    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->c:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 287
    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->d:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_0

    const/4 v11, 0x1

    .line 288
    :goto_0
    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->e:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 289
    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->f:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 291
    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->l:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_1

    const/16 v17, 0x1

    .line 292
    :goto_1
    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->g:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v14

    .line 293
    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->h:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 294
    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->i:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 296
    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->j:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v20

    .line 298
    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->n:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 299
    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->v:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 301
    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->r:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 302
    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->s:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 303
    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->t:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 304
    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->u:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v2, v0, :cond_2

    const/16 v44, 0x1

    .line 305
    :goto_2
    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->m:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v2, v0, :cond_3

    const/4 v2, 0x1

    move/from16 v23, v2

    .line 309
    :goto_3
    if-nez v43, :cond_4

    .line 310
    new-instance v2, Lcom/snapchat/android/model/ReceivedSnap;

    invoke-static {v12}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->a(Ljava/lang/String;)Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v12

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-direct/range {v2 .. v22}, Lcom/snapchat/android/model/ReceivedSnap;-><init>(Ljava/lang/String;JJJIZLcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;DLjava/lang/String;ZJDLjava/lang/String;)V

    .line 318
    :goto_4
    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/snapchat/android/model/ReceivedSnap;->a(Z)V

    .line 319
    return-object v2

    .line 287
    :cond_0
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 291
    :cond_1
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 304
    :cond_2
    const/16 v44, 0x0

    goto :goto_2

    .line 305
    :cond_3
    const/4 v2, 0x0

    move/from16 v23, v2

    goto :goto_3

    .line 314
    :cond_4
    new-instance v24, Lcom/snapchat/android/model/BroadcastSnap;

    invoke-static {v12}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->a(Ljava/lang/String;)Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v32

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v37, v0

    move-object/from16 v25, v3

    move-wide/from16 v26, v4

    move-wide/from16 v28, v6

    move/from16 v30, v10

    move/from16 v31, v11

    move-object/from16 v33, v13

    move-wide/from16 v34, v14

    move-object/from16 v36, v16

    move-wide/from16 v39, v20

    move-object/from16 v45, v22

    invoke-direct/range {v24 .. v45}, Lcom/snapchat/android/model/BroadcastSnap;-><init>(Ljava/lang/String;JJIZLcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;DLjava/lang/String;JDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v2, v24

    goto :goto_4
.end method

.method public static declared-synchronized b()Lcom/snapchat/android/database/table/ReceivedSnapTable;
    .locals 2

    .prologue
    .line 57
    const-class v1, Lcom/snapchat/android/database/table/ReceivedSnapTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable;->b:Lcom/snapchat/android/database/table/ReceivedSnapTable;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/snapchat/android/database/table/ReceivedSnapTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable;->b:Lcom/snapchat/android/database/table/ReceivedSnapTable;

    .line 60
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable;->b:Lcom/snapchat/android/database/table/ReceivedSnapTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/model/ReceivedSnap;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 31
    check-cast p1, Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/table/ReceivedSnapTable;->a(Lcom/snapchat/android/model/ReceivedSnap;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "ReceivedSnaps"

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/Map;
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

    .line 247
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 249
    const-string v1, "ReceivedSnaps"

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable;->a:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 253
    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->q:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->b()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Lcom/snapchat/android/model/Snap$TargetView;->CHAT:Lcom/snapchat/android/model/Snap$TargetView;

    .line 259
    :goto_0
    if-eqz p2, :cond_5

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 274
    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 277
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 279
    :cond_3
    return-object v8

    .line 256
    :cond_4
    :try_start_1
    invoke-static {v0}, Lcom/snapchat/android/model/Snap$TargetView;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/Snap$TargetView;

    move-result-object v0

    goto :goto_0

    .line 263
    :cond_5
    invoke-direct {p0, v1}, Lcom/snapchat/android/database/table/ReceivedSnapTable;->a(Landroid/database/Cursor;)Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v2

    .line 264
    if-eqz v2, :cond_1

    .line 266
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->o:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->b()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 268
    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 269
    if-nez v0, :cond_6

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    :cond_6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-interface {v8, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 277
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method public a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/Snap$TargetView;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 198
    if-eqz p4, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 203
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->a:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->b:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lcom/snapchat/android/model/ReceivedSnap;->af()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 205
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->p:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lcom/snapchat/android/model/ReceivedSnap;->ae()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 206
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->h:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lcom/snapchat/android/model/ReceivedSnap;->ab()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->j:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lcom/snapchat/android/model/ReceivedSnap;->ad()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 208
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->i:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lcom/snapchat/android/model/ReceivedSnap;->ac()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 210
    invoke-virtual {p4}, Lcom/snapchat/android/model/ReceivedSnap;->l()Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, ""

    .line 212
    :cond_2
    sget-object v4, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->f:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->c:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lcom/snapchat/android/model/ReceivedSnap;->ao()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->d:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lcom/snapchat/android/model/ReceivedSnap;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->e:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lcom/snapchat/android/model/ReceivedSnap;->al()Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->l:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lcom/snapchat/android/model/ReceivedSnap;->H()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 218
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->g:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lcom/snapchat/android/model/ReceivedSnap;->M()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 219
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->k:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lcom/snapchat/android/model/ReceivedSnap;->D()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->m:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lcom/snapchat/android/model/ReceivedSnap;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->o:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->q:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5}, Lcom/snapchat/android/model/Snap$TargetView;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->n:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lcom/snapchat/android/model/ReceivedSnap;->L()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 225
    invoke-virtual {p4}, Lcom/snapchat/android/model/ReceivedSnap;->O()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 226
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->v:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lcom/snapchat/android/model/ReceivedSnap;->O()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_3
    instance-of v0, p4, Lcom/snapchat/android/model/BroadcastSnap;

    if-eqz v0, :cond_4

    .line 230
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->r:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v4

    move-object v0, p4

    check-cast v0, Lcom/snapchat/android/model/BroadcastSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/BroadcastSnap;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->s:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v4

    move-object v0, p4

    check-cast v0, Lcom/snapchat/android/model/BroadcastSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/BroadcastSnap;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->t:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v4

    move-object v0, p4

    check-cast v0, Lcom/snapchat/android/model/BroadcastSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/BroadcastSnap;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->u:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->c()Ljava/lang/String;

    move-result-object v0

    check-cast p4, Lcom/snapchat/android/model/BroadcastSnap;

    invoke-virtual {p4}, Lcom/snapchat/android/model/BroadcastSnap;->h()Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    :cond_4
    const-string v0, "ReceivedSnaps"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {p2, v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 215
    goto/16 :goto_1

    :cond_6
    move v0, v2

    .line 217
    goto/16 :goto_2

    :cond_7
    move v0, v2

    .line 219
    goto/16 :goto_3

    :cond_8
    move v0, v2

    .line 220
    goto/16 :goto_4

    :cond_9
    move v1, v2

    .line 233
    goto :goto_5
.end method

.method public a(Lcom/snapchat/android/model/User;)V
    .locals 0
    .parameter

    .prologue
    .line 114
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
            "Lcom/snapchat/android/model/ReceivedSnap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 7

    .prologue
    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    invoke-static {}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->values()[Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    move-result-object v2

    .line 77
    array-length v3, v2

    .line 78
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 79
    aget-object v4, v2, v0

    .line 80
    if-lez v0, :cond_0

    .line 81
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->a(Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->b(Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v4}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->d()Ljava/lang/String;

    move-result-object v4

    .line 85
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 86
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()[Lcom/snapchat/android/database/schema/Schema;
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->values()[Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method
