.class public Lcom/snapchat/android/discover/model/DiscoverCaches;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/snapchat/android/util/cache/Cache;

.field public static final b:Lcom/snapchat/android/util/cache/Cache;

.field public static final c:Lcom/snapchat/android/util/cache/Cache;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/32 v4, 0x9c40

    .line 16
    new-instance v0, Lcom/snapchat/android/util/cache/Cache;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->l:Lcom/snapchat/android/util/cache/CacheType;

    invoke-direct {v0, v1, v4, v5}, Lcom/snapchat/android/util/cache/Cache;-><init>(Lcom/snapchat/android/util/cache/CacheType;J)V

    sput-object v0, Lcom/snapchat/android/discover/model/DiscoverCaches;->a:Lcom/snapchat/android/util/cache/Cache;

    .line 18
    new-instance v0, Lcom/snapchat/android/util/cache/ZipFileCache;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->m:Lcom/snapchat/android/util/cache/CacheType;

    const-wide/16 v2, 0x2760

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/util/cache/ZipFileCache;-><init>(Lcom/snapchat/android/util/cache/CacheType;J)V

    sput-object v0, Lcom/snapchat/android/discover/model/DiscoverCaches;->b:Lcom/snapchat/android/util/cache/Cache;

    .line 21
    new-instance v0, Lcom/snapchat/android/util/cache/Cache;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->n:Lcom/snapchat/android/util/cache/CacheType;

    invoke-direct {v0, v1, v4, v5}, Lcom/snapchat/android/util/cache/Cache;-><init>(Lcom/snapchat/android/util/cache/CacheType;J)V

    sput-object v0, Lcom/snapchat/android/discover/model/DiscoverCaches;->c:Lcom/snapchat/android/util/cache/Cache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
