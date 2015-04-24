.class public Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;",
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

.field private static final e:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;


# instance fields
.field private final f:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 38
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;

    invoke-direct {v0}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;->e:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;

    .line 53
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->values()[Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    move-result-object v1

    .line 54
    array-length v2, v1

    .line 55
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;->a:[Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;->b:Ljava/util/HashMap;

    .line 57
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 58
    aget-object v3, v1, v0

    .line 59
    sget-object v4, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;->a:[Ljava/lang/String;

    aget-object v5, v1, v0

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 60
    sget-object v4, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->c()Ljava/lang/String;

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

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;-><init>(Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;)V

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
    iput-object p1, p0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;->f:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    .line 49
    return-void
.end method

.method public static b()Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;->e:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;)Landroid/content/ContentValues;
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 202
    new-instance v0, Lcom/snapchat/android/database/table/ContentValuesBuilder;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/ContentValuesBuilder;-><init>()V

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->a:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->b:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;I)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->c:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;->c()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Z)Lcom/snapchat/android/database/table/ContentValuesBuilder;

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
    check-cast p1, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;->a(Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;
    .locals 4
    .parameter

    .prologue
    .line 232
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->a:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->b()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 233
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->b:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->b()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 234
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->c:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->b()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 235
    :goto_0
    new-instance v3, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;

    invoke-direct {v3}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;-><init>()V

    invoke-virtual {v3, v1}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->a(I)Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->a(Z)Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->a()Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;

    move-result-object v0

    return-object v0

    .line 234
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "EditionViewState"

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 160
    invoke-static {p1}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 161
    const-string v0, "EditionViewStateTable"

    const-string v2, "safeUpdate - beginTransaction"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 165
    :try_start_0
    const-string v0, "EditionViewStateTable"

    const-string v2, "Delete the table for EditionViewState"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    const-string v0, "EditionViewState"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;->f:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->b()Ljava/util/Collection;

    move-result-object v0

    .line 169
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;

    .line 170
    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 182
    const-string v1, "EditionViewStateTable"

    const-string v2, "safeUpdate - endTransaction"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 173
    :cond_0
    :try_start_1
    const-string v0, "EditionViewStateTable"

    const-string v2, "Remove redundant entries in EditionViewState"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    const-string v0, "EditionViewState"

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->a:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    const-string v3, "Edition"

    sget-object v4, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->a:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-static {v0, v2, v3, v4}, Lcom/snapchat/android/database/SqlHelper;->a(Ljava/lang/String;Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;Lcom/snapchat/android/database/schema/Schema;)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 182
    const-string v0, "EditionViewStateTable"

    const-string v1, "safeUpdate - endTransaction"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;)V
    .locals 4
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 187
    invoke-virtual {p0, p2}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;->a(Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;)Landroid/content/ContentValues;

    move-result-object v0

    .line 189
    if-nez v0, :cond_1

    .line 198
    :cond_0
    return-void

    .line 193
    :cond_1
    const-string v1, "EditionViewState"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    .line 195
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Insertion in DB failed for EditionViewState"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/snapchat/android/model/User;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 139
    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->I()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 141
    const-string v0, "EditionViewStateTable"

    const-string v2, "populateUserObjectFromTable - beginTransaction"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 145
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;->b(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    .line 147
    iget-object v2, p0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;->f:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 150
    const-string v0, "EditionViewStateTable"

    const-string v1, "populateUserObjectFromTable - endTransaction"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    return-void

    .line 149
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 150
    const-string v1, "EditionViewStateTable"

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
            "Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
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
            "Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 211
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 213
    const-string v1, "EditionViewState"

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;->a:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 217
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    :cond_0
    invoke-virtual {p0, v1}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;->a(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;

    move-result-object v0

    .line 220
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 224
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 227
    :cond_2
    return-object v8

    .line 224
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
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->values()[Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    move-result-object v2

    .line 111
    array-length v3, v2

    .line 112
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 113
    aget-object v4, v2, v0

    .line 114
    if-lez v0, :cond_0

    .line 115
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->a(Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->b(Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->d()Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-static {v4}, Lorg/apache/http/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 120
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/snapchat/android/model/User;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    return-void
.end method

.method public d()[Lcom/snapchat/android/database/schema/Schema;
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->values()[Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    move-result-object v0

    return-object v0
.end method
