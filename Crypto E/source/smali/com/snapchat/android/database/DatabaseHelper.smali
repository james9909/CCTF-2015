.class public Lcom/snapchat/android/database/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/DatabaseHelper$TableType;
    }
.end annotation


# static fields
.field private static a:Lcom/snapchat/android/database/DatabaseHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 65
    const-string v0, "tcspahn.db"

    const/4 v1, 0x0

    const/16 v2, 0x93

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 66
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;
    .locals 2
    .parameter

    .prologue
    .line 57
    const-class v1, Lcom/snapchat/android/database/DatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/DatabaseHelper;->a:Lcom/snapchat/android/database/DatabaseHelper;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/snapchat/android/database/DatabaseHelper;

    invoke-direct {v0, p0}, Lcom/snapchat/android/database/DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/snapchat/android/database/DatabaseHelper;->a:Lcom/snapchat/android/database/DatabaseHelper;

    .line 60
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/DatabaseHelper;->a:Lcom/snapchat/android/database/DatabaseHelper;
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

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 123
    const-string v0, ""

    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->m(Ljava/lang/String;)V

    .line 124
    const-string v0, ""

    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->l(Ljava/lang/String;)V

    .line 125
    return-void
.end method


# virtual methods
.method protected a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 128
    sget-object v0, Lcom/snapchat/android/database/DatabaseHelper$TableType;->a:Lcom/snapchat/android/database/DatabaseHelper$TableType;

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/snapchat/android/database/DatabaseHelper$TableType;)V

    .line 129
    sget-object v0, Lcom/snapchat/android/database/DatabaseHelper$TableType;->b:Lcom/snapchat/android/database/DatabaseHelper$TableType;

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/snapchat/android/database/DatabaseHelper$TableType;)V

    .line 130
    return-void
.end method

.method protected a(Landroid/database/sqlite/SQLiteDatabase;Lcom/snapchat/android/database/DatabaseHelper$TableType;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/database/DatabaseHelper;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/snapchat/android/database/DatabaseHelper$TableType;)Ljava/util/List;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    sget-object v2, Lcom/snapchat/android/database/DatabaseHelper$TableType;->a:Lcom/snapchat/android/database/DatabaseHelper$TableType;

    if-ne p2, v2, :cond_1

    .line 136
    invoke-static {p1, v0}, Lcom/snapchat/android/database/table/DbTable;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_1
    sget-object v2, Lcom/snapchat/android/database/DatabaseHelper$TableType;->b:Lcom/snapchat/android/database/DatabaseHelper$TableType;

    if-ne p2, v2, :cond_0

    .line 138
    invoke-static {p1, v0}, Lcom/snapchat/android/database/vtable/DbVirtualTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_2
    return-void
.end method

.method protected b(Landroid/database/sqlite/SQLiteDatabase;Lcom/snapchat/android/database/DatabaseHelper$TableType;)Ljava/util/List;
    .locals 10
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/snapchat/android/database/DatabaseHelper$TableType;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 144
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 145
    const-string v1, "sqlite_master"

    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v9

    const-string v3, "type=? AND name NOT LIKE ? AND name NOT LIKE ?"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    invoke-virtual {p2}, Lcom/snapchat/android/database/DatabaseHelper$TableType;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    const-string v0, "sqlite_%"

    aput-object v0, v4, v6

    const/4 v0, 0x2

    const-string v6, "android_metadata"

    aput-object v6, v4, v0

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    :cond_0
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 154
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    :cond_2
    return-object v8
.end method

.method public close()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 79
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 86
    const-string v1, "DatabaseHelper"

    const-string v2, "Creating Database"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-static {}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->values()[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 90
    invoke-virtual {v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->a()Lcom/snapchat/android/database/table/DbTable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/DbTable;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {p1}, Lcom/snapchat/android/database/vtable/DbVirtualTable;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 95
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    const-string v0, "DatabaseHelper"

    const-string v1, "Downgrading database from version %d to %d, which will destroy all old data"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    invoke-direct {p0, p1}, Lcom/snapchat/android/database/DatabaseHelper;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 113
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    const-string v0, "DatabaseHelper"

    const-string v1, "Upgrading database from version %d to %d, which will destroy all old data"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-direct {p0, p1}, Lcom/snapchat/android/database/DatabaseHelper;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 107
    return-void
.end method
