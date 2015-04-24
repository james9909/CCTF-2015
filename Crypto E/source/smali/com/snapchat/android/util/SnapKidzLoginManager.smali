.class public Lcom/snapchat/android/util/SnapKidzLoginManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Lcom/snapchat/android/util/SnapKidzLoginManager;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Landroid/content/SharedPreferences$Editor;

.field private c:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/SnapKidzLoginManager;->a:Landroid/content/SharedPreferences;

    .line 17
    iget-object v0, p0, Lcom/snapchat/android/util/SnapKidzLoginManager;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/SnapKidzLoginManager;->b:Landroid/content/SharedPreferences$Editor;

    .line 18
    iget-object v0, p0, Lcom/snapchat/android/util/SnapKidzLoginManager;->a:Landroid/content/SharedPreferences;

    const-string v1, "SnapKidzLoginManager_numAccounts"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/util/SnapKidzLoginManager;->c:I

    .line 19
    return-void
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/util/SnapKidzLoginManager;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lcom/snapchat/android/util/SnapKidzLoginManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/util/SnapKidzLoginManager;->d:Lcom/snapchat/android/util/SnapKidzLoginManager;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/snapchat/android/util/SnapKidzLoginManager;

    invoke-direct {v0}, Lcom/snapchat/android/util/SnapKidzLoginManager;-><init>()V

    sput-object v0, Lcom/snapchat/android/util/SnapKidzLoginManager;->d:Lcom/snapchat/android/util/SnapKidzLoginManager;

    .line 25
    :cond_0
    sget-object v0, Lcom/snapchat/android/util/SnapKidzLoginManager;->d:Lcom/snapchat/android/util/SnapKidzLoginManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Ljava/lang/String;)I
    .locals 4
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/snapchat/android/util/SnapKidzLoginManager;->c:I

    if-ge v0, v1, :cond_1

    .line 38
    iget-object v1, p0, Lcom/snapchat/android/util/SnapKidzLoginManager;->a:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SnapKidzLoginManager_username_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    :goto_1
    return v0

    .line 37
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static declared-synchronized b()V
    .locals 2

    .prologue
    .line 29
    const-class v0, Lcom/snapchat/android/util/SnapKidzLoginManager;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/snapchat/android/util/SnapKidzLoginManager;->d:Lcom/snapchat/android/util/SnapKidzLoginManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit v0

    return-void

    .line 29
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/snapchat/android/util/SnapKidzLoginManager;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/SnapKidzLoginManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/SnapKidzLoginManager;->b:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnapKidzLoginManager_username_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/snapchat/android/util/SnapKidzLoginManager;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 49
    iget-object v0, p0, Lcom/snapchat/android/util/SnapKidzLoginManager;->b:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnapKidzLoginManager_passkey_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/snapchat/android/util/SnapKidzLoginManager;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50
    iget v0, p0, Lcom/snapchat/android/util/SnapKidzLoginManager;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/util/SnapKidzLoginManager;->c:I

    .line 51
    iget-object v0, p0, Lcom/snapchat/android/util/SnapKidzLoginManager;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SnapKidzLoginManager_numAccounts"

    iget v2, p0, Lcom/snapchat/android/util/SnapKidzLoginManager;->c:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 52
    iget-object v0, p0, Lcom/snapchat/android/util/SnapKidzLoginManager;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 53
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/snapchat/android/util/SnapKidzLoginManager;->b(Ljava/lang/String;)I

    move-result v0

    .line 72
    iget-object v1, p0, Lcom/snapchat/android/util/SnapKidzLoginManager;->a:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SnapKidzLoginManager_passkey_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 73
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
