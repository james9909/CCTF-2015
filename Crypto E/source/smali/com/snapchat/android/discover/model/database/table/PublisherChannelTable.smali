.class public Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lcom/snapchat/data/gson/discover/ChannelResponse;",
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

.field private static e:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 46
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->values()[Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    move-result-object v1

    .line 47
    array-length v2, v1

    .line 48
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->a:[Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->b:Ljava/util/HashMap;

    .line 50
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 51
    aget-object v3, v1, v0

    .line 52
    sget-object v4, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->a:[Ljava/lang/String;

    aget-object v5, v1, v0

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 53
    sget-object v4, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    return-void
.end method

.method public static declared-synchronized b()Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;
    .locals 2

    .prologue
    .line 100
    const-class v1, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->e:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;

    invoke-direct {v0}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->e:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;

    .line 103
    :cond_0
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->e:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected a(Lcom/snapchat/data/gson/discover/ChannelResponse;)Landroid/content/ContentValues;
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/snapchat/android/database/table/ContentValuesBuilder;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/ContentValuesBuilder;-><init>()V

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->a:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {p1}, Lcom/snapchat/data/gson/discover/ChannelResponse;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->b:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {p1}, Lcom/snapchat/data/gson/discover/ChannelResponse;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->c:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {p1}, Lcom/snapchat/data/gson/discover/ChannelResponse;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->d:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {p1}, Lcom/snapchat/data/gson/discover/ChannelResponse;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->e:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {p1}, Lcom/snapchat/data/gson/discover/ChannelResponse;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->f:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {p1}, Lcom/snapchat/data/gson/discover/ChannelResponse;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->g:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {p1}, Lcom/snapchat/data/gson/discover/ChannelResponse;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->i:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {p1}, Lcom/snapchat/data/gson/discover/ChannelResponse;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Z)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a()Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 32
    check-cast p1, Lcom/snapchat/data/gson/discover/ChannelResponse;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->a(Lcom/snapchat/data/gson/discover/ChannelResponse;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string v0, "PublisherChannel"

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 246
    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 249
    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 250
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/snapchat/data/gson/discover/ChannelListResponse;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 175
    if-nez p2, :cond_1

    .line 176
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempt to initialize with null channel list response."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->a(Landroid/content/Context;)V

    .line 218
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-virtual {p2}, Lcom/snapchat/data/gson/discover/ChannelListResponse;->a()Ljava/util/List;

    move-result-object v3

    .line 184
    if-nez v3, :cond_3

    .line 185
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempt to initialize with null channel response list."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_2
    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 192
    :cond_3
    invoke-static {p1}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 193
    const-string v0, "PublisherChannelTable"

    const-string v1, "safeUpdate - beginTransaction"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 197
    :try_start_0
    const-string v0, "PublisherChannelTable"

    const-string v1, "Delete the tables for channels"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    const-string v0, "PublisherChannel"

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 203
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;->b()Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 204
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->b()Lcom/snapchat/android/discover/model/database/table/EditionTable;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    move v1, v2

    .line 206
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 207
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/data/gson/discover/ChannelResponse;

    invoke-virtual {p0, v4, v0, v1}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/snapchat/data/gson/discover/ChannelResponse;I)V

    .line 206
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 210
    :cond_4
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 214
    const-string v0, "PublisherChannelTable"

    const-string v1, "safeUpdate - endTransaction"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 214
    const-string v1, "PublisherChannelTable"

    const-string v3, "safeUpdate - endTransaction"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method protected a(Landroid/database/sqlite/SQLiteDatabase;Lcom/snapchat/data/gson/discover/ChannelResponse;I)V
    .locals 4
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 223
    invoke-virtual {p0, p2}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->a(Lcom/snapchat/data/gson/discover/ChannelResponse;)Landroid/content/ContentValues;

    move-result-object v0

    .line 224
    if-nez v0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    sget-object v1, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->h:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 229
    const-string v1, "PublisherChannel"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    .line 231
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 232
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Insertion in DB failed for PublisherChannel"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_2
    if-eqz p2, :cond_0

    .line 236
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->b()Lcom/snapchat/android/discover/model/database/table/EditionTable;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snapchat/data/gson/discover/ChannelResponse;->i()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Lcom/snapchat/data/gson/discover/ChannelResponse;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/snapchat/data/gson/discover/ChannelResponse;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/User;)V
    .locals 0
    .parameter

    .prologue
    .line 149
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
            "Lcom/snapchat/data/gson/discover/ChannelResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 7

    .prologue
    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->values()[Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    move-result-object v2

    .line 120
    array-length v3, v2

    .line 121
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 122
    aget-object v4, v2, v0

    .line 123
    if-lez v0, :cond_0

    .line 124
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->a(Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->b(Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->d()Ljava/lang/String;

    move-result-object v4

    .line 128
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 129
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/snapchat/android/model/User;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    return-void
.end method

.method public d()[Lcom/snapchat/android/database/schema/Schema;
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->values()[Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    move-result-object v0

    return-object v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method
