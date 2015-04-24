.class public Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;
    .locals 2

    .prologue
    .line 21
    const-class v1, Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;->a:Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;

    invoke-direct {v0}, Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;-><init>()V

    sput-object v0, Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;->a:Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;

    .line 24
    :cond_0
    sget-object v0, Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;->a:Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 72
    invoke-static {p1}, Lcom/snapchat/android/util/SnapMediaUtils;->d(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/snapchat/android/model/AnnotatedMediabryo;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->B()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    if-eqz p2, :cond_0

    .line 64
    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 67
    :cond_0
    sget-object v1, Lcom/snapchat/android/util/cache/Caches;->h:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;->d(Lcom/snapchat/android/model/AnnotatedMediabryo;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v2, v0, v3}, Lcom/snapchat/android/util/cache/Cache;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)V

    .line 69
    return-void
.end method

.method public a(Lcom/snapchat/android/model/SnapVideobryo;)V
    .locals 3
    .parameter

    .prologue
    .line 95
    invoke-virtual {p1}, Lcom/snapchat/android/model/SnapVideobryo;->N()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {p1}, Lcom/snapchat/android/model/SnapVideobryo;->d()[B

    move-result-object v1

    .line 97
    invoke-virtual {p1}, Lcom/snapchat/android/model/SnapVideobryo;->B()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 98
    sget-object v2, Lcom/snapchat/android/util/cache/Caches;->h:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/util/cache/Cache;->a(Ljava/lang/String;[B)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    sget-object v1, Lcom/snapchat/android/util/cache/Caches;->h:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {p1}, Lcom/snapchat/android/model/SnapVideobryo;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/util/cache/Cache;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/AnnotatedMediabryo;)[B
    .locals 2
    .parameter

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {p1}, Lcom/snapchat/android/util/SnapUtils;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/snapchat/android/util/cache/Caches;->h:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/cache/Cache;->a(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/snapchat/android/util/cache/Caches;->g:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/cache/Cache;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 2
    .parameter

    .prologue
    .line 41
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {p1}, Lcom/snapchat/android/util/SnapUtils;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    sget-object v1, Lcom/snapchat/android/util/cache/Caches;->g:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/cache/Cache;->d(Ljava/lang/String;)V

    .line 52
    :goto_0
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->h:Lcom/snapchat/android/util/cache/Cache;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/Cache;->a(Z)V

    .line 53
    return-void

    .line 45
    :cond_0
    sget-object v1, Lcom/snapchat/android/util/cache/Caches;->h:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/cache/Cache;->d(Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->h:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;->d(Lcom/snapchat/android/model/AnnotatedMediabryo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/Cache;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Lcom/snapchat/android/model/AnnotatedMediabryo;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 79
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->h:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;->d(Lcom/snapchat/android/model/AnnotatedMediabryo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/Cache;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/snapchat/android/model/AnnotatedMediabryo;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "~overlay~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 3
    .parameter

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v0

    .line 91
    sget-object v1, Lcom/snapchat/android/util/cache/Caches;->g:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->d()[B

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/util/cache/Cache;->a(Ljava/lang/String;[B)V

    .line 92
    return-void
.end method
