.class public final Lcrittercism/android/df;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcrittercism/android/db;

.field private b:Lcrittercism/android/dc;

.field private c:Lcrittercism/android/dd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lcrittercism/android/dc;
    .locals 1

    .prologue
    .line 25
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcrittercism/android/df;->b:Lcrittercism/android/dc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcrittercism/android/aw;)V
    .locals 2
    .parameter

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcrittercism/android/db$a;->a(Lcrittercism/android/aw;)Lcrittercism/android/db;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/df;->a:Lcrittercism/android/db;

    .line 66
    iget-object v0, p0, Lcrittercism/android/df;->a:Lcrittercism/android/db;

    invoke-virtual {v0}, Lcrittercism/android/db;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    sget-object v0, Lcrittercism/android/cb;->k:Lcrittercism/android/cb;

    invoke-virtual {v0}, Lcrittercism/android/cb;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcrittercism/android/cb;->k:Lcrittercism/android/cb;

    invoke-virtual {v1}, Lcrittercism/android/cb;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcrittercism/android/aw;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcrittercism/android/cb;->l:Lcrittercism/android/cb;

    invoke-virtual {v0}, Lcrittercism/android/cb;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcrittercism/android/cb;->l:Lcrittercism/android/cb;

    invoke-virtual {v1}, Lcrittercism/android/cb;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcrittercism/android/aw;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    new-instance v1, Lcrittercism/android/dd;

    invoke-direct {v1, v0}, Lcrittercism/android/dd;-><init>(I)V

    iget v0, v1, Lcrittercism/android/dd;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcrittercism/android/dd;->a:I

    iput-object v1, p0, Lcrittercism/android/df;->c:Lcrittercism/android/dd;

    .line 74
    sget-object v0, Lcrittercism/android/cb;->h:Lcrittercism/android/cb;

    invoke-virtual {v0}, Lcrittercism/android/cb;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcrittercism/android/cb;->h:Lcrittercism/android/cb;

    invoke-virtual {v1}, Lcrittercism/android/cb;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcrittercism/android/dc$a;->a(Lcrittercism/android/aw;Ljava/lang/String;Ljava/lang/String;)Lcrittercism/android/dc;

    move-result-object v0

    iget v1, v0, Lcrittercism/android/dc;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcrittercism/android/dc;->c:I

    iput-object v0, p0, Lcrittercism/android/df;->b:Lcrittercism/android/dc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_1
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcrittercism/android/dc;)V
    .locals 1
    .parameter

    .prologue
    .line 17
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcrittercism/android/df;->b:Lcrittercism/android/dc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Lcrittercism/android/dd;
    .locals 1

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcrittercism/android/df;->c:Lcrittercism/android/dd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .locals 2

    .prologue
    .line 36
    monitor-enter p0

    const/4 v0, 0x1

    .line 38
    :try_start_0
    iget-object v1, p0, Lcrittercism/android/df;->a:Lcrittercism/android/db;

    if-eqz v1, :cond_0

    .line 39
    iget-object v0, p0, Lcrittercism/android/df;->a:Lcrittercism/android/db;

    invoke-virtual {v0}, Lcrittercism/android/db;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 42
    :cond_0
    monitor-exit p0

    return v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
