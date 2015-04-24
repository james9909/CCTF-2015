.class public Lcom/snapchat/android/database/table/CashFeedItemTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lcom/snapchat/android/model/chat/CashFeedItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/lang/String;

.field private static f:Lcom/snapchat/android/database/table/CashFeedItemTable;

.field private static g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/chat/CashFeedItem;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/chat/CashFeedItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 41
    const-class v1, Lcom/snapchat/android/database/table/CashFeedItemTable;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/snapchat/android/database/table/CashFeedItemTable;->e:Ljava/lang/String;

    .line 50
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/snapchat/android/database/table/CashFeedItemTable;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/snapchat/android/database/table/CashFeedItemTable;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    invoke-static {}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->values()[Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    move-result-object v2

    .line 63
    array-length v3, v2

    .line 64
    new-array v1, v3, [Ljava/lang/String;

    sput-object v1, Lcom/snapchat/android/database/table/CashFeedItemTable;->a:[Ljava/lang/String;

    move v1, v0

    .line 65
    :goto_0
    if-ge v1, v3, :cond_0

    .line 66
    sget-object v4, Lcom/snapchat/android/database/table/CashFeedItemTable;->a:[Ljava/lang/String;

    aget-object v5, v2, v1

    invoke-virtual {v5}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/snapchat/android/database/table/CashFeedItemTable;->b:Ljava/util/HashMap;

    .line 71
    invoke-static {}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->values()[Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 72
    sget-object v4, Lcom/snapchat/android/database/table/CashFeedItemTable;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 74
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/Map;
    .locals 9
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
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

    .line 371
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 373
    const-string v1, "CashFeedItem"

    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable;->a:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 378
    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->t:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->b()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 381
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Lcom/snapchat/android/model/Snap$TargetView;->CHAT:Lcom/snapchat/android/model/Snap$TargetView;

    .line 384
    :goto_0
    if-eqz p1, :cond_5

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 398
    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 401
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 404
    :cond_3
    return-object v8

    .line 381
    :cond_4
    :try_start_1
    invoke-static {v0}, Lcom/snapchat/android/model/Snap$TargetView;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/Snap$TargetView;

    move-result-object v0

    goto :goto_0

    .line 388
    :cond_5
    invoke-static {v1}, Lcom/snapchat/android/database/table/CashFeedItemTable;->c(Landroid/database/Cursor;)Lcom/snapchat/android/model/chat/CashFeedItem;

    move-result-object v2

    .line 389
    if-eqz v2, :cond_1

    .line 390
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->I()Ljava/lang/String;

    move-result-object v3

    .line 391
    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 392
    if-nez v0, :cond_6

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 395
    :cond_6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    invoke-interface {v8, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 401
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 275
    invoke-static {p0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 276
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 278
    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable;->e:Ljava/lang/String;

    const-string v2, "CASH-LOG: Deleting all cash feed icons"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    const-string v0, "CashFeedItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->t:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/snapchat/android/model/Snap$TargetView;->FEED:Lcom/snapchat/android/model/Snap$TargetView;

    invoke-virtual {v5}, Lcom/snapchat/android/model/Snap$TargetView;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 282
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 286
    return-void

    .line 284
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/snapchat/android/model/chat/CashFeedItem;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 239
    const-class v1, Lcom/snapchat/android/database/table/CashFeedItemTable;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/snapchat/android/database/table/CashFeedItemTable$1;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/database/table/CashFeedItemTable$1;-><init>(Landroid/content/Context;Lcom/snapchat/android/model/chat/CashFeedItem;)V

    sget-object v2, Lcom/snapchat/android/util/ScExecutors;->g:Ljava/util/concurrent/ExecutorService;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/database/table/CashFeedItemTable$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit v1

    return-void

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/model/chat/CashFeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 210
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->h()Z

    move-result v2

    if-nez v2, :cond_0

    .line 211
    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 215
    :cond_1
    if-nez p0, :cond_2

    .line 222
    :goto_1
    return-void

    .line 221
    :cond_2
    invoke-static {p0}, Lcom/snapchat/android/database/table/CashFeedItemTable;->b(Landroid/content/Context;)V

    goto :goto_1
.end method

.method protected static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/model/Snap$TargetView;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 333
    if-nez p1, :cond_0

    .line 366
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v3

    .line 336
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 337
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->a:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->b:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->J()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->c:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->d:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->e:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->f:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->f()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 343
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->g:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->k()Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/snapchat/android/util/CashUtils$CurrencyCode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->h:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->ap()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->i:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 347
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->j:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 349
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->k:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 350
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->l:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->u()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 351
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->m:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->t()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 352
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->n:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->v()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 354
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->o:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->o()Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->p:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->m()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 356
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->q:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->n()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 357
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->r:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->i()Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 360
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->s:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->t:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snapchat/android/model/Snap$TargetView;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->u:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->K()Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->v:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v0, "CashFeedItem"

    const-string v1, "NULL"

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 346
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 347
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 349
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 350
    goto/16 :goto_4

    :cond_5
    move v1, v2

    .line 357
    goto :goto_5
.end method

.method public static declared-synchronized b()Lcom/snapchat/android/database/table/CashFeedItemTable;
    .locals 2

    .prologue
    .line 137
    const-class v1, Lcom/snapchat/android/database/table/CashFeedItemTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable;->f:Lcom/snapchat/android/database/table/CashFeedItemTable;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/snapchat/android/database/table/CashFeedItemTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable;->f:Lcom/snapchat/android/database/table/CashFeedItemTable;

    .line 140
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable;->f:Lcom/snapchat/android/database/table/CashFeedItemTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 289
    const-class v1, Lcom/snapchat/android/database/table/CashFeedItemTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    :goto_0
    monitor-exit v1

    return-void

    .line 293
    :cond_0
    :try_start_1
    new-instance v0, Lcom/snapchat/android/database/table/CashFeedItemTable$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/database/table/CashFeedItemTable$2;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/snapchat/android/util/ScExecutors;->g:Ljava/util/concurrent/ExecutorService;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/database/table/CashFeedItemTable$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/model/chat/CashFeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 226
    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 229
    :cond_0
    if-nez p0, :cond_1

    .line 236
    :goto_1
    return-void

    .line 235
    :cond_1
    invoke-static {p0}, Lcom/snapchat/android/database/table/CashFeedItemTable;->b(Landroid/content/Context;)V

    goto :goto_1
.end method

.method private static c(Landroid/database/Cursor;)Lcom/snapchat/android/model/chat/CashFeedItem;
    .locals 26
    .parameter

    .prologue
    .line 408
    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->a:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 409
    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->c:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 410
    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->b:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 411
    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->e:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 412
    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->d:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 413
    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->h:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 414
    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->f:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 415
    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->g:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 416
    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->p:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 417
    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->q:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 418
    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->o:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 419
    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->u:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 420
    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->v:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 421
    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->r:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    .line 424
    :goto_0
    sget-object v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->i:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->b()I

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    .line 426
    :goto_1
    sget-object v4, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->j:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->b()I

    move-result v4

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    .line 429
    :goto_2
    sget-object v5, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->k:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v5}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->b()I

    move-result v5

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    .line 431
    :goto_3
    sget-object v6, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->l:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v6}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->b()I

    move-result v6

    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v6, v0, :cond_5

    const/4 v6, 0x1

    .line 434
    :goto_4
    sget-object v22, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->m:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual/range {v22 .. v22}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->b()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 436
    sget-object v23, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->n:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual/range {v23 .. v23}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->b()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 438
    sget-object v24, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->s:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual/range {v24 .. v24}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->b()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 440
    new-instance v25, Lcom/snapchat/android/model/CashTransaction$Builder;

    move-object/from16 v0, v25

    invoke-direct {v0, v8, v9, v13}, Lcom/snapchat/android/model/CashTransaction$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 441
    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lcom/snapchat/android/model/CashTransaction$Builder;->c(Ljava/lang/String;)Lcom/snapchat/android/model/CashTransaction$Builder;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/snapchat/android/model/CashTransaction$Builder;->e(Ljava/lang/String;)Lcom/snapchat/android/model/CashTransaction$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/snapchat/android/model/CashTransaction$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/model/CashTransaction$Builder;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/snapchat/android/model/CashTransaction$Builder;->b(Ljava/lang/String;)Lcom/snapchat/android/model/CashTransaction$Builder;

    move-result-object v7

    invoke-static {v14}, Lcom/snapchat/android/util/CashUtils$CurrencyCode;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/snapchat/android/model/CashTransaction$Builder;->a(Lcom/snapchat/android/util/CashUtils$CurrencyCode;)Lcom/snapchat/android/model/CashTransaction$Builder;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/snapchat/android/model/CashTransaction$Builder;->d(Ljava/lang/String;)Lcom/snapchat/android/model/CashTransaction$Builder;

    move-result-object v7

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Lcom/snapchat/android/model/CashTransaction$Builder;->b(J)Lcom/snapchat/android/model/CashTransaction$Builder;

    move-result-object v7

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Lcom/snapchat/android/model/CashTransaction$Builder;->a(J)Lcom/snapchat/android/model/CashTransaction$Builder;

    move-result-object v7

    invoke-static {v15}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/snapchat/android/model/CashTransaction$Builder;->a(Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)Lcom/snapchat/android/model/CashTransaction$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/snapchat/android/model/CashTransaction$Builder;->b(Z)Lcom/snapchat/android/model/CashTransaction$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction$Builder;->a()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v2

    .line 453
    invoke-virtual {v2, v3}, Lcom/snapchat/android/model/CashTransaction;->c(Z)V

    .line 454
    invoke-virtual {v2, v4}, Lcom/snapchat/android/model/CashTransaction;->d(Z)V

    .line 455
    invoke-virtual {v2, v5}, Lcom/snapchat/android/model/CashTransaction;->e(Z)V

    .line 456
    invoke-virtual {v2, v6}, Lcom/snapchat/android/model/CashTransaction;->f(Z)V

    .line 457
    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/snapchat/android/model/CashTransaction;->b(I)V

    .line 458
    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/snapchat/android/model/CashTransaction;->c(I)V

    .line 460
    new-instance v3, Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-direct {v3, v2}, Lcom/snapchat/android/model/chat/CashFeedItem;-><init>(Lcom/snapchat/android/model/CashTransaction;)V

    .line 461
    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/lang/String;)V

    .line 462
    invoke-static/range {v20 .. v20}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    move-result-object v2

    .line 468
    sget-object v4, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENDING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {v2, v4}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 469
    sget-object v2, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 473
    :cond_0
    :goto_5
    invoke-virtual {v3, v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    .line 474
    return-object v3

    .line 421
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 424
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 426
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 429
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 431
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 470
    :cond_6
    sget-object v4, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {v2, v4}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 471
    sget-object v2, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    goto :goto_5
.end method

.method static synthetic f()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable;->g:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable;->h:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/model/chat/CashFeedItem;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 204
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 40
    check-cast p1, Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/table/CashFeedItemTable;->a(Lcom/snapchat/android/model/chat/CashFeedItem;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/database/Cursor;)Lcom/snapchat/android/model/chat/CashFeedItem;
    .locals 1
    .parameter

    .prologue
    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    const-string v0, "CashFeedItem"

    return-object v0
.end method

.method public a(Lcom/snapchat/android/model/User;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    return-void
.end method

.method protected synthetic b(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/table/CashFeedItemTable;->a(Landroid/database/Cursor;)Lcom/snapchat/android/model/chat/CashFeedItem;

    move-result-object v0

    return-object v0
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
            "Lcom/snapchat/android/model/chat/CashFeedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 7

    .prologue
    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    invoke-static {}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->values()[Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    move-result-object v2

    .line 152
    array-length v3, v2

    .line 153
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 154
    aget-object v4, v2, v0

    .line 155
    if-lez v0, :cond_0

    .line 156
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->a(Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->b(Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v4}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->d()Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 161
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()[Lcom/snapchat/android/database/schema/Schema;
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->values()[Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x1

    return v0
.end method
