.class public Lcom/snapchat/android/scan/SnapScan;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Z

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:I

.field private d:I

.field private e:I

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final i:Lcom/snapchat/android/scan/SnapScanCallback;

.field private final j:Ljava/util/concurrent/atomic/AtomicLong;

.field private k:J

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/snapchat/android/scan/SnapScan;->d()Z

    move-result v0

    sput-boolean v0, Lcom/snapchat/android/scan/SnapScan;->a:Z

    .line 24
    const-class v0, Lcom/snapchat/android/scan/SnapScan;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/scan/SnapScan;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIILcom/snapchat/android/scan/SnapScanCallback;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/snapchat/android/scan/SnapScan;->c:I

    .line 53
    iput p2, p0, Lcom/snapchat/android/scan/SnapScan;->d:I

    .line 54
    iput p3, p0, Lcom/snapchat/android/scan/SnapScan;->e:I

    .line 55
    iput-object p4, p0, Lcom/snapchat/android/scan/SnapScan;->i:Lcom/snapchat/android/scan/SnapScanCallback;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/snapchat/android/scan/SnapScan;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/snapchat/android/scan/SnapScan;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/snapchat/android/scan/SnapScan;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/snapchat/android/scan/SnapScan;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 61
    return-void
.end method

.method private a(J)D
    .locals 5
    .parameter

    .prologue
    .line 223
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    long-to-double v0, v0

    const-wide v2, 0x41cdcd6500000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method static synthetic a(Lcom/snapchat/android/scan/SnapScan;)I
    .locals 1
    .parameter

    .prologue
    .line 17
    iget v0, p0, Lcom/snapchat/android/scan/SnapScan;->c:I

    return v0
.end method

.method static synthetic a(Lcom/snapchat/android/scan/SnapScan;III[BI)Lcom/snapchat/android/scan/SnapScanResult;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct/range {p0 .. p5}, Lcom/snapchat/android/scan/SnapScan;->processFrame(III[BI)Lcom/snapchat/android/scan/SnapScanResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/scan/SnapScan;)I
    .locals 1
    .parameter

    .prologue
    .line 17
    iget v0, p0, Lcom/snapchat/android/scan/SnapScan;->d:I

    return v0
.end method

.method static synthetic c(Lcom/snapchat/android/scan/SnapScan;)I
    .locals 1
    .parameter

    .prologue
    .line 17
    iget v0, p0, Lcom/snapchat/android/scan/SnapScan;->e:I

    return v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/snapchat/android/scan/SnapScan;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/scan/SnapScan;)I
    .locals 2
    .parameter

    .prologue
    .line 17
    iget v0, p0, Lcom/snapchat/android/scan/SnapScan;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/snapchat/android/scan/SnapScan;->l:I

    return v0
.end method

.method private static d()Z
    .locals 3

    .prologue
    .line 228
    :try_start_0
    const-string v0, "stlport_shared"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 229
    const-string v0, "snapscan"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    const/4 v0, 0x1

    .line 233
    :goto_0
    return v0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v2, "Failed to load the SnapScan lib!!!"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->c()V

    .line 233
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/snapchat/android/scan/SnapScan;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScan;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/scan/SnapScan;)Lcom/snapchat/android/scan/SnapScanCallback;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScan;->i:Lcom/snapchat/android/scan/SnapScanCallback;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/scan/SnapScan;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScan;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private native processFrame(III[BI)Lcom/snapchat/android/scan/SnapScanResult;
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 202
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScan;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 203
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScan;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 204
    sget-object v0, Lcom/snapchat/android/scan/SnapScan;->b:Ljava/lang/String;

    const-string v1, "Disable Scanner..."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    return-void
.end method

.method public a([B)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 65
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScan;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    sget-boolean v0, Lcom/snapchat/android/scan/SnapScan;->a:Z

    if-nez v0, :cond_2

    .line 71
    sget-object v0, Lcom/snapchat/android/scan/SnapScan;->b:Ljava/lang/String;

    const-string v1, "SnapScan native lib failed to load! -- Scanning disabled!!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p0}, Lcom/snapchat/android/scan/SnapScan;->a()V

    .line 75
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScan;->i:Lcom/snapchat/android/scan/SnapScanCallback;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScan;->i:Lcom/snapchat/android/scan/SnapScanCallback;

    invoke-interface {v0}, Lcom/snapchat/android/scan/SnapScanCallback;->y()V

    goto :goto_0

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScan;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 85
    sget-object v0, Lcom/snapchat/android/scan/SnapScan;->b:Ljava/lang/String;

    const-string v1, "Started scanning..."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScan;->i:Lcom/snapchat/android/scan/SnapScanCallback;

    if-eqz v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScan;->i:Lcom/snapchat/android/scan/SnapScanCallback;

    invoke-interface {v0}, Lcom/snapchat/android/scan/SnapScanCallback;->x()V

    .line 91
    :cond_3
    iput v4, p0, Lcom/snapchat/android/scan/SnapScan;->l:I

    .line 92
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScan;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 93
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/scan/SnapScan;->k:J

    .line 94
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScan;->j:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v2, p0, Lcom/snapchat/android/scan/SnapScan;->k:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 98
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScan;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/scan/SnapScan;->a(J)D

    move-result-wide v0

    .line 99
    const-wide/high16 v2, 0x4014

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_5

    .line 100
    sget-object v0, Lcom/snapchat/android/scan/SnapScan;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopped scanning - Scan time is expired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/snapchat/android/scan/SnapScan;->k:J

    invoke-direct {p0, v2, v3}, Lcom/snapchat/android/scan/SnapScan;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    invoke-virtual {p0}, Lcom/snapchat/android/scan/SnapScan;->a()V

    .line 105
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScan;->i:Lcom/snapchat/android/scan/SnapScanCallback;

    if-eqz v0, :cond_5

    .line 106
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScan;->i:Lcom/snapchat/android/scan/SnapScanCallback;

    invoke-interface {v0}, Lcom/snapchat/android/scan/SnapScanCallback;->y()V

    .line 112
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScan;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Lcom/snapchat/android/scan/SnapScan$1;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/scan/SnapScan$1;-><init>(Lcom/snapchat/android/scan/SnapScan;[B)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/scan/SnapScan$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 209
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScan;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScan;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 215
    :goto_0
    sget-object v0, Lcom/snapchat/android/scan/SnapScan;->b:Ljava/lang/String;

    const-string v1, "Enable Scanner..."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScan;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 213
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScan;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method
