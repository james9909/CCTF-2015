.class public final Lcom/squareup/okhttp/internal/DiskLruCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/DiskLruCache$Entry;,
        Lcom/squareup/okhttp/internal/DiskLruCache$Editor;,
        Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field private static final p:Lokio/Sink;


# instance fields
.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:Ljava/io/File;

.field private final f:I

.field private g:J

.field private final h:I

.field private i:J

.field private j:Lokio/BufferedSink;

.field private final k:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/squareup/okhttp/internal/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:J

.field private final n:Ljava/util/concurrent/Executor;

.field private final o:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const-string v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/DiskLruCache;->a:Ljava/util/regex/Pattern;

    .line 794
    new-instance v0, Lcom/squareup/okhttp/internal/DiskLruCache$3;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$3;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/DiskLruCache;->p:Lokio/Sink;

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/DiskLruCache;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->l:I

    return p1
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/DiskLruCache;Ljava/lang/String;J)Lcom/squareup/okhttp/internal/DiskLruCache$Editor;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/okhttp/internal/DiskLruCache;->a(Ljava/lang/String;J)Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lcom/squareup/okhttp/internal/DiskLruCache$Editor;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 439
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->e()V

    .line 440
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/DiskLruCache;->d(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;

    .line 442
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    .line 443
    invoke-static {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->g(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 459
    :goto_0
    monitor-exit p0

    return-object v0

    .line 446
    :cond_1
    if-nez v0, :cond_2

    .line 447
    :try_start_1
    new-instance v0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;-><init>(Lcom/squareup/okhttp/internal/DiskLruCache;Ljava/lang/String;Lcom/squareup/okhttp/internal/DiskLruCache$1;)V

    .line 448
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 453
    :goto_1
    new-instance v0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;-><init>(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$Entry;Lcom/squareup/okhttp/internal/DiskLruCache$1;)V

    .line 454
    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->a(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    .line 457
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    const-string v2, "DIRTY"

    invoke-interface {v1, v2}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v1

    const/16 v2, 0x20

    invoke-interface {v1, v2}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, p1}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 458
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/BufferedSink;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 449
    :cond_2
    :try_start_2
    invoke-static {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->a(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Lcom/squareup/okhttp/internal/DiskLruCache$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 450
    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/DiskLruCache;)Lokio/BufferedSink;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;Z)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 494
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->a(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)Lcom/squareup/okhttp/internal/DiskLruCache$Entry;

    move-result-object v2

    .line 495
    invoke-static {v2}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->a(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 496
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 500
    :cond_0
    if-eqz p2, :cond_4

    :try_start_1
    invoke-static {v2}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->f(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v0

    .line 501
    :goto_0
    iget v3, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->h:I

    if-ge v1, v3, :cond_4

    .line 502
    invoke-static {p1}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->b(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-nez v3, :cond_1

    .line 503
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->b()V

    .line 504
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Newly created entry didn\'t create value for index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_1
    invoke-static {v2}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->d(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 507
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 551
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 501
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 513
    :cond_4
    :goto_2
    :try_start_2
    iget v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->h:I

    if-ge v0, v1, :cond_7

    .line 514
    invoke-static {v2}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->d(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v1

    aget-object v1, v1, v0

    .line 515
    if-eqz p2, :cond_6

    .line 516
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 517
    invoke-static {v2}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->c(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v3

    aget-object v3, v3, v0

    .line 518
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 519
    invoke-static {v2}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->b(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    .line 520
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 521
    invoke-static {v2}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->b(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)[J

    move-result-object v1

    aput-wide v6, v1, v0

    .line 522
    iget-wide v8, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->i:J

    sub-long v4, v8, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->i:J

    .line 513
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 525
    :cond_6
    invoke-static {v1}, Lcom/squareup/okhttp/internal/DiskLruCache;->a(Ljava/io/File;)V

    goto :goto_3

    .line 529
    :cond_7
    iget v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->l:I

    .line 530
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->a(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    .line 531
    invoke-static {v2}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->f(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Z

    move-result v0

    or-int/2addr v0, p2

    if-eqz v0, :cond_a

    .line 532
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->a(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;Z)Z

    .line 533
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    const-string v1, "CLEAN"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 534
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->e(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    .line 535
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    invoke-virtual {v2, v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->a(Lokio/BufferedSink;)V

    .line 536
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 537
    if-eqz p2, :cond_8

    .line 538
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->m:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->m:J

    invoke-static {v2, v0, v1}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->a(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;J)J

    .line 546
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->a()V

    .line 548
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->i:J

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->g:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 549
    :cond_9
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->n:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->o:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 541
    :cond_a
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->e(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    const-string v1, "REMOVE"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 543
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->e(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    .line 544
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$Editor;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/DiskLruCache;->a(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;Z)V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 3
    .parameter

    .prologue
    .line 393
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_0
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 399
    if-eqz p2, :cond_0

    .line 400
    invoke-static {p1}, Lcom/squareup/okhttp/internal/DiskLruCache;->a(Ljava/io/File;)V

    .line 402
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 403
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 405
    :cond_1
    return-void
.end method

.method private a(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 579
    invoke-static {p1}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->a(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 580
    invoke-static {p1}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->a(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->a(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;Z)Z

    .line 583
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->h:I

    if-ge v0, v1, :cond_1

    .line 584
    invoke-static {p1}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->c(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v1

    aget-object v1, v1, v0

    .line 585
    invoke-static {v1}, Lcom/squareup/okhttp/internal/DiskLruCache;->a(Ljava/io/File;)V

    .line 586
    iget-wide v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->i:J

    invoke-static {p1}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->b(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->i:J

    .line 587
    invoke-static {p1}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->b(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)[J

    move-result-object v1

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 583
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 590
    :cond_1
    iget v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->l:I

    .line 591
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    const-string v1, "REMOVE"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    move-result-object v0

    invoke-static {p1}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->e(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 592
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->e(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 595
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->n:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->o:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 598
    :cond_2
    return v6
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/DiskLruCache;->a(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Z

    move-result v0

    return v0
.end method

.method static synthetic b()Lokio/Sink;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/squareup/okhttp/internal/DiskLruCache;->p:Lokio/Sink;

    return-object v0
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/DiskLruCache;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->f()V

    return-void
.end method

.method private declared-synchronized c()V
    .locals 5

    .prologue
    .line 354
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->close()V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->d:Ljava/io/File;

    invoke-static {v0}, Lokio/Okio;->b(Ljava/io/File;)Lokio/Sink;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->a(Lokio/Sink;)Lokio/BufferedSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 360
    :try_start_1
    const-string v0, "libcore.io.DiskLruCache"

    invoke-interface {v1, v0}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 361
    const-string v0, "1"

    invoke-interface {v1, v0}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 362
    iget v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 363
    iget v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 364
    const/16 v0, 0xa

    invoke-interface {v1, v0}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 366
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;

    .line 367
    invoke-static {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->a(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 368
    const-string v3, "DIRTY"

    invoke-interface {v1, v3}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v3

    const/16 v4, 0x20

    invoke-interface {v3, v4}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 369
    invoke-static {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->e(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    .line 370
    const/16 v0, 0xa

    invoke-interface {v1, v0}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v1}, Lokio/BufferedSink;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 354
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 372
    :cond_1
    :try_start_3
    const-string v3, "CLEAN"

    invoke-interface {v1, v3}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v3

    const/16 v4, 0x20

    invoke-interface {v3, v4}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 373
    invoke-static {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->e(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    .line 374
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->a(Lokio/BufferedSink;)V

    .line 375
    const/16 v0, 0xa

    invoke-interface {v1, v0}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 379
    :cond_2
    :try_start_4
    invoke-interface {v1}, Lokio/BufferedSink;->close()V

    .line 382
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 383
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->c:Ljava/io/File;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->e:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/squareup/okhttp/internal/DiskLruCache;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 385
    :cond_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->d:Ljava/io/File;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->c:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/squareup/okhttp/internal/DiskLruCache;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 386
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 388
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->c:Ljava/io/File;

    invoke-static {v0}, Lokio/Okio;->c(Ljava/io/File;)Lokio/Sink;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->a(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 389
    monitor-exit p0

    return-void
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/DiskLruCache;)Z
    .locals 1
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/squareup/okhttp/internal/DiskLruCache;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->c()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 664
    sget-object v0, Lcom/squareup/okhttp/internal/DiskLruCache;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 665
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 666
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 669
    :cond_0
    return-void
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 558
    .line 559
    iget v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->l:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->l:I

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    .line 560
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/squareup/okhttp/internal/DiskLruCache;)I
    .locals 1
    .parameter

    .prologue
    .line 88
    iget v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->h:I

    return v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    if-nez v0, :cond_0

    .line 608
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/squareup/okhttp/internal/DiskLruCache;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->b:Ljava/io/File;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 636
    :goto_0
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->i:J

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;

    .line 638
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/DiskLruCache;->a(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Z

    goto :goto_0

    .line 640
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 413
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->e()V

    .line 414
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/DiskLruCache;->d(Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;

    .line 416
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->f(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move-object v0, v1

    .line 427
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 418
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->a()Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    move-result-object v0

    .line 419
    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    .line 421
    :cond_3
    iget v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->l:I

    .line 422
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    const-string v2, "READ"

    invoke-interface {v1, v2}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v1

    const/16 v2, 0x20

    invoke-interface {v1, v2}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, p1}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    .line 423
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 424
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->n:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->o:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/squareup/okhttp/internal/DiskLruCache$Editor;
    .locals 2
    .parameter

    .prologue
    .line 435
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/squareup/okhttp/internal/DiskLruCache;->a(Ljava/lang/String;J)Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 571
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->e()V

    .line 572
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/DiskLruCache;->d(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 575
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/DiskLruCache;->a(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 571
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 5

    .prologue
    .line 621
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 633
    :goto_0
    monitor-exit p0

    return-void

    .line 625
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-array v1, v1, [Lcom/squareup/okhttp/internal/DiskLruCache$Entry;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/okhttp/internal/DiskLruCache$Entry;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 626
    invoke-static {v3}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->a(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 627
    invoke-static {v3}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->a(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->b()V

    .line 625
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 630
    :cond_2
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->f()V

    .line 631
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->close()V

    .line 632
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
