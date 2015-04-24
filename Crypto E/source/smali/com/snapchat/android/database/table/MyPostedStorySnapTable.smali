.class public Lcom/snapchat/android/database/table/MyPostedStorySnapTable;
.super Lcom/snapchat/android/database/table/StorySnapTable;
.source "SourceFile"


# static fields
.field private static a:Lcom/snapchat/android/database/table/MyPostedStorySnapTable;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/snapchat/android/database/table/StorySnapTable;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 110
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :cond_1
    return-object v1
.end method

.method public static declared-synchronized b()Lcom/snapchat/android/database/table/MyPostedStorySnapTable;
    .locals 2

    .prologue
    .line 33
    const-class v1, Lcom/snapchat/android/database/table/MyPostedStorySnapTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/table/MyPostedStorySnapTable;->a:Lcom/snapchat/android/database/table/MyPostedStorySnapTable;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/snapchat/android/database/table/MyPostedStorySnapTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/MyPostedStorySnapTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/MyPostedStorySnapTable;->a:Lcom/snapchat/android/database/table/MyPostedStorySnapTable;

    .line 36
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/MyPostedStorySnapTable;->a:Lcom/snapchat/android/database/table/MyPostedStorySnapTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "MyPostedStorySnapTable"

    return-object v0
.end method

.method public a(Lcom/snapchat/android/model/User;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, v0, v0}, Lcom/snapchat/android/database/table/MyPostedStorySnapTable;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 47
    new-instance v1, Lcom/snapchat/android/util/crypto/CbcSlightlySecurePreferences;

    invoke-direct {v1}, Lcom/snapchat/android/util/crypto/CbcSlightlySecurePreferences;-><init>()V

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeys;->c:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/util/crypto/CbcSlightlySecurePreferences;->a(Ljava/util/List;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-static {}, Lcom/snapchat/android/database/table/StorySnapNoteTable;->b()Lcom/snapchat/android/database/table/StorySnapNoteTable;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/database/table/MyPostedStorySnapTable;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/database/table/StorySnapNoteTable;->b(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;

    move-result-object v1

    .line 54
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/model/StoryLibrary;->a(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_0
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
            "Lcom/snapchat/android/model/StorySnap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Lcom/snapchat/android/model/User;)V
    .locals 6
    .parameter

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/snapchat/android/database/table/MyPostedStorySnapTable;->o()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/database/table/MyPostedStorySnapTable;->j()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/database/table/MyPostedStorySnapTable;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 74
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryLibrary;->h()Ljava/util/List;

    move-result-object v1

    .line 76
    invoke-direct {p0, v1}, Lcom/snapchat/android/database/table/MyPostedStorySnapTable;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 78
    new-instance v2, Lcom/snapchat/android/util/crypto/CbcSlightlySecurePreferences;

    invoke-direct {v2}, Lcom/snapchat/android/util/crypto/CbcSlightlySecurePreferences;-><init>()V

    sget-object v3, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeys;->c:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    invoke-virtual {v2, v0, v3}, Lcom/snapchat/android/util/crypto/CbcSlightlySecurePreferences;->b(Ljava/util/List;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;)V

    .line 81
    invoke-virtual {p0}, Lcom/snapchat/android/database/table/MyPostedStorySnapTable;->k()V

    .line 83
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 84
    const-string v2, "MyPostedStorySnapTable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveToDatabase "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/snapchat/android/database/table/MyPostedStorySnapTable;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " item(s)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    .line 86
    invoke-virtual {p0, v0}, Lcom/snapchat/android/database/table/MyPostedStorySnapTable;->a(Lcom/snapchat/android/model/StorySnap;)Landroid/content/ContentValues;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 88
    iget-object v3, p0, Lcom/snapchat/android/database/table/MyPostedStorySnapTable;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/snapchat/android/database/table/MyPostedStorySnapTable;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 98
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/snapchat/android/database/table/MyPostedStorySnapTable;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 99
    invoke-virtual {p0}, Lcom/snapchat/android/database/table/MyPostedStorySnapTable;->j()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 94
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/snapchat/android/database/table/StorySnapNoteTable;->b()Lcom/snapchat/android/database/table/StorySnapNoteTable;

    move-result-object v0

    iget-object v2, p0, Lcom/snapchat/android/database/table/MyPostedStorySnapTable;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v2, v1}, Lcom/snapchat/android/database/table/StorySnapNoteTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 96
    iget-object v0, p0, Lcom/snapchat/android/database/table/MyPostedStorySnapTable;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    iget-object v0, p0, Lcom/snapchat/android/database/table/MyPostedStorySnapTable;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 99
    invoke-virtual {p0}, Lcom/snapchat/android/database/table/MyPostedStorySnapTable;->j()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0
.end method
