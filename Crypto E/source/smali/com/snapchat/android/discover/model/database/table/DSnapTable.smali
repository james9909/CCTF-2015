.class public Lcom/snapchat/android/discover/model/database/table/DSnapTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lcom/snapchat/data/gson/rich_story/RichStorySectionResponse;",
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

.field private static e:Lcom/snapchat/android/discover/model/database/table/DSnapTable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 52
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->values()[Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;

    move-result-object v1

    .line 53
    array-length v2, v1

    .line 54
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapTable;->a:[Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapTable;->b:Ljava/util/HashMap;

    .line 56
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 57
    aget-object v3, v1, v0

    .line 58
    sget-object v4, Lcom/snapchat/android/discover/model/database/table/DSnapTable;->a:[Ljava/lang/String;

    aget-object v5, v1, v0

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 59
    sget-object v4, Lcom/snapchat/android/discover/model/database/table/DSnapTable;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 228
    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 229
    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 230
    return-void
.end method

.method public static declared-synchronized b()Lcom/snapchat/android/discover/model/database/table/DSnapTable;
    .locals 2

    .prologue
    .line 97
    const-class v1, Lcom/snapchat/android/discover/model/database/table/DSnapTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapTable;->e:Lcom/snapchat/android/discover/model/database/table/DSnapTable;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/DSnapTable;

    invoke-direct {v0}, Lcom/snapchat/android/discover/model/database/table/DSnapTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapTable;->e:Lcom/snapchat/android/discover/model/database/table/DSnapTable;

    .line 100
    :cond_0
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapTable;->e:Lcom/snapchat/android/discover/model/database/table/DSnapTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected a(Lcom/snapchat/data/gson/rich_story/RichStorySectionResponse;)Landroid/content/ContentValues;
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 151
    const/4 v0, 0x0

    .line 154
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/snapchat/android/database/table/ContentValuesBuilder;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/ContentValuesBuilder;-><init>()V

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->b:Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;

    invoke-virtual {p1}, Lcom/snapchat/data/gson/rich_story/RichStorySectionResponse;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a()Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 38
    check-cast p1, Lcom/snapchat/data/gson/rich_story/RichStorySectionResponse;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/model/database/table/DSnapTable;->a(Lcom/snapchat/data/gson/rich_story/RichStorySectionResponse;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string v0, "DSnap"

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/snapchat/data/gson/rich_story/RichStoryMetadataResponse;)V
    .locals 6
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v2, 0x0

    .line 166
    if-nez p3, :cond_0

    .line 167
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempt to initialize with null metadata response."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    invoke-virtual {p3}, Lcom/snapchat/data/gson/rich_story/RichStoryMetadataResponse;->a()Ljava/util/List;

    move-result-object v3

    .line 174
    if-nez v3, :cond_1

    .line 175
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempt to initialize with null chunk metadata section list."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_1
    invoke-static {p1}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 182
    const-string v0, "DSnapTable"

    const-string v1, "safeUpdate - beginTransaction"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move v1, v2

    .line 187
    :goto_0
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 188
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/data/gson/rich_story/RichStorySectionResponse;

    .line 189
    invoke-virtual {p0, v4, p2, v0}, Lcom/snapchat/android/discover/model/database/table/DSnapTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/snapchat/data/gson/rich_story/RichStorySectionResponse;)V

    .line 187
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 191
    :cond_2
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/model/database/table/DSnapTable;->a(Landroid/content/Context;)V

    .line 193
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 196
    const-string v0, "DSnapTable"

    const-string v1, "safeUpdate - endTransaction"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->c:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 199
    :cond_3
    return-void

    .line 195
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 196
    const-string v1, "DSnapTable"

    const-string v3, "safeUpdate - endTransaction"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method protected a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/snapchat/data/gson/rich_story/RichStorySectionResponse;)V
    .locals 4
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 204
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/snapchat/data/gson/rich_story/RichStorySectionResponse;->b()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 224
    :cond_0
    return-void

    .line 208
    :cond_1
    invoke-virtual {p0, p3}, Lcom/snapchat/android/discover/model/database/table/DSnapTable;->a(Lcom/snapchat/data/gson/rich_story/RichStorySectionResponse;)Landroid/content/ContentValues;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_0

    .line 213
    sget-object v1, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->a:Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v1, "DSnap"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    .line 217
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 218
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Insertion in DB failed for DSnap"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_2
    invoke-virtual {p3}, Lcom/snapchat/data/gson/rich_story/RichStorySectionResponse;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/data/gson/rich_story/RichStoryChannelResponse;

    .line 222
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;->b()Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/snapchat/data/gson/rich_story/RichStoryChannelResponse;)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/User;)V
    .locals 0
    .parameter

    .prologue
    .line 146
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
            "Lcom/snapchat/data/gson/rich_story/RichStorySectionResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 7

    .prologue
    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->values()[Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;

    move-result-object v2

    .line 117
    array-length v3, v2

    .line 118
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 119
    aget-object v4, v2, v0

    .line 120
    if-lez v0, :cond_0

    .line 121
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->a(Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->b(Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->d()Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-static {v4}, Lorg/apache/http/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 126
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/snapchat/android/model/User;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    return-void
.end method

.method public d()[Lcom/snapchat/android/database/schema/Schema;
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->values()[Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;

    move-result-object v0

    return-object v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method
