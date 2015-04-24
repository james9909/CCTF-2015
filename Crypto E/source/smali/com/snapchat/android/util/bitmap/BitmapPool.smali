.class public Lcom/snapchat/android/util/bitmap/BitmapPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# static fields
.field private static final a:Lcom/snapchat/android/util/bitmap/BitmapPool;


# instance fields
.field private final b:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/snapchat/android/util/bitmap/BitmapPool;

    invoke-direct {v0}, Lcom/snapchat/android/util/bitmap/BitmapPool;-><init>()V

    sput-object v0, Lcom/snapchat/android/util/bitmap/BitmapPool;->a:Lcom/snapchat/android/util/bitmap/BitmapPool;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/PriorityQueue;

    const/4 v1, 0x6

    new-instance v2, Lcom/snapchat/android/util/bitmap/BitmapSizeComparator;

    invoke-direct {v2}, Lcom/snapchat/android/util/bitmap/BitmapSizeComparator;-><init>()V

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/snapchat/android/util/bitmap/BitmapPool;->b:Ljava/util/PriorityQueue;

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/util/bitmap/BitmapPool;->c:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/util/bitmap/BitmapPool;->d:Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public static a()Lcom/snapchat/android/util/bitmap/BitmapPool;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/snapchat/android/util/bitmap/BitmapPool;->a:Lcom/snapchat/android/util/bitmap/BitmapPool;

    return-object v0
.end method

.method private a(ILandroid/graphics/Bitmap;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 81
    iget-object v1, p0, Lcom/snapchat/android/util/bitmap/BitmapPool;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/BitmapPool;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/snapchat/android/util/bitmap/BitmapPool;->c()Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-object v2, p0, Lcom/snapchat/android/util/bitmap/BitmapPool;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_0
    monitor-exit v1

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/snapchat/android/util/bitmap/BitmapPool;ILandroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/util/bitmap/BitmapPool;->a(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 206
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    .line 207
    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, v2, :cond_0

    .line 208
    aget-object v0, v0, v2

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "UNKNOWN"

    goto :goto_0
.end method

.method private c(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 215
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 216
    iget-object v1, p0, Lcom/snapchat/android/util/bitmap/BitmapPool;->c:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/snapchat/android/util/bitmap/BitmapPool;->c:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 219
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "UNKNOWN"

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/util/bitmap/BitmapPool;->a(Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 111
    iget-object v1, p0, Lcom/snapchat/android/util/bitmap/BitmapPool;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/BitmapPool;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 113
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 115
    if-nez v0, :cond_1

    .line 116
    const-string v0, "BitmapPool"

    const-string v3, "Bitmap has been GC\'d."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 120
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 121
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bitmap is recycled, last added by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/snapchat/android/util/bitmap/BitmapPool;->c(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    :cond_2
    invoke-virtual {p0, v0, p1, p2}, Lcom/snapchat/android/util/bitmap/BitmapPool;->a(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    const-string v3, "BitmapPool"

    const-string v4, "Found a matching candidate."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 130
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 131
    monitor-exit v1

    .line 137
    :goto_1
    return-object v0

    .line 134
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    const-string v0, "BitmapPool"

    const-string v1, "No matching candidates found."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/util/bitmap/BitmapPool;->a(Landroid/graphics/Bitmap;Z)V

    .line 54
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 64
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 68
    if-eqz p2, :cond_2

    .line 69
    invoke-direct {p0, v0, p1}, Lcom/snapchat/android/util/bitmap/BitmapPool;->a(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 71
    :cond_2
    new-instance v1, Lcom/snapchat/android/util/bitmap/BitmapPool$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/snapchat/android/util/bitmap/BitmapPool$1;-><init>(Lcom/snapchat/android/util/bitmap/BitmapPool;ILandroid/graphics/Bitmap;)V

    invoke-static {v1}, Lcom/snapchat/android/util/threading/ThreadUtils;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected a(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;Z)Z
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 161
    iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snapchat/android/util/bitmap/BitmapUtils;->a(Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap$Config;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    :goto_0
    return v1

    .line 165
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 166
    invoke-virtual {p0, p1, p2, p3}, Lcom/snapchat/android/util/bitmap/BitmapPool;->b(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;Z)Z

    move-result v1

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v2, v3, :cond_2

    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ne v2, v0, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method protected b(Landroid/graphics/Bitmap;)I
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 202
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    return v0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 144
    iget-object v1, p0, Lcom/snapchat/android/util/bitmap/BitmapPool;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 145
    :try_start_0
    const-string v0, "BitmapPool"

    const-string v2, "Clearing bitmap pool"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/BitmapPool;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 147
    monitor-exit v1

    .line 148
    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected b(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;Z)Z
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 181
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v1, v2, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v0

    .line 186
    :cond_1
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v1, v2

    .line 187
    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v3, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v2, v3

    .line 191
    mul-int/2addr v1, v2

    iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v2}, Lcom/snapchat/android/util/bitmap/BitmapUtils;->a(Landroid/graphics/Bitmap$Config;)I

    move-result v2

    mul-int/2addr v1, v2

    .line 192
    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/bitmap/BitmapPool;->b(Landroid/graphics/Bitmap;)I

    move-result v2

    if-gt v1, v2, :cond_2

    iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 194
    const-string v2, "BitmapPool"

    const-string v3, "Using a candidate bitmap whose config != target bitmap config"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    :cond_2
    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/bitmap/BitmapPool;->b(Landroid/graphics/Bitmap;)I

    move-result v2

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
