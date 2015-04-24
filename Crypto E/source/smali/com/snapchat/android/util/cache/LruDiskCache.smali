.class public Lcom/snapchat/android/util/cache/LruDiskCache;
.super Lcom/snapchat/android/util/cache/Cache;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/cache/CacheType;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 16
    const-wide v0, 0x7fffffffffffffffL

    invoke-direct {p0, p1, v0, v1}, Lcom/snapchat/android/util/cache/Cache;-><init>(Lcom/snapchat/android/util/cache/CacheType;J)V

    .line 18
    if-gtz p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 20
    :cond_0
    new-instance v0, Lcom/snapchat/android/util/cache/LruDiskCache$1;

    const/high16 v3, 0x3f40

    const/4 v4, 0x1

    move-object v1, p0

    move v2, p2

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/util/cache/LruDiskCache$1;-><init>(Lcom/snapchat/android/util/cache/LruDiskCache;IFZI)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/cache/LruDiskCache;->a:Ljava/util/Map;

    .line 43
    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method
