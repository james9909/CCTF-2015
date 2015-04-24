.class public Lcom/snapchat/android/util/cache/SaveSentStoryToCacheTask;
.super Lcom/snapchat/android/util/cache/SaveSentSnapToCacheTask;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/snapchat/android/util/cache/SaveSentSnapToCacheTask;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 77
    invoke-static {p2, p3}, Lcom/snapchat/android/util/SnapMediaUtils;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    sget-object v1, Lcom/snapchat/android/util/cache/Caches;->b:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v1, p1, v0}, Lcom/snapchat/android/util/cache/Cache;->a(Ljava/lang/String;[B)V

    .line 81
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/media/MediaMetadataRetriever;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    const/4 v2, 0x3

    invoke-virtual {p2, v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0, p1, v0, p3}, Lcom/snapchat/android/util/cache/SaveSentStoryToCacheTask;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 65
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/model/AnnotatedMediabryo;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-super {p0, p1}, Lcom/snapchat/android/util/cache/SaveSentSnapToCacheTask;->a(Lcom/snapchat/android/model/AnnotatedMediabryo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20
    :try_start_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->B()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/util/SnapMediaUtils;->b(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    sget-object v2, Lcom/snapchat/android/util/cache/Caches;->b:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/snapchat/android/util/cache/Cache;->a(Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/snapchat/android/util/cache/ExternalStorageUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :cond_0
    const/4 v0, 0x1

    .line 31
    :cond_1
    :goto_0
    return v0

    .line 25
    :catch_0
    move-exception v1

    .line 26
    const-string v1, "SaveSentSnapToCacheTask"

    const-string v2, "External storage not available."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected a(Lcom/snapchat/android/model/SnapVideobryo;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-super {p0, p1}, Lcom/snapchat/android/util/cache/SaveSentSnapToCacheTask;->a(Lcom/snapchat/android/model/SnapVideobryo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    :try_start_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 39
    invoke-virtual {p1}, Lcom/snapchat/android/model/SnapVideobryo;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Lcom/snapchat/android/model/SnapVideobryo;->N()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/snapchat/android/model/SnapVideobryo;->B()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3}, Lcom/snapchat/android/util/cache/SaveSentStoryToCacheTask;->a(Ljava/lang/String;Landroid/media/MediaMetadataRetriever;Landroid/graphics/Bitmap;)V

    .line 42
    const-string v1, "SaveSentSnapToCacheTask"

    const-string v2, "Transcoding finished"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/snapchat/android/util/cache/ExternalStorageUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    const/4 v0, 0x1

    .line 49
    :cond_0
    :goto_0
    return v0

    .line 43
    :catch_0
    move-exception v1

    .line 44
    const-string v1, "SaveSentSnapToCacheTask"

    const-string v2, "External storage not available."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
