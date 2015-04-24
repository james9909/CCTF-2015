.class Lcom/snapchat/android/controller/countdown/SnapCountdownItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/snapchat/android/util/system/Clock;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/controller/countdown/SnapCountdownListener;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/snapchat/android/model/ReceivedSnap;

.field private final e:Z

.field private f:J


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/ReceivedSnap;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25
    new-instance v0, Lcom/snapchat/android/util/system/Clock;

    invoke-direct {v0}, Lcom/snapchat/android/util/system/Clock;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;-><init>(Lcom/snapchat/android/util/system/Clock;Lcom/snapchat/android/model/ReceivedSnap;Z)V

    .line 26
    return-void
.end method

.method constructor <init>(Lcom/snapchat/android/util/system/Clock;Lcom/snapchat/android/model/ReceivedSnap;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->a:Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->c:Ljava/util/Set;

    .line 22
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->f:J

    .line 30
    iput-object p1, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->b:Lcom/snapchat/android/util/system/Clock;

    .line 31
    iput-object p2, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->d:Lcom/snapchat/android/model/ReceivedSnap;

    .line 32
    iput-boolean p3, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->e:Z

    .line 33
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/ReceivedSnap;)Lcom/snapchat/android/controller/countdown/SnapCountdownItem;
    .locals 4
    .parameter

    .prologue
    .line 142
    new-instance v1, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;

    invoke-virtual {p0}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->b()Z

    move-result v0

    invoke-direct {v1, p1, v0}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;-><init>(Lcom/snapchat/android/model/ReceivedSnap;Z)V

    .line 143
    invoke-virtual {p0}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->f()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/controller/countdown/SnapCountdownListener;

    .line 144
    invoke-virtual {v1, v0}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->a(Lcom/snapchat/android/controller/countdown/SnapCountdownListener;)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->a(J)V

    .line 149
    :cond_1
    return-object v1
.end method

.method public a()Lcom/snapchat/android/model/ReceivedSnap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->d:Lcom/snapchat/android/model/ReceivedSnap;

    return-object v0
.end method

.method public a(J)V
    .locals 3
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->b:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->b()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->f:J

    .line 74
    return-void
.end method

.method public a(Lcom/snapchat/android/controller/countdown/SnapCountdownListener;)V
    .locals 2
    .parameter

    .prologue
    .line 106
    iget-object v1, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    monitor-exit v1

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/snapchat/android/controller/countdown/SnapCountdownListener;)V
    .locals 2
    .parameter

    .prologue
    .line 115
    iget-object v1, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 117
    monitor-exit v1

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->e:Z

    return v0
.end method

.method public c()I
    .locals 4

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->d()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public d()J
    .locals 6

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Countdown not yet started for this snap."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->b:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->b()J

    move-result-wide v0

    .line 66
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->f:J

    sub-long v0, v4, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public e()Z
    .locals 4

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->f:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/controller/countdown/SnapCountdownListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 96
    iget-object v1, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_0
    iget-object v2, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->c:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 98
    monitor-exit v1

    .line 99
    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 124
    iget-object v1, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 126
    monitor-exit v1

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->d:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
