.class public Lcom/facebook/rebound/BaseSpringSystem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/rebound/Spring;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/rebound/Spring;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/facebook/rebound/SpringClock;

.field private final d:Lcom/facebook/rebound/SpringLooper;

.field private e:J

.field private f:Lcom/facebook/rebound/ReentrantCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rebound/ReentrantCallback",
            "<",
            "Lcom/facebook/rebound/SpringSystemListener;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/facebook/rebound/SpringClock;Lcom/facebook/rebound/SpringLooper;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->a:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->b:Ljava/util/Set;

    .line 34
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->e:J

    .line 35
    new-instance v0, Lcom/facebook/rebound/ReentrantCallback;

    invoke-direct {v0}, Lcom/facebook/rebound/ReentrantCallback;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->f:Lcom/facebook/rebound/ReentrantCallback;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->g:Z

    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "clock is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    if-nez p2, :cond_1

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "springLooper is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    iput-object p1, p0, Lcom/facebook/rebound/BaseSpringSystem;->c:Lcom/facebook/rebound/SpringClock;

    .line 52
    iput-object p2, p0, Lcom/facebook/rebound/BaseSpringSystem;->d:Lcom/facebook/rebound/SpringLooper;

    .line 53
    iget-object v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->d:Lcom/facebook/rebound/SpringLooper;

    invoke-virtual {v0, p0}, Lcom/facebook/rebound/SpringLooper;->a(Lcom/facebook/rebound/BaseSpringSystem;)V

    .line 54
    return-void
.end method


# virtual methods
.method a(JJ)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const-wide v6, 0x408f400000000000L

    .line 135
    iget-object v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/Spring;

    .line 137
    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    long-to-double v2, p1

    div-double/2addr v2, v6

    long-to-double v4, p3

    div-double/2addr v4, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/facebook/rebound/Spring;->a(DD)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/facebook/rebound/BaseSpringSystem;->b:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    :cond_1
    return-void
.end method

.method a(Lcom/facebook/rebound/Spring;)V
    .locals 2
    .parameter

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "spring is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "spring is already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/Spring;

    .line 183
    if-nez v0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "springId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not reference a registered spring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/facebook/rebound/BaseSpringSystem;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-virtual {p0}, Lcom/facebook/rebound/BaseSpringSystem;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->g:Z

    .line 190
    iget-object v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->d:Lcom/facebook/rebound/SpringLooper;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringLooper;->b()V

    .line 192
    :cond_1
    monitor-exit p0

    .line 193
    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->g:Z

    return v0
.end method

.method public b()Lcom/facebook/rebound/Spring;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/facebook/rebound/Spring;

    invoke-direct {v0, p0}, Lcom/facebook/rebound/Spring;-><init>(Lcom/facebook/rebound/BaseSpringSystem;)V

    .line 70
    invoke-virtual {p0, v0}, Lcom/facebook/rebound/BaseSpringSystem;->a(Lcom/facebook/rebound/Spring;)V

    .line 71
    return-object v0
.end method

.method public c()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 149
    iget-object v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->c:Lcom/facebook/rebound/SpringClock;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringClock;->a()J

    move-result-wide v2

    .line 150
    iget-wide v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->e:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 151
    const-wide/16 v0, 0x1

    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->e:J

    .line 153
    :cond_0
    iget-wide v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->e:J

    sub-long v4, v2, v0

    .line 154
    iput-wide v2, p0, Lcom/facebook/rebound/BaseSpringSystem;->e:J

    .line 156
    iget-object v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->f:Lcom/facebook/rebound/ReentrantCallback;

    invoke-virtual {v0}, Lcom/facebook/rebound/ReentrantCallback;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/SpringSystemListener;

    .line 157
    invoke-interface {v0, p0}, Lcom/facebook/rebound/SpringSystemListener;->a(Lcom/facebook/rebound/BaseSpringSystem;)V

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/facebook/rebound/BaseSpringSystem;->a(JJ)V

    .line 160
    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->g:Z

    .line 163
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->e:J

    .line 165
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    iget-object v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->f:Lcom/facebook/rebound/ReentrantCallback;

    invoke-virtual {v0}, Lcom/facebook/rebound/ReentrantCallback;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/SpringSystemListener;

    .line 167
    invoke-interface {v0, p0}, Lcom/facebook/rebound/SpringSystemListener;->b(Lcom/facebook/rebound/BaseSpringSystem;)V

    goto :goto_1

    .line 165
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 170
    :cond_3
    iget-boolean v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->g:Z

    if-eqz v0, :cond_4

    .line 171
    iget-object v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->d:Lcom/facebook/rebound/SpringLooper;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringLooper;->c()V

    .line 173
    :cond_4
    return-void
.end method
