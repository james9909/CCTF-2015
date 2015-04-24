.class public Lcom/snapchat/android/discover/model/database/table/EditionTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Ljava/lang/Object;",
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

.field private static e:Lcom/snapchat/android/discover/model/database/table/EditionTable;


# instance fields
.field private final f:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;

.field private final g:Lcom/snapchat/android/util/system/Clock;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 60
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->values()[Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    move-result-object v1

    .line 61
    array-length v2, v1

    .line 62
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionTable;->a:[Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionTable;->b:Ljava/util/HashMap;

    .line 64
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 65
    aget-object v3, v1, v0

    .line 66
    sget-object v4, Lcom/snapchat/android/discover/model/database/table/EditionTable;->a:[Ljava/lang/String;

    aget-object v5, v1, v0

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 67
    sget-object v4, Lcom/snapchat/android/discover/model/database/table/EditionTable;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/snapchat/android/util/system/Clock;

    invoke-direct {v0}, Lcom/snapchat/android/util/system/Clock;-><init>()V

    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;->b()Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/discover/model/database/table/EditionTable;-><init>(Lcom/snapchat/android/util/system/Clock;Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;)V

    .line 50
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/util/system/Clock;Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/snapchat/android/discover/model/database/table/EditionTable;->g:Lcom/snapchat/android/util/system/Clock;

    .line 55
    iput-object p2, p0, Lcom/snapchat/android/discover/model/database/table/EditionTable;->f:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;

    .line 56
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/snapchat/android/database/schema/Schema;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lcom/snapchat/android/database/schema/Schema;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    .line 283
    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 284
    return-void
.end method

.method public static declared-synchronized b()Lcom/snapchat/android/discover/model/database/table/EditionTable;
    .locals 2

    .prologue
    .line 108
    const-class v1, Lcom/snapchat/android/discover/model/database/table/EditionTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/EditionTable;->e:Lcom/snapchat/android/discover/model/database/table/EditionTable;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionTable;

    invoke-direct {v0}, Lcom/snapchat/android/discover/model/database/table/EditionTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionTable;->e:Lcom/snapchat/android/discover/model/database/table/EditionTable;

    .line 111
    :cond_0
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/EditionTable;->e:Lcom/snapchat/android/discover/model/database/table/EditionTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string v0, "Edition"

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 231
    invoke-static {p1}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 232
    const-string v0, "EditionTable"

    const-string v2, "safeUpdate - beginTransaction"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 236
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 237
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 240
    const-string v0, "EditionTable"

    const-string v1, "safeUpdate - endTransaction"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->b(Landroid/content/Context;)V

    .line 244
    return-void

    .line 239
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 240
    const-string v1, "EditionTable"

    const-string v2, "safeUpdate - endTransaction"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method protected a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/data/gson/discover/EditionChunkResponse;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 189
    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    .line 224
    :cond_0
    return-void

    .line 193
    :cond_1
    new-instance v2, Lcom/snapchat/android/database/table/ContentValuesBuilder;

    invoke-direct {v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;-><init>()V

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->a:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-virtual {v2, v3, p4}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->b:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-virtual {v2, v3, p3}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->c:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    iget-object v4, p0, Lcom/snapchat/android/discover/model/database/table/EditionTable;->g:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v4}, Lcom/snapchat/android/util/system/Clock;->a()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;J)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->d:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-virtual {v2, v3, v1}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Z)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a()Landroid/content/ContentValues;

    move-result-object v2

    .line 200
    const-string v3, "Edition"

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 202
    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 203
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Insertion in DB failed for Edition"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_2
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    move v6, v0

    move v3, v0

    move v0, v1

    .line 211
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_0

    .line 212
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/data/gson/discover/EditionChunkResponse;

    .line 213
    if-eqz v2, :cond_4

    .line 214
    invoke-virtual {v2}, Lcom/snapchat/data/gson/discover/EditionChunkResponse;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 216
    invoke-virtual {v2}, Lcom/snapchat/data/gson/discover/EditionChunkResponse;->e()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    move v4, v0

    move v7, v1

    .line 217
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/EditionTable;->f:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;

    move-object v1, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/snapchat/data/gson/discover/EditionChunkResponse;IILjava/lang/String;)V

    .line 219
    invoke-virtual {v2}, Lcom/snapchat/data/gson/discover/EditionChunkResponse;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 220
    add-int/lit8 v3, v3, 0x1

    move v1, v7

    .line 211
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v0, v1

    goto :goto_0

    .line 216
    :cond_3
    const/4 v4, -0x1

    move v7, v0

    goto :goto_1

    :cond_4
    move v1, v0

    goto :goto_2
.end method

.method public a(Lcom/snapchat/android/model/User;)V
    .locals 0
    .parameter

    .prologue
    .line 157
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
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 290
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 291
    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 292
    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 293
    return-void
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 180
    new-instance v0, Lcom/snapchat/android/database/table/ContentValuesBuilder;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/ContentValuesBuilder;-><init>()V

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->d:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Z)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a()Landroid/content/ContentValues;

    move-result-object v2

    .line 181
    const-string v1, "Edition"

    const/4 v5, 0x5

    move-object v0, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    .line 182
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 7

    .prologue
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->values()[Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    move-result-object v2

    .line 128
    array-length v3, v2

    .line 129
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 130
    aget-object v4, v2, v0

    .line 131
    if-lez v0, :cond_0

    .line 132
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->a(Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->b(Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->d()Ljava/lang/String;

    move-result-object v4

    .line 136
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 137
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter

    .prologue
    .line 248
    const-string v0, "EditionTable"

    const-string v1, "Deleting the tables for editions, edition chunks, dsnaps, dsnap items"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    const-string v0, "Edition"

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->b:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    const-string v2, "PublisherChannel"

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->a:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/database/SqlHelper;->a(Ljava/lang/String;Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;Lcom/snapchat/android/database/schema/Schema;)Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 258
    const-string v0, "Edition"

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->d:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-direct {p0, p1, v0, v1}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/snapchat/android/database/schema/Schema;)V

    .line 261
    const-string v0, "EditionChunk"

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->b:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    const-string v2, "Edition"

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->a:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/database/SqlHelper;->a(Ljava/lang/String;Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;Lcom/snapchat/android/database/schema/Schema;)Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 267
    const-string v0, "EditionChunk"

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->i:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-direct {p0, p1, v0, v1}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/snapchat/android/database/schema/Schema;)V

    .line 270
    const-string v0, "DSnap"

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->a:Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;

    const-string v2, "EditionChunk"

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->d:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/database/SqlHelper;->a(Ljava/lang/String;Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;Lcom/snapchat/android/database/schema/Schema;)Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 275
    const-string v0, "DSnapItem"

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->j:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    const-string v2, "DSnap"

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->a:Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/database/SqlHelper;->a(Ljava/lang/String;Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;Lcom/snapchat/android/database/schema/Schema;)Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public c(Lcom/snapchat/android/model/User;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    return-void
.end method

.method public d()[Lcom/snapchat/android/database/schema/Schema;
    .locals 1

    .prologue
    .line 146
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->values()[Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    move-result-object v0

    return-object v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method
