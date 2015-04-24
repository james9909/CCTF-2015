.class public Lcom/snapchat/android/discover/ui/media/VideoRenditionSelector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/ui/media/VideoRenditionSelector$VideoRenditionDimensionComparator;
    }
.end annotation


# instance fields
.field private final a:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;

.field private final b:Lcom/snapchat/android/api/ScreenParameterProvider;

.field private final c:Lcom/snapchat/android/networkmanager/BandwidthEstimator;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 33
    invoke-static {}, Lcom/snapchat/android/api/ScreenParameterProvider;->a()Lcom/snapchat/android/api/ScreenParameterProvider;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;

    invoke-direct {v1}, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;-><init>()V

    invoke-static {}, Lcom/snapchat/android/networkmanager/BandwidthEstimator;->a()Lcom/snapchat/android/networkmanager/BandwidthEstimator;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/discover/ui/media/VideoRenditionSelector;-><init>(Lcom/snapchat/android/api/ScreenParameterProvider;Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;Lcom/snapchat/android/networkmanager/BandwidthEstimator;)V

    .line 35
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/api/ScreenParameterProvider;Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;Lcom/snapchat/android/networkmanager/BandwidthEstimator;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/media/VideoRenditionSelector;->b:Lcom/snapchat/android/api/ScreenParameterProvider;

    .line 42
    iput-object p2, p0, Lcom/snapchat/android/discover/ui/media/VideoRenditionSelector;->a:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;

    .line 43
    iput-object p3, p0, Lcom/snapchat/android/discover/ui/media/VideoRenditionSelector;->c:Lcom/snapchat/android/networkmanager/BandwidthEstimator;

    .line 44
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/data/gson/discover/VideoSequenceItem;)Lcom/snapchat/android/discover/ui/media/VideoProperties;
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-virtual {p1}, Lcom/snapchat/data/gson/discover/VideoSequenceItem;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/snapchat/android/discover/ui/media/VideoProperties;

    invoke-virtual {p1}, Lcom/snapchat/data/gson/discover/VideoSequenceItem;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;->b:Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/ui/media/VideoProperties;-><init>(Ljava/lang/String;Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;)V

    .line 61
    :goto_0
    invoke-virtual {p1}, Lcom/snapchat/data/gson/discover/VideoSequenceItem;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/data/gson/discover/VideoSequenceItem;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 77
    :cond_0
    :goto_1
    return-object v0

    .line 58
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/media/VideoRenditionSelector;->a:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;->a()Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;->a:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

    if-ne v1, v2, :cond_3

    .line 66
    const-string v1, "VideoRenditionSelector"

    const-string v2, "Selecting HLS url because configuration says so."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 68
    :cond_3
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/media/VideoRenditionSelector;->a:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;->a()Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;->b:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

    if-ne v1, v2, :cond_4

    .line 69
    const-string v0, "VideoRenditionSelector"

    const-string v1, "Selecting best MP4 url because configuration says so."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p1}, Lcom/snapchat/data/gson/discover/VideoSequenceItem;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/media/VideoRenditionSelector;->a(Ljava/util/List;)Lcom/snapchat/android/discover/ui/media/VideoProperties;

    move-result-object v0

    goto :goto_1

    .line 72
    :cond_4
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/media/VideoRenditionSelector;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 73
    const-string v1, "VideoRenditionSelector"

    const-string v2, "Selecting HLS url based on client decision."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 76
    :cond_5
    const-string v0, "VideoRenditionSelector"

    const-string v1, "Selecting best MP4 url because configuration says so."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p1}, Lcom/snapchat/data/gson/discover/VideoSequenceItem;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/media/VideoRenditionSelector;->a(Ljava/util/List;)Lcom/snapchat/android/discover/ui/media/VideoProperties;

    move-result-object v0

    goto :goto_1
.end method

