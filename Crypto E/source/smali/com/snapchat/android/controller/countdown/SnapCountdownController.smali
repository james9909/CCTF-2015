.class public Lcom/snapchat/android/controller/countdown/SnapCountdownController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/controller/countdown/SnapCountdownController$SnapCountdownItemFactory;,
        Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;
    }
.end annotation


# static fields
.field private static final a:Lcom/snapchat/android/controller/countdown/SnapCountdownController;


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/controller/countdown/SnapCountdownItem;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/snapchat/android/controller/countdown/SnapCountdownController$SnapCountdownItemFactory;

.field private final e:Lcom/snapchat/android/util/system/Clock;

.field private final f:Landroid/os/Handler;

.field private final g:Lcom/squareup/otto/Bus;

.field private final h:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    invoke-direct {v0}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;-><init>()V

    sput-object v0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a:Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/snapchat/android/util/system/Clock;

    invoke-direct {v1}, Lcom/snapchat/android/util/system/Clock;-><init>()V

    new-instance v2, Lcom/snapchat/android/controller/countdown/SnapCountdownController$SnapCountdownItemFactory;

    invoke-direct {v2}, Lcom/snapchat/android/controller/countdown/SnapCountdownController$SnapCountdownItemFactory;-><init>()V

    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;-><init>(Landroid/os/Handler;Lcom/snapchat/android/util/system/Clock;Lcom/snapchat/android/controller/countdown/SnapCountdownController$SnapCountdownItemFactory;Lcom/squareup/otto/Bus;)V

    .line 58
    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Lcom/snapchat/android/util/system/Clock;Lcom/snapchat/android/controller/countdown/SnapCountdownController$SnapCountdownItemFactory;Lcom/squareup/otto/Bus;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->b:Ljava/lang/Object;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->c:Ljava/util/Map;

    .line 300
    new-instance v0, Lcom/snapchat/android/controller/countdown/SnapCountdownController$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/controller/countdown/SnapCountdownController$1;-><init>(Lcom/snapchat/android/controller/countdown/SnapCountdownController;)V

    iput-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->h:Ljava/lang/Runnable;

    .line 62
    iput-object p1, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->f:Landroid/os/Handler;

    .line 63
    iput-object p2, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->e:Lcom/snapchat/android/util/system/Clock;

    .line 64
    iput-object p3, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->d:Lcom/snapchat/android/controller/countdown/SnapCountdownController$SnapCountdownItemFactory;

    .line 65
    iput-object p4, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->g:Lcom/squareup/otto/Bus;

    .line 66
    return-void
.end method

.method public static a()Lcom/snapchat/android/controller/countdown/SnapCountdownController;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a:Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    return-object v0
.end method

