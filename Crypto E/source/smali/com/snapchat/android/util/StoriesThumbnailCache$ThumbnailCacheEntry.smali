.class Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/StoriesThumbnailCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThumbnailCacheEntry"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/util/StoriesThumbnailCache;

.field private b:Landroid/graphics/Bitmap;

.field private c:J

.field private d:J

.field private e:J

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/StoriesThumbnailCache;Landroid/graphics/Bitmap;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 65
    iput-object p1, p0, Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;->a:Lcom/snapchat/android/util/StoriesThumbnailCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean v2, p0, Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;->f:Z

    .line 66
    iput-object p2, p0, Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;->b:Landroid/graphics/Bitmap;

    .line 67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;->c:J

    .line 69
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->ae()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;->d:J

    .line 70
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->ae()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;->e:J

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;)Z
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;->f:Z

    return v0
.end method


# virtual methods
.method public a(Ljava/util/List;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 80
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->ae()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;->d:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v1

    .line 82
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->ae()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;->e:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;->c:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    const-wide/16 v6, 0x1e

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method
