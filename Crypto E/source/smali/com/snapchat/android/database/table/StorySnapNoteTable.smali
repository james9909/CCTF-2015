.class public Lcom/snapchat/android/database/table/StorySnapNoteTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lcom/snapchat/android/model/StorySnapNote;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field private static b:Lcom/snapchat/android/database/table/StorySnapNoteTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 34
    invoke-static {}, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->values()[Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    move-result-object v1

    .line 35
    array-length v2, v1

    .line 36
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapNoteTable;->a:[Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 38
    sget-object v3, Lcom/snapchat/android/database/table/StorySnapNoteTable;->a:[Ljava/lang/String;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    return-void
.end method

.method public static declared-synchronized b()Lcom/snapchat/android/database/table/StorySnapNoteTable;
    .locals 2

    .prologue
    .line 86
    const-class v1, Lcom/snapchat/android/database/table/StorySnapNoteTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapNoteTable;->b:Lcom/snapchat/android/database/table/StorySnapNoteTable;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapNoteTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/StorySnapNoteTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapNoteTable;->b:Lcom/snapchat/android/database/table/StorySnapNoteTable;

    .line 89
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapNoteTable;->b:Lcom/snapchat/android/database/table/StorySnapNoteTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/model/StorySnapNote;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 25
    check-cast p1, Lcom/snapchat/android/model/StorySnapNote;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/table/StorySnapNoteTable;->a(Lcom/snapchat/android/model/StorySnapNote;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;Lcom/snapchat/android/model/StorySnapNote;)Landroid/content/ContentValues;
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
    .line 119
    new-instance v0, Lcom/snapchat/android/database/table/ContentValuesBuilder;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/ContentValuesBuilder;-><init>()V

    sget-object v1, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->a:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->b:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {p2}, Lcom/snapchat/android/model/StorySnapNote;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->c:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {p2}, Lcom/snapchat/android/model/StorySnapNote;->a()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Z)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->d:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {p2}, Lcom/snapchat/android/model/StorySnapNote;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;J)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    .line 126
    invoke-virtual {p2}, Lcom/snapchat/android/model/StorySnapNote;->d()Lcom/snapchat/android/model/StoryPointer;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_0

    .line 128
    sget-object v2, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->e:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryPointer;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->f:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryPointer;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    .line 133
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a()Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/database/Cursor;)Lcom/snapchat/android/model/StorySnapNote;
    .locals 1
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-string v0, "StorySnapNote"

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 7
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
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/table/StorySnapNoteTable;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 103
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 104
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapLogbook;->f()Ljava/util/List;

    move-result-object v0

    .line 106
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapNote;

    .line 108
    invoke-virtual {p0, v2, v0}, Lcom/snapchat/android/database/table/StorySnapNoteTable;->a(Ljava/lang/String;Lcom/snapchat/android/model/StorySnapNote;)Landroid/content/ContentValues;

    move-result-object v0

    .line 109
    const-string v4, "StorySnapNoteTable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Save note into DB: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    const-string v4, "StorySnapNote"

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {p1, v4, v5, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_0

    .line 115
    :cond_1
    return-void
.end method

.method public a(Lcom/snapchat/android/model/User;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    return-void
.end method

.method protected synthetic b(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/table/StorySnapNoteTable;->a(Landroid/database/Cursor;)Lcom/snapchat/android/model/StorySnapNote;

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
            "Lcom/snapchat/android/model/StorySnapNote;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapNote;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 141
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 143
    const-string v1, "StorySnapNote"

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapNoteTable;->a:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->d:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " DESC"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 146
    if-eqz v1, :cond_3

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->a:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->b()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 150
    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 151
    if-nez v0, :cond_1

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_1
    invoke-virtual {p0, v1}, Lcom/snapchat/android/database/table/StorySnapNoteTable;->c(Landroid/database/Cursor;)Lcom/snapchat/android/model/StorySnapNote;

    move-result-object v2

    .line 157
    const-string v3, "StorySnapNoteTable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Load snap note "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 163
    :cond_3
    if-eqz v1, :cond_4

    .line 164
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 168
    :cond_4
    return-object v8

    .line 163
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    .line 164
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method protected c(Landroid/database/Cursor;)Lcom/snapchat/android/model/StorySnapNote;
    .locals 7
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x1

    .line 173
    sget-object v1, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->b:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 174
    sget-object v1, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->c:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 175
    :goto_0
    sget-object v1, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->d:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 177
    sget-object v1, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->e:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 179
    sget-object v1, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->f:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 182
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 183
    new-instance v1, Lcom/snapchat/android/model/StoryPointer;

    invoke-direct {v1, v3, v6}, Lcom/snapchat/android/model/StoryPointer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :goto_1
    new-instance v3, Lcom/snapchat/android/model/StorySnapNote;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, v2, v0, v4, v1}, Lcom/snapchat/android/model/StorySnapNote;-><init>(Ljava/lang/String;ZLjava/lang/Long;Lcom/snapchat/android/model/StoryPointer;)V

    return-object v3

    .line 174
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 185
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public d()[Lcom/snapchat/android/database/schema/Schema;
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->values()[Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method
