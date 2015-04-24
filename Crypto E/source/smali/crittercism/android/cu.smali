.class public final Lcrittercism/android/cu;
.super Lcrittercism/android/cq;


# instance fields
.field public a:Ljava/util/Map;

.field private b:Lcrittercism/android/df;

.field private c:Lcrittercism/android/au;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcrittercism/android/cu;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lcrittercism/android/cu;->b:Lcrittercism/android/df;

    invoke-virtual {v0}, Lcrittercism/android/df;->c()Z

    move-result v0

    .line 60
    iget-boolean v1, p0, Lcrittercism/android/cu;->d:Z

    if-eqz v1, :cond_0

    .line 61
    const-string v1, "optOutStatus"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcrittercism/android/cu;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    :cond_0
    if-nez v0, :cond_3

    .line 65
    iget-boolean v0, p0, Lcrittercism/android/cu;->e:Z

    if-eqz v0, :cond_1

    .line 66
    const-string v0, "crashedOnLastLoad"

    sget-boolean v1, Lcrittercism/android/cz;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcrittercism/android/cu;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    :cond_1
    iget-boolean v0, p0, Lcrittercism/android/cu;->f:Z

    if-eqz v0, :cond_2

    .line 70
    const-string v0, "userUUID"

    iget-object v1, p0, Lcrittercism/android/cu;->c:Lcrittercism/android/au;

    invoke-interface {v1}, Lcrittercism/android/au;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcrittercism/android/cu;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    :cond_2
    iget-boolean v0, p0, Lcrittercism/android/cu;->g:Z

    if-eqz v0, :cond_3

    .line 74
    iget-object v0, p0, Lcrittercism/android/cu;->b:Lcrittercism/android/df;

    invoke-virtual {v0}, Lcrittercism/android/df;->a()Lcrittercism/android/dc;

    move-result-object v1

    .line 75
    const-string v2, "shouldShowRateAppAlert"

    iget-boolean v0, v1, Lcrittercism/android/dc;->a:Z

    if-eqz v0, :cond_4

    iget-boolean v0, v1, Lcrittercism/android/dc;->b:Z

    if-nez v0, :cond_4

    iget v0, v1, Lcrittercism/android/dc;->c:I

    iget v3, v1, Lcrittercism/android/dc;->d:I

    if-lt v0, v3, :cond_4

    iget v0, v1, Lcrittercism/android/dc;->c:I

    iget v3, v1, Lcrittercism/android/dc;->d:I

    sub-int/2addr v0, v3

    iget v3, v1, Lcrittercism/android/dc;->e:I

    rem-int/2addr v0, v3

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcrittercism/android/cu;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    const-string v0, "message"

    iget-object v2, v1, Lcrittercism/android/dc;->f:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcrittercism/android/cu;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    const-string v0, "title"

    iget-object v1, v1, Lcrittercism/android/dc;->g:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcrittercism/android/cu;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    :cond_3
    return-void

    .line 75
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
