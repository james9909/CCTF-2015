.class public Lcom/snapchat/android/database/table/ClearedChatIdsTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Ljava/lang/String;",
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

.field private static e:Lcom/snapchat/android/database/table/ClearedChatIdsTable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-static {}, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->values()[Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;

    move-result-object v2

    .line 44
    array-length v3, v2

    .line 45
    new-array v1, v3, [Ljava/lang/String;

    sput-object v1, Lcom/snapchat/android/database/table/ClearedChatIdsTable;->a:[Ljava/lang/String;

    move v1, v0

    .line 46
    :goto_0
    if-ge v1, v3, :cond_0

    .line 47
    sget-object v4, Lcom/snapchat/android/database/table/ClearedChatIdsTable;->a:[Ljava/lang/String;

    aget-object v5, v2, v1

    invoke-virtual {v5}, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/snapchat/android/database/table/ClearedChatIdsTable;->b:Ljava/util/HashMap;

    .line 52
    invoke-static {}, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->values()[Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 53
    sget-object v4, Lcom/snapchat/android/database/table/ClearedChatIdsTable;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 55
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;
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
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 133
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 135
    if-nez p1, :cond_0

    move-object v0, v8

    .line 152
    :goto_0
    return-object v0

    .line 137
    :cond_0
    const-string v1, "ClearedChatIdsTable"

    sget-object v2, Lcom/snapchat/android/database/table/ClearedChatIdsTable;->a:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->b:Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " =? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 142
    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    :cond_1
    sget-object v0, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->a:Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->b()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 149
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v8

    .line 152
    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    .line 107
    invoke-static {p0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v2, v4

    .line 109
    if-eqz v0, :cond_0

    .line 110
    const-string v1, "ClearedChatIdsTable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->c:Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;

    invoke-virtual {v5}, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " <? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v0, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 113
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 116
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/snapchat/android/database/table/ClearedChatIdsTable$2;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/database/table/ClearedChatIdsTable$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 122
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/snapchat/android/database/table/ClearedChatIdsTable$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/snapchat/android/database/table/ClearedChatIdsTable$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 72
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 80
    sget-object v1, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->a:Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object v1, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->b:Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v1, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->c:Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 83
    const-string v1, "ClearedChatIdsTable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-static {p0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 86
    if-eqz v1, :cond_0

    .line 87
    const-string v2, "ClearedChatIdsTable"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 89
    :cond_0
    return-void
.end method

.method public static declared-synchronized b()Lcom/snapchat/android/database/table/ClearedChatIdsTable;
    .locals 2

    .prologue
    .line 58
    const-class v1, Lcom/snapchat/android/database/table/ClearedChatIdsTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/table/ClearedChatIdsTable;->e:Lcom/snapchat/android/database/table/ClearedChatIdsTable;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/snapchat/android/database/table/ClearedChatIdsTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/ClearedChatIdsTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/ClearedChatIdsTable;->e:Lcom/snapchat/android/database/table/ClearedChatIdsTable;

    .line 61
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/ClearedChatIdsTable;->e:Lcom/snapchat/android/database/table/ClearedChatIdsTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-static {p0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_0

    .line 127
    const-string v1, "ClearedChatIdsTable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->a:Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->c()Ljava/lang/String;

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

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 130
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/snapchat/android/database/table/ClearedChatIdsTable;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 76
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 31
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/table/ClearedChatIdsTable;->a(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const-string v0, "ClearedChatIdsTable"

    return-object v0
.end method

.method protected a(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 224
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/snapchat/android/model/User;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    return-void
.end method

.method protected synthetic b(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/table/ClearedChatIdsTable;->a(Landroid/database/Cursor;)Ljava/lang/String;

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 7

    .prologue
    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    invoke-static {}, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->values()[Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;

    move-result-object v2

    .line 202
    array-length v3, v2

    .line 203
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 204
    aget-object v4, v2, v0

    .line 205
    if-lez v0, :cond_0

    .line 206
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->a(Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->b(Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v4}, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->d()Ljava/lang/String;

    move-result-object v4

    .line 210
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 211
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()[Lcom/snapchat/android/database/schema/Schema;
    .locals 1

    .prologue
    .line 220
    invoke-static {}, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->values()[Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;

    move-result-object v0

    return-object v0
.end method
