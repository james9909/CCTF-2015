.class public Lcom/snapchat/android/database/table/HttpMetricsTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


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

.field private static e:Lcom/snapchat/android/database/table/HttpMetricsTable;

.field private static final f:Lcom/snapchat/android/service/SnapchatServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v1

    sput-object v1, Lcom/snapchat/android/database/table/HttpMetricsTable;->f:Lcom/snapchat/android/service/SnapchatServiceManager;

    .line 39
    invoke-static {}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->values()[Lcom/snapchat/android/database/schema/HttpMetricSchema;

    move-result-object v2

    .line 40
    array-length v3, v2

    .line 41
    new-array v1, v3, [Ljava/lang/String;

    sput-object v1, Lcom/snapchat/android/database/table/HttpMetricsTable;->a:[Ljava/lang/String;

    move v1, v0

    .line 42
    :goto_0
    if-ge v1, v3, :cond_0

    .line 43
    sget-object v4, Lcom/snapchat/android/database/table/HttpMetricsTable;->a:[Ljava/lang/String;

    aget-object v5, v2, v1

    invoke-virtual {v5}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/snapchat/android/database/table/HttpMetricsTable;->b:Ljava/util/HashMap;

    .line 48
    invoke-static {}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->values()[Lcom/snapchat/android/database/schema/HttpMetricSchema;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 49
    sget-object v4, Lcom/snapchat/android/database/table/HttpMetricsTable;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 51
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/ContentValues;)J
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 157
    invoke-static {p0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 158
    const-string v1, "HttpMetricsTable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    const-string v1, "HttpMetrics"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v8, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 162
    invoke-static {v0}, Lcom/snapchat/android/database/table/HttpMetricsTable;->b(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v4

    const-wide/16 v6, 0xc8

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 163
    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/snapchat/android/database/table/HttpMetricsTable;->a(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 166
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 167
    return-wide v2
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 198
    sget-object v0, Lcom/snapchat/android/database/table/HttpMetricsTable;->f:Lcom/snapchat/android/service/SnapchatServiceManager;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/service/SnapchatServiceManager;->e(Landroid/content/Context;)I

    .line 199
    return-void
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JJJLjava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Lcom/snapchat/android/database/table/ContentValuesBuilder;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/ContentValuesBuilder;-><init>()V

    sget-object v1, Lcom/snapchat/android/database/schema/HttpMetricSchema;->b:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v0, v1, p1, p2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;J)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/schema/HttpMetricSchema;->c:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v0, v1, p3}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/schema/HttpMetricSchema;->d:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v0, v1, p4}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/schema/HttpMetricSchema;->e:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v0, v1, p5, p6}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;J)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/schema/HttpMetricSchema;->f:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v0, v1, p7, p8}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;J)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/schema/HttpMetricSchema;->g:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v0, v1, p9, p10}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;J)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/schema/HttpMetricSchema;->h:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v0, v1, p11}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/schema/HttpMetricSchema;->i:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v0, v1, p12}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;I)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a()Landroid/content/ContentValues;

    move-result-object v0

    .line 152
    sget-object v1, Lcom/snapchat/android/database/table/HttpMetricsTable;->f:Lcom/snapchat/android/service/SnapchatServiceManager;

    invoke-virtual {v1, p0, v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->a(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 154
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v10, p5

    move-object/from16 v12, p7

    invoke-static/range {v1 .. v13}, Lcom/snapchat/android/database/table/HttpMetricsTable;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JJJLjava/lang/String;I)V

    .line 138
    :cond_0
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 176
    const-string v1, "HttpMetrics"

    new-array v2, v0, [Ljava/lang/String;

    sget-object v0, Lcom/snapchat/android/database/schema/HttpMetricSchema;->b:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    sget-object v0, Lcom/snapchat/android/database/schema/HttpMetricSchema;->b:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 185
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 187
    const-string v0, "HttpMetrics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/snapchat/android/database/schema/HttpMetricSchema;->b:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v5}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " <=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {p0, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :cond_0
    if-eqz v1, :cond_1

    .line 192
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 195
    :cond_1
    return-void

    .line 191
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 192
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 2
    .parameter

    .prologue
    .line 171
    const-string v0, "SELECT COUNT() FROM HttpMetrics"

    .line 172
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized b()Lcom/snapchat/android/database/table/HttpMetricsTable;
    .locals 2

    .prologue
    .line 54
    const-class v1, Lcom/snapchat/android/database/table/HttpMetricsTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/table/HttpMetricsTable;->e:Lcom/snapchat/android/database/table/HttpMetricsTable;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/snapchat/android/database/table/HttpMetricsTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/HttpMetricsTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/HttpMetricsTable;->e:Lcom/snapchat/android/database/table/HttpMetricsTable;

    .line 57
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/HttpMetricsTable;->e:Lcom/snapchat/android/database/table/HttpMetricsTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 202
    invoke-static {p0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 203
    const-string v1, "HttpMetrics"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 205
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Landroid/database/Cursor;)Lcom/snapchat/android/model/Snap;
    .locals 1
    .parameter

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "HttpMetrics"

    return-object v0
.end method

.method public a(Lcom/snapchat/android/model/User;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    return-void
.end method

.method protected synthetic b(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/table/HttpMetricsTable;->a(Landroid/database/Cursor;)Lcom/snapchat/android/model/Snap;

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
            "Lcom/snapchat/android/model/Snap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 7

    .prologue
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    invoke-static {}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->values()[Lcom/snapchat/android/database/schema/HttpMetricSchema;

    move-result-object v2

    .line 64
    array-length v3, v2

    .line 65
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 66
    aget-object v4, v2, v0

    .line 67
    if-lez v0, :cond_0

    .line 68
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->a()Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v4}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->d()Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 73
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/snapchat/android/model/User;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    return-void
.end method

.method public d()[Lcom/snapchat/android/database/schema/Schema;
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->values()[Lcom/snapchat/android/database/schema/HttpMetricSchema;

    move-result-object v0

    return-object v0
.end method
