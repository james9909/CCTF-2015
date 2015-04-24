.class public Lcom/snapchat/android/util/cache/SaveStoryToGalleryResolutionProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderFactory;

.field private final b:Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderFactory;->a()Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderFactory;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;->a()Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryResolutionProvider;-><init>(Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderFactory;Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;)V

    .line 38
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderFactory;Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryResolutionProvider;->a:Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderFactory;

    .line 50
    iput-object p2, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryResolutionProvider;->b:Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;

    .line 51
    return-void
.end method

.method private a(Lcom/snapchat/android/util/Resolution;)Lcom/snapchat/android/util/Resolution;
    .locals 14
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryResolutionProvider;->b:Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;->b()Ljava/util/Set;

    move-result-object v0

    .line 119
    invoke-virtual {p1}, Lcom/snapchat/android/util/Resolution;->c()D

    move-result-wide v8

    .line 121
    const/4 v3, 0x0

    .line 122
    const-wide/16 v4, 0x0

    .line 123
    const/4 v1, 0x0

    .line 125
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/Resolution;

    .line 126
    invoke-virtual {v0}, Lcom/snapchat/android/util/Resolution;->c()D

    move-result-wide v6

    .line 127
    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 128
    div-double/2addr v6, v8

    .line 130
    const-wide v12, 0x3fb999999999999aL

    cmpl-double v2, v6, v12

    if-gtz v2, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/snapchat/android/util/Resolution;->d()I

    move-result v2

    .line 136
    if-eqz v3, :cond_1

    cmpg-double v11, v6, v4

    if-ltz v11, :cond_1

    cmpl-double v11, v6, v4

    if-nez v11, :cond_3

    if-le v2, v1, :cond_3

    :cond_1
    move-object v1, v0

    move v0, v2

    move-wide v2, v6

    :goto_1
    move-wide v4, v2

    move-object v3, v1

    move v1, v0

    .line 142
    goto :goto_0

    .line 144
    :cond_2
    return-object v3

    :cond_3
    move v0, v1

    move-object v1, v3

    move-wide v2, v4

    goto :goto_1
.end method

.method private a(Lcom/snapchat/android/util/Resolution;I)Lcom/snapchat/android/util/Resolution;
    .locals 1
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryResolutionProvider;->a:Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderFactory;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderFactory;->a(Lcom/snapchat/android/util/Resolution;)Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProvider;

    move-result-object v0

    .line 96
    invoke-virtual {v0, p2}, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProvider;->a(I)Lcom/snapchat/android/util/Resolution;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryResolutionProvider;->a(Lcom/snapchat/android/util/Resolution;)Lcom/snapchat/android/util/Resolution;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/util/Map;)Lcom/snapchat/android/util/Resolution;
    .locals 16
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/snapchat/android/util/Resolution;",
            "Lcom/snapchat/android/util/Resolution;",
            ">;)",
            "Lcom/snapchat/android/util/Resolution;"
        }
    .end annotation

    .prologue
    .line 150
    const/4 v7, 0x0

    .line 151
    const/4 v6, 0x0

    .line 152
    const-wide/16 v4, 0x0

    .line 153
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 154
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/Resolution;

    .line 155
    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/snapchat/android/util/Resolution;->d()I

    move-result v1

    .line 160
    invoke-virtual {v0}, Lcom/snapchat/android/util/Resolution;->c()D

    move-result-wide v2

    .line 162
    const-wide/16 v10, 0x0

    cmpl-double v9, v4, v10

    if-eqz v9, :cond_1

    sub-double v10, v2, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x3ee4f8b588e368f1L

    cmpl-double v9, v10, v12

    if-lez v9, :cond_1

    .line 167
    const-string v9, "SaveStoryToGalleryResolutionProvider"

    const-string v10, "Story being saved contains media with different aspect ratios."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_1
    if-le v1, v6, :cond_3

    move-wide v14, v2

    move v2, v1

    move-object v3, v0

    move-wide v0, v14

    :goto_1
    move-wide v4, v0

    move v6, v2

    move-object v7, v3

    .line 176
    goto :goto_0

    .line 178
    :cond_2
    return-object v7

    :cond_3
    move-wide v0, v4

    move v2, v6

    move-object v3, v7

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/util/Collection;I)Lcom/snapchat/android/util/Resolution;
    .locals 4
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/util/Resolution;",
            ">;I)",
            "Lcom/snapchat/android/util/Resolution;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No media source resolutions to compare"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    if-gtz p2, :cond_1

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitrateCap must be positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 72
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/Resolution;

    .line 73
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 74
    invoke-direct {p0, v0, p2}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryResolutionProvider;->a(Lcom/snapchat/android/util/Resolution;I)Lcom/snapchat/android/util/Resolution;

    move-result-object v3

    .line 75
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 79
    :cond_3
    invoke-direct {p0, v1}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryResolutionProvider;->a(Ljava/util/Map;)Lcom/snapchat/android/util/Resolution;

    move-result-object v0

    .line 80
    return-object v0
.end method
