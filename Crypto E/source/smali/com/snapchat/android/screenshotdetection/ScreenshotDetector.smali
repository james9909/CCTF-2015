.class public Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;


# instance fields
.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;->b:Ljava/util/Set;

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;->c:Ljava/util/LinkedList;

    .line 39
    return-void
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;
    .locals 2

    .prologue
    .line 42
    const-class v1, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;->a:Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;

    invoke-direct {v0}, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;-><init>()V

    sput-object v0, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;->a:Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;

    .line 45
    :cond_0
    sget-object v0, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;->a:Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;->a:Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;

    .line 50
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;)V
    .locals 2
    .parameter

    .prologue
    .line 72
    iget-object v1, p0, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;->c:Ljava/util/LinkedList;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 74
    monitor-exit v1

    .line 75
    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;JJ)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 140
    invoke-virtual {p1, p2, p3}, Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;->a(J)V

    .line 141
    invoke-virtual {p1, p4, p5}, Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;->b(J)V

    .line 142
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v1, p0, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;->c:Ljava/util/LinkedList;

    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 64
    iget-object v0, p0, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 65
    monitor-exit v1

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Ljava/util/List;J)V
    .locals 14
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v1, p0, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;->c:Ljava/util/LinkedList;

    monitor-enter v1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 100
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v8, p0, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;->c:Ljava/util/LinkedList;

    monitor-enter v8

    .line 105
    :try_start_1
    iget-object v0, p0, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v9

    .line 106
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 109
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;

    .line 111
    invoke-virtual {v1}, Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;->f()J

    move-result-wide v2

    .line 112
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    move-wide/from16 v6, p2

    .line 116
    :goto_2
    const-wide/16 v2, 0x1388

    add-long/2addr v2, v6

    .line 117
    invoke-virtual {v1}, Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;->e()J

    move-result-wide v4

    const-wide/16 v10, 0x3e8

    add-long/2addr v4, v10

    .line 119
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 121
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v11, v12, v4

    if-ltz v11, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v11, v12, v2

    if-gtz v11, :cond_3

    iget-object v11, p0, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;->b:Ljava/util/Set;

    invoke-interface {v11, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 124
    iget-object v2, p0, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;->b:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v0, p0

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;->a(Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;JJ)V

    .line 132
    :cond_4
    const-wide/16 v0, 0x2710

    add-long/2addr v0, v6

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    .line 133
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 97
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 136
    :cond_5
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_6
    move-wide v6, v2

    goto :goto_2
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;->a(Ljava/util/List;J)V

    .line 91
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v1, p0, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;->c:Ljava/util/LinkedList;

    monitor-enter v1

    .line 57
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;->c:Ljava/util/LinkedList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
