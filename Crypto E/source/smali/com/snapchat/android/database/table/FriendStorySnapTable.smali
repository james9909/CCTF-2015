.class public Lcom/snapchat/android/database/table/FriendStorySnapTable;
.super Lcom/snapchat/android/database/table/StorySnapTable;
.source "SourceFile"


# static fields
.field private static a:Lcom/snapchat/android/database/table/FriendStorySnapTable;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/snapchat/android/database/table/StorySnapTable;-><init>()V

    return-void
.end method

.method public static declared-synchronized b()Lcom/snapchat/android/database/table/FriendStorySnapTable;
    .locals 2

    .prologue
    .line 21
    const-class v1, Lcom/snapchat/android/database/table/FriendStorySnapTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/table/FriendStorySnapTable;->a:Lcom/snapchat/android/database/table/FriendStorySnapTable;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/snapchat/android/database/table/FriendStorySnapTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/FriendStorySnapTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/FriendStorySnapTable;->a:Lcom/snapchat/android/database/table/FriendStorySnapTable;

    .line 24
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/FriendStorySnapTable;->a:Lcom/snapchat/android/database/table/FriendStorySnapTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "FriendStorySnapTable"

    return-object v0
.end method

.method public a(Lcom/snapchat/android/model/User;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0, v0}, Lcom/snapchat/android/database/table/FriendStorySnapTable;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/snapchat/android/util/crypto/CbcSlightlySecurePreferences;

    invoke-direct {v1}, Lcom/snapchat/android/util/crypto/CbcSlightlySecurePreferences;-><init>()V

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeys;->d:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/util/crypto/CbcSlightlySecurePreferences;->a(Ljava/util/List;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/StoryLibrary;->c(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected b(Lcom/snapchat/android/model/User;)Ljava/util/Collection;
    .locals 3
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
    .line 44
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryLibrary;->p()Ljava/util/List;

    move-result-object v0

    .line 45
    new-instance v1, Lcom/snapchat/android/util/crypto/CbcSlightlySecurePreferences;

    invoke-direct {v1}, Lcom/snapchat/android/util/crypto/CbcSlightlySecurePreferences;-><init>()V

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeys;->d:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/util/crypto/CbcSlightlySecurePreferences;->b(Ljava/util/List;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;)V

    .line 46
    return-object v0
.end method
