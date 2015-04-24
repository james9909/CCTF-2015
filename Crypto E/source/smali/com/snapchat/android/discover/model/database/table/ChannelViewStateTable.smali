.class public Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$ChannelViewState;",
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

.field private static final e:Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;


# instance fields
.field private final f:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 38
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;

    invoke-direct {v0}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;->e:Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;

    .line 53
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;->values()[Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;

    move-result-object v1

    .line 54
    array-length v2, v1

    .line 55
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;->a:[Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;->b:Ljava/util/HashMap;

    .line 57
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 58
    aget-object v3, v1, v0

    .line 59
    sget-object v4, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;->a:[Ljava/lang/String;

    aget-object v5, v1, v0

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 60
    sget-object v4, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->a()Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;-><init>(Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;)V

    .line 45
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;->f:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    .line 49
    return-void
.end method

.method public static b()Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;->e:Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$ChannelViewState;)Landroid/content/ContentValues;
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 201
    new-instance v0, Lcom/snapchat/android/database/table/ContentValuesBuilder;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/ContentValuesBuilder;-><init>()V

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;->a:Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$ChannelViewState;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;->b:Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$ChannelViewState;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;J)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a()Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 32
    check-cast p1, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$ChannelViewState;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;->a(Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$ChannelViewState;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$ChannelViewState;
    .locals 4
    .parameter

    .prologue
    .line 231
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;->a:Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;->b()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 232
    sget-object v1, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;->b:Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 233
    new-instance v1, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$ChannelViewState;

    invoke-direct {v1, v0, v2, v3}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$ChannelViewState;-><init>(Ljava/lang/String;J)V

    return-object v1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string v0, "ChannelViewState"

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 159
    invoke-static {p1}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 160
    const-string v0, "ChannelViewStateTable"

    const-string v2, "safeUpdate - beginTransaction"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 164
    :try_start_0
    const-string v0, "ChannelViewStateTable"

    const-string v2, "Delete the table for ChannelViewState"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    const-string v0, "ChannelViewState"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;->f:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->c()Ljava/util/Collection;

    move-result-object v0

    .line 168
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$ChannelViewState;

    .line 169
    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$ChannelViewState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 181
    const-string v1, "ChannelViewStateTable"

    const-string v2, "safeUpdate - endTransaction"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 172
    :cond_0
    :try_start_1
    const-string v0, "ChannelViewStateTable"

    const-string v2, "Remove redundant entries in ChannelViewState"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    const-string v0, "ChannelViewState"

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;->a:Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;

    const-string v3, "PublisherChannel"

    sget-object v4, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->a:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-static {v0, v2, v3, v4}, Lcom/snapchat/android/database/SqlHelper;->a(Ljava/lang/String;Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;Lcom/snapchat/android/database/schema/Schema;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 181
    const-string v0, "ChannelViewStateTable"

    const-string v1, "safeUpdate - endTransaction"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$ChannelViewState;)V
    .locals 4
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 186
    invoke-virtual {p0, p2}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;->a(Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$ChannelViewState;)Landroid/content/ContentValues;

    move-result-object v0

    .line 188
    if-nez v0, :cond_1

    .line 197
    :cond_0
    return-void

    .line 192
    :cond_1
    const-string v1, "ChannelViewState"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    .line 194
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Insertion in DB failed for ChannelViewState"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/snapchat/android/model/User;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 138
    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->I()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 140
    const-string v0, "ChannelViewStateTable"

    const-string v2, "populateUserObjectFromTable - beginTransaction"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 144
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;->b(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    .line 146
    iget-object v2, p0, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;->f:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->b(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 149
    const-string v0, "ChannelViewStateTable"

    const-string v1, "populateUserObjectFromTable - endTransaction"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    return-void

    .line 148
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 149
    const-string v1, "ChannelViewStateTable"

    const-string v2, "populateUserObjectFromTable - endTransaction"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
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
            "Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$ChannelViewState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method protected b(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 9
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$ChannelViewState;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 210
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 212
    const-string v1, "ChannelViewState"

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;->a:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 216
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    :cond_0
    invoke-virtual {p0, v1}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;->a(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$ChannelViewState;

    move-result-object v0

    .line 219
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 223
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_2
    return-object v8

    .line 223
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public c()Ljava/lang/String;
    .locals 7

    .prologue
    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;->values()[Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;

    move-result-object v2

    .line 110
    array-length v3, v2

    .line 111
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 112
    aget-object v4, v2, v0

    .line 113
    if-lez v0, :cond_0

    .line 114
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;->a(Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;->b(Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;->d()Ljava/lang/String;

    move-result-object v4

    .line 118
    invoke-static {v4}, Lorg/apache/http/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 119
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/snapchat/android/model/User;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    return-void
.end method

.method public d()[Lcom/snapchat/android/database/schema/Schema;
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;->values()[Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;

    move-result-object v0

    return-object v0
.end method