.method private a(Lcom/snapchat/android/controller/countdown/SnapCountdownItem;Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 271
    const-string v0, "SnapCountdownController"

    const-string v1, "onSnapFinished %s, action: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    iget-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->a()Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-virtual {p1}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->f()Ljava/util/Set;

    move-result-object v0

    .line 275
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/controller/countdown/SnapCountdownListener;

    .line 276
    sget-object v2, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;->c:Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

    if-ne p2, v2, :cond_1

    .line 277
    invoke-virtual {p1}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->a()Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/snapchat/android/controller/countdown/SnapCountdownListener;->b(Lcom/snapchat/android/model/ReceivedSnap;)V

    goto :goto_0

    .line 278
    :cond_1
    sget-object v2, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;->a:Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

    if-ne p2, v2, :cond_2

    .line 279
    invoke-virtual {p1}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->a()Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/snapchat/android/controller/countdown/SnapCountdownListener;->a(Lcom/snapchat/android/model/ReceivedSnap;)V

    goto :goto_0

    .line 280
    :cond_2
    sget-object v2, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;->b:Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

    if-ne p2, v2, :cond_0

    .line 281
    invoke-virtual {p1}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->a()Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/snapchat/android/controller/countdown/SnapCountdownListener;->c(Lcom/snapchat/android/model/ReceivedSnap;)V

    goto :goto_0

    .line 284
    :cond_3
    invoke-virtual {p1}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->a()Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->J()V

    .line 285
    invoke-virtual {p1}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->g()V

    .line 286
    return-void
.end method

.method private static a(Ljava/util/Map;Lcom/snapchat/android/model/ReceivedSnap;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/controller/countdown/SnapCountdownItem;",
            ">;",
            "Lcom/snapchat/android/model/ReceivedSnap;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 260
    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;

    .line 261
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->I()V

    .line 263
    invoke-virtual {v0}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->c()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/snapchat/android/model/ReceivedSnap;->c(I)V

    .line 264
    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->a(Lcom/snapchat/android/model/ReceivedSnap;)Lcom/snapchat/android/controller/countdown/SnapCountdownItem;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const/4 v0, 0x1

    .line 267
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Lcom/snapchat/android/model/ReceivedSnap;)Lcom/snapchat/android/controller/countdown/SnapCountdownItem;
    .locals 2
    .parameter

    .prologue
    .line 297
    iget-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;

    return-object v0
.end method


# virtual methods
.method protected a(J)V
    .locals 3
    .parameter

    .prologue
    .line 290
    iget-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 291
    return-void
.end method

.method public a(Lcom/snapchat/android/model/ReceivedSnap;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 132
    const-string v0, "SnapCountdownController"

    const-string v1, "skipCountdown %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    iget-object v1, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    invoke-direct {p0, p1}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->e(Lcom/snapchat/android/model/ReceivedSnap;)Lcom/snapchat/android/controller/countdown/SnapCountdownItem;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_0

    .line 136
    sget-object v2, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;->c:Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

    invoke-direct {p0, v0, v2}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a(Lcom/snapchat/android/controller/countdown/SnapCountdownItem;Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;)V

    .line 138
    :cond_0
    monitor-exit v1

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/controller/countdown/SnapCountdownListener;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 182
    const-string v0, "SnapCountdownController"

    const-string v1, "removeListener %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    iget-object v1, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_0
    invoke-direct {p0, p1}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->e(Lcom/snapchat/android/model/ReceivedSnap;)Lcom/snapchat/android/controller/countdown/SnapCountdownItem;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0, p2}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->b(Lcom/snapchat/android/controller/countdown/SnapCountdownListener;)V

    .line 188
    :cond_0
    monitor-exit v1

    .line 189
    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/snapchat/android/model/ReceivedSnap;ZLcom/snapchat/android/controller/countdown/SnapCountdownListener;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 82
    const-string v0, "SnapCountdownController"

    const-string v1, "prepareCountdown %s, isCancelable: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    iget-object v1, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_0
    invoke-direct {p0, p1}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->e(Lcom/snapchat/android/model/ReceivedSnap;)Lcom/snapchat/android/controller/countdown/SnapCountdownItem;

    move-result-object v0

    .line 88
    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->d:Lcom/snapchat/android/controller/countdown/SnapCountdownController$SnapCountdownItemFactory;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/controller/countdown/SnapCountdownController$SnapCountdownItemFactory;->a(Lcom/snapchat/android/model/ReceivedSnap;Z)Lcom/snapchat/android/controller/countdown/SnapCountdownItem;

    move-result-object v0

    .line 90
    iget-object v2, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_0
    if-eqz p3, :cond_1

    .line 93
    invoke-virtual {v0, p3}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->a(Lcom/snapchat/android/controller/countdown/SnapCountdownListener;)V

    .line 95
    :cond_1
    monitor-exit v1

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/snapchat/android/model/ReceivedSnap;I)Z
    .locals 9
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    const-string v2, "SnapCountdownController"

    const-string v3, "startCountdown %s"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iget-object v2, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 109
    :try_start_0
    invoke-direct {p0, p1}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->e(Lcom/snapchat/android/model/ReceivedSnap;)Lcom/snapchat/android/controller/countdown/SnapCountdownItem;

    move-result-object v3

    .line 110
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->e()Z

    move-result v4

    if-nez v4, :cond_0

    .line 111
    int-to-double v4, p2

    const-wide v6, 0x408f400000000000L

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 112
    const-string v4, "SnapCountdownController"

    const-string v5, "Starting countdown %s, duration seconds: %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p1, v1}, Lcom/snapchat/android/model/ReceivedSnap;->b(I)V

    .line 115
    invoke-virtual {p1, v1}, Lcom/snapchat/android/model/ReceivedSnap;->c(I)V

    .line 116
    int-to-long v4, p2

    invoke-virtual {v3, v4, v5}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->a(J)V

    .line 117
    invoke-virtual {v3}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->a()Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/ReceivedSnap;->I()V

    .line 118
    invoke-virtual {v3}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->d()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a(J)V

    .line 119
    monitor-exit v2

    .line 122
    :goto_0
    return v0

    .line 121
    :cond_0
    monitor-exit v2

    move v0, v1

    .line 122
    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 13
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    .line 209
    iget-object v6, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->b:Ljava/lang/Object;

    monitor-enter v6

    .line 213
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 214
    iget-object v1, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 216
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v2, v4

    .line 217
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 218
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;

    .line 219
    invoke-virtual {v0}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {v0}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->d()J

    move-result-wide v8

    .line 224
    invoke-virtual {v0}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->c()I

    move-result v1

    int-to-long v10, v1

    .line 225
    invoke-virtual {v0}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->f()Ljava/util/Set;

    move-result-object v1

    .line 228
    invoke-virtual {v0}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->a()Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v12

    long-to-int v10, v10

    invoke-virtual {v12, v10}, Lcom/snapchat/android/model/ReceivedSnap;->d(I)V

    .line 232
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gtz v10, :cond_1

    .line 233
    sget-object v1, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;->a:Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a(Lcom/snapchat/android/controller/countdown/SnapCountdownItem;Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;)V

    .line 248
    :goto_1
    iget-object v1, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->g:Lcom/squareup/otto/Bus;

    new-instance v8, Lcom/snapchat/android/util/eventbus/FeedTimerChangeEvent;

    invoke-virtual {v0}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->a()Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->n()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/snapchat/android/util/eventbus/FeedTimerChangeEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 237
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/controller/countdown/SnapCountdownListener;

    .line 238
    invoke-virtual {v0}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->a()Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v11

    invoke-interface {v1, v11, v8, v9}, Lcom/snapchat/android/controller/countdown/SnapCountdownListener;->a(Lcom/snapchat/android/model/ReceivedSnap;J)V

    goto :goto_2

    .line 242
    :cond_2
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const-wide/16 v8, 0x64

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_1

    .line 253
    :cond_3
    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    .line 254
    invoke-virtual {p0, v2, v3}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a(J)V

    .line 256
    :cond_4
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    return-void
.end method