.method protected a(Ljava/util/List;)Lcom/snapchat/android/discover/ui/media/VideoProperties;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/data/gson/discover/VideoRendition;",
            ">;)",
            "Lcom/snapchat/android/discover/ui/media/VideoProperties;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 87
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 88
    new-instance v0, Lcom/snapchat/android/discover/ui/media/VideoRenditionSelector$VideoRenditionDimensionComparator;

    invoke-direct {v0}, Lcom/snapchat/android/discover/ui/media/VideoRenditionSelector$VideoRenditionDimensionComparator;-><init>()V

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v2, v3

    move-object v1, v4

    .line 94
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 95
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/data/gson/discover/VideoRendition;

    .line 96
    invoke-virtual {v0}, Lcom/snapchat/data/gson/discover/VideoRendition;->f()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string v6, "MP4"

    invoke-virtual {v0}, Lcom/snapchat/data/gson/discover/VideoRendition;->f()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 102
    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/media/VideoRenditionSelector;->a(Lcom/snapchat/data/gson/discover/VideoRendition;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/media/VideoRenditionSelector;->b(Lcom/snapchat/data/gson/discover/VideoRendition;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 94
    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 109
    :cond_1
    if-eqz v1, :cond_2

    .line 110
    const-string v0, "VideoRenditionSelector"

    const-string v2, "Selected rendition %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    invoke-static {v0, v2, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    new-instance v4, Lcom/snapchat/android/discover/ui/media/VideoProperties;

    invoke-virtual {v1}, Lcom/snapchat/data/gson/discover/VideoRendition;->e()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;->a:Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;

    invoke-virtual {v1}, Lcom/snapchat/data/gson/discover/VideoRendition;->a()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Lcom/snapchat/data/gson/discover/VideoRendition;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v4, v0, v2, v3, v1}, Lcom/snapchat/android/discover/ui/media/VideoProperties;-><init>(Ljava/lang/String;Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 115
    :goto_2
    return-object v4

    .line 114
    :cond_2
    const-string v0, "VideoRenditionSelector"

    const-string v1, "No valid MP4 rendition was found!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method protected a()Z
    .locals 2

    .prologue
    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/media/VideoRenditionSelector;->a:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;->b()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/snapchat/data/gson/discover/VideoRendition;)Z
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 130
    invoke-virtual {p1}, Lcom/snapchat/data/gson/discover/VideoRendition;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/snapchat/data/gson/discover/VideoRendition;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 131
    invoke-virtual {p1}, Lcom/snapchat/data/gson/discover/VideoRendition;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/snapchat/data/gson/discover/VideoRendition;->c()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 132
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/media/VideoRenditionSelector;->b:Lcom/snapchat/android/api/ScreenParameterProvider;

    invoke-virtual {v2}, Lcom/snapchat/android/api/ScreenParameterProvider;->c()I

    move-result v2

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/media/VideoRenditionSelector;->b:Lcom/snapchat/android/api/ScreenParameterProvider;

    invoke-virtual {v3}, Lcom/snapchat/android/api/ScreenParameterProvider;->d()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 134
    iget-object v3, p0, Lcom/snapchat/android/discover/ui/media/VideoRenditionSelector;->b:Lcom/snapchat/android/api/ScreenParameterProvider;

    invoke-virtual {v3}, Lcom/snapchat/android/api/ScreenParameterProvider;->c()I

    move-result v3

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/media/VideoRenditionSelector;->b:Lcom/snapchat/android/api/ScreenParameterProvider;

    invoke-virtual {v4}, Lcom/snapchat/android/api/ScreenParameterProvider;->d()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 136
    if-gt v0, v2, :cond_0

    if-gt v1, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Lcom/snapchat/data/gson/discover/VideoRendition;)Z
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoRenditionSelector;->a:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;->c()F

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/media/VideoRenditionSelector;->c:Lcom/snapchat/android/networkmanager/BandwidthEstimator;

    invoke-virtual {v1}, Lcom/snapchat/android/networkmanager/BandwidthEstimator;->b()J

    move-result-wide v2

    long-to-float v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 144
    invoke-virtual {p1}, Lcom/snapchat/data/gson/discover/VideoRendition;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
