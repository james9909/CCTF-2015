.class public Lcom/snapchat/android/camera/previewsize/VideoRecordingSizeFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/util/Resolution;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    new-instance v0, Lcom/snapchat/android/camera/previewsize/VideoRecordingSizeFinder$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/camera/previewsize/VideoRecordingSizeFinder$1;-><init>(Lcom/snapchat/android/camera/previewsize/VideoRecordingSizeFinder;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 195
    return-void
.end method

.method private a(Lcom/snapchat/android/util/Resolution;DDI)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 181
    if-nez p1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    cmpl-double v1, p2, p4

    if-gtz v1, :cond_0

    .line 184
    invoke-virtual {p1}, Lcom/snapchat/android/util/Resolution;->b()I

    move-result v1

    if-lt v1, p6, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected a()Lcom/snapchat/android/util/Resolution;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;

    invoke-direct {v0}, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;-><init>()V

    .line 68
    new-instance v1, Lcom/snapchat/android/util/Resolution;

    iget v2, v0, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;->widthPixels:I

    iget v0, v0, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;->heightPixels:I

    invoke-direct {v1, v2, v0}, Lcom/snapchat/android/util/Resolution;-><init>(II)V

    return-object v1
.end method

.method public a(Landroid/hardware/Camera$Parameters;IDZ)Lcom/snapchat/android/util/Resolution;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 48
    const-string v0, "VideoRecordingSizeFinder"

    const-string v1, "Preview Size Finding: finding best fit video size for AspectRatio[%f]"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p0, p1, v5}, Lcom/snapchat/android/camera/previewsize/VideoRecordingSizeFinder;->b(Landroid/hardware/Camera$Parameters;Z)Ljava/util/List;

    move-result-object v0

    .line 50
    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/snapchat/android/camera/previewsize/VideoRecordingSizeFinder;->a(Ljava/util/List;DZ)Lcom/snapchat/android/util/Resolution;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/util/List;DZ)Lcom/snapchat/android/util/Resolution;
    .locals 14
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/util/Resolution;",
            ">;DZ)",
            "Lcom/snapchat/android/util/Resolution;"
        }
    .end annotation

    .prologue
    .line 135
    const-wide v4, 0x7fefffffffffffffL

    .line 136
    const/4 v1, 0x0

    .line 138
    invoke-direct {p0, p1}, Lcom/snapchat/android/camera/previewsize/VideoRecordingSizeFinder;->a(Ljava/util/List;)V

    .line 139
    const-string v0, "VideoRecordingSizeFinder"

    const-string v2, "Preview Size Finding: Target aspect ratio %f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/snapchat/android/util/Resolution;

    .line 142
    invoke-virtual {v7}, Lcom/snapchat/android/util/Resolution;->c()D

    move-result-wide v2

    sub-double v2, v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 143
    const-string v0, "VideoRecordingSizeFinder"

    const-string v6, "Preview Size Finding: [%d x %d] AR [%f] difference [%f] pickhighest [%b]"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v7}, Lcom/snapchat/android/util/Resolution;->a()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v7}, Lcom/snapchat/android/util/Resolution;->b()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual {v7}, Lcom/snapchat/android/util/Resolution;->c()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v0, v6, v9}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    cmpg-double v0, v2, v4

    if-ltz v0, :cond_1

    if-nez p4, :cond_0

    const/16 v6, 0x2d0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/camera/previewsize/VideoRecordingSizeFinder;->a(Lcom/snapchat/android/util/Resolution;DDI)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    move-object v1, v7

    move-wide v4, v2

    .line 151
    goto :goto_0

    .line 155
    :cond_2
    if-eqz v1, :cond_3

    .line 156
    const-string v0, "VideoRecordingSizeFinder"

    const-string v2, "Preview Size Finding: Determined best size as [%d x %d]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/snapchat/android/util/Resolution;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/snapchat/android/util/Resolution;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    :goto_1
    return-object v1

    .line 159
    :cond_3
    const-string v0, "VideoRecordingSizeFinder"

    const-string v2, "Preview Size Finding: no good preview size found"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected b(Landroid/hardware/Camera$Parameters;Z)Ljava/util/List;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/util/Resolution;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    .line 79
    if-nez v0, :cond_0

    .line 81
    const-string v0, "VideoRecordingSizeFinder"

    const-string v1, "Preview Size Finding: preview output is the same as video output"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 85
    :cond_0
    if-nez v0, :cond_2

    .line 86
    const-string v0, "VideoRecordingSizeFinder"

    const-string v1, "Can not get sizes from hardware returning empty list"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    :cond_1
    :goto_0
    return-object v0

    .line 90
    :cond_2
    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/previewsize/VideoRecordingSizeFinder;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 92
    if-eqz p2, :cond_1

    .line 93
    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/previewsize/VideoRecordingSizeFinder;->c(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected c(Ljava/util/List;)V
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/util/Resolution;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 106
    invoke-virtual {p0}, Lcom/snapchat/android/camera/previewsize/VideoRecordingSizeFinder;->a()Lcom/snapchat/android/util/Resolution;

    move-result-object v2

    .line 107
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/Resolution;

    .line 109
    invoke-virtual {v0, v2}, Lcom/snapchat/android/util/Resolution;->a(Lcom/snapchat/android/util/Resolution;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    const-string v3, "VideoRecordingSizeFinder"

    const-string v4, "Preview Size Finder: Removing [%d, %d]. TOO LARGE!"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/snapchat/android/util/Resolution;->a()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/snapchat/android/util/Resolution;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 114
    :cond_1
    return-void
.end method

.method protected d(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/util/Resolution;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 121
    if-eqz v0, :cond_0

    .line 122
    new-instance v3, Lcom/snapchat/android/util/Resolution;

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v3, v4, v0}, Lcom/snapchat/android/util/Resolution;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_1
    return-object v1
.end method