.method public b(Lcom/snapchat/android/model/ReceivedSnap;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 148
    const-string v0, "SnapCountdownController"

    const-string v1, "expireCountdown %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    iget-object v1, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_0
    invoke-direct {p0, p1}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->e(Lcom/snapchat/android/model/ReceivedSnap;)Lcom/snapchat/android/controller/countdown/SnapCountdownItem;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    .line 152
    sget-object v2, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;->a:Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

    invoke-direct {p0, v0, v2}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a(Lcom/snapchat/android/controller/countdown/SnapCountdownItem;Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;)V

    .line 154
    :cond_0
    monitor-exit v1

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Lcom/snapchat/android/model/ReceivedSnap;)Z
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 163
    const-string v2, "SnapCountdownController"

    const-string v3, "cancel %s"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    iget-object v2, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 165
    :try_start_0
    invoke-direct {p0, p1}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->e(Lcom/snapchat/android/model/ReceivedSnap;)Lcom/snapchat/android/controller/countdown/SnapCountdownItem;

    move-result-object v3

    .line 168
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->e()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->b()Z

    move-result v4

    if-nez v4, :cond_1

    .line 169
    :cond_0
    monitor-exit v2

    move v0, v1

    .line 172
    :goto_0
    return v0

    .line 171
    :cond_1
    sget-object v1, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;->b:Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

    invoke-direct {p0, v3, v1}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a(Lcom/snapchat/android/controller/countdown/SnapCountdownItem;Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;)V

    .line 172
    monitor-exit v2

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Lcom/snapchat/android/model/ReceivedSnap;)Z
    .locals 5
    .parameter

    .prologue
    .line 198
    const-string v0, "SnapCountdownController"

    const-string v1, "refreshTimer %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    iget-object v1, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->c:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a(Ljava/util/Map;Lcom/snapchat/android/model/ReceivedSnap;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
