.class public Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/media/MediaPlayer$OnCompletionListener;

.field protected b:Landroid/media/MediaPlayer$OnPreparedListener;

.field private final c:Lcom/snapchat/android/discover/ui/media/VideoRenditionSelector;

.field private final d:Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;

.field private final e:Ljava/util/Map;
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

.field private f:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

.field private g:Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

.field private h:Lcom/snapchat/data/gson/discover/VideoCatalogResponse;

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/snapchat/android/discover/ui/media/VideoRenditionSelector;

    invoke-direct {v0}, Lcom/snapchat/android/discover/ui/media/VideoRenditionSelector;-><init>()V

    new-instance v1, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;

    invoke-direct {v1}, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;-><init>(Lcom/snapchat/android/discover/ui/media/VideoRenditionSelector;Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;)V

    .line 51
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/discover/ui/media/VideoRenditionSelector;Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->e:Ljava/util/Map;

    .line 43
    iput v2, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->i:I

    .line 44
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->j:Z

    .line 159
    new-instance v0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController$1;-><init>(Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->a:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 170
    new-instance v0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController$2;-><init>(Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 55
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->c:Lcom/snapchat/android/discover/ui/media/VideoRenditionSelector;

    .line 56
    iput-object p2, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->d:Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;

    .line 57
    return-void
.end method

.method private a(Ljava/util/Map;Lcom/snapchat/android/discover/ui/media/VideoProperties;)Lcom/brightcove/player/model/Video;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/snapchat/android/discover/ui/media/VideoProperties;",
            ")",
            "Lcom/brightcove/player/model/Video;"
        }
    .end annotation

    .prologue
    .line 224
    invoke-virtual {p2}, Lcom/snapchat/android/discover/ui/media/VideoProperties;->b()Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;->b:Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/brightcove/player/media/DeliveryType;->HLS:Lcom/brightcove/player/media/DeliveryType;

    .line 226
    :goto_0
    new-instance v1, Lcom/brightcove/player/model/Source;

    invoke-virtual {p2}, Lcom/snapchat/android/discover/ui/media/VideoProperties;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/brightcove/player/model/Source;-><init>(Ljava/lang/String;Lcom/brightcove/player/media/DeliveryType;)V

    .line 227
    new-instance v2, Lcom/brightcove/player/model/SourceCollection;

    invoke-direct {v2, v1, v0}, Lcom/brightcove/player/model/SourceCollection;-><init>(Lcom/brightcove/player/model/Source;Lcom/brightcove/player/media/DeliveryType;)V

    .line 228
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 229
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v1, Lcom/brightcove/player/model/Video;

    invoke-direct {v1, p1, v0}, Lcom/brightcove/player/model/Video;-><init>(Ljava/util/Map;Ljava/util/Set;)V

    return-object v1

    .line 224
    :cond_0
    sget-object v0, Lcom/brightcove/player/media/DeliveryType;->MP4:Lcom/brightcove/player/media/DeliveryType;

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;)Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->g:Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

    return-object v0
.end method

.method private c()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 184
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->f:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->h:Lcom/snapchat/data/gson/discover/VideoCatalogResponse;

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->f:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->clear()V

    .line 188
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->d:Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->c()V

    .line 191
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 192
    const-string v0, "pubId"

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->h:Lcom/snapchat/data/gson/discover/VideoCatalogResponse;

    invoke-virtual {v2}, Lcom/snapchat/data/gson/discover/VideoCatalogResponse;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v0, "id"

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->h:Lcom/snapchat/data/gson/discover/VideoCatalogResponse;

    invoke-virtual {v2}, Lcom/snapchat/data/gson/discover/VideoCatalogResponse;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v0, "name"

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->h:Lcom/snapchat/data/gson/discover/VideoCatalogResponse;

    invoke-virtual {v2}, Lcom/snapchat/data/gson/discover/VideoCatalogResponse;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->h:Lcom/snapchat/data/gson/discover/VideoCatalogResponse;

    invoke-virtual {v0}, Lcom/snapchat/data/gson/discover/VideoCatalogResponse;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/data/gson/discover/VideoSequenceItem;

    .line 198
    iget-object v3, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->c:Lcom/snapchat/android/discover/ui/media/VideoRenditionSelector;

    invoke-virtual {v3, v0}, Lcom/snapchat/android/discover/ui/media/VideoRenditionSelector;->a(Lcom/snapchat/data/gson/discover/VideoSequenceItem;)Lcom/snapchat/android/discover/ui/media/VideoProperties;

    move-result-object v3

    .line 199
    if-eqz v3, :cond_0

    .line 200
    const-string v4, "RemoteVideoViewController"

    const-string v5, "Selected rendition for id:%s, type:%s: %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->h:Lcom/snapchat/data/gson/discover/VideoCatalogResponse;

    invoke-virtual {v7}, Lcom/snapchat/data/gson/discover/VideoCatalogResponse;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v0}, Lcom/snapchat/data/gson/discover/VideoSequenceItem;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v9

    aput-object v3, v6, v10

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->d:Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->a(Lcom/snapchat/android/discover/ui/media/VideoProperties;)V

    .line 203
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->f:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    invoke-direct {p0, v1, v3}, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->a(Ljava/util/Map;Lcom/snapchat/android/discover/ui/media/VideoProperties;)Lcom/brightcove/player/model/Video;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->add(Lcom/brightcove/player/model/Video;)V

    goto :goto_0

    .line 205
    :cond_0
    const-string v3, "RemoteVideoViewController"

    const-string v4, "Failed to select rendition for id:%s, type:%s"

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->h:Lcom/snapchat/data/gson/discover/VideoCatalogResponse;

    invoke-virtual {v6}, Lcom/snapchat/data/gson/discover/VideoCatalogResponse;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v0}, Lcom/snapchat/data/gson/discover/VideoSequenceItem;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v9

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 210
    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->j:Z

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->f:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->start()V

    .line 214
    :cond_2
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->f:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->getDuration()I

    move-result v0

    return v0
.end method

.method public a(Lcom/brightcove/player/view/BrightcoveTextureVideoView;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->f:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    .line 66
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->c()V

    .line 67
    return-void
.end method

.method public a(Lcom/snapchat/data/gson/discover/VideoCatalogResponse;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 75
    const-string v0, "RemoteVideoViewController"

    const-string v1, "Assigning video properties: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->h:Lcom/snapchat/data/gson/discover/VideoCatalogResponse;

    .line 77
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->c()V

    .line 78
    return-void
.end method

.method public a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->f:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->e:Ljava/util/Map;

    const-string v2, "*"

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->d:Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;

    invoke-interface {v0, v2, v3}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "*"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->i:I

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->f:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    iget v1, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->i:I

    invoke-virtual {v0, v1}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->seekTo(I)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->f:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->start()V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->j:Z

    .line 103
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->d:Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 113
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->f:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v4

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->e:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0, v3}, Lcom/brightcove/player/event/EventEmitter;->off(Ljava/lang/String;I)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 117
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->f:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->getCurrentPosition()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->i:I

    .line 118
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->f:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->stopPlayback()V

    .line 119
    iput-boolean v1, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->j:Z

    .line 120
    return-void

    :cond_1
    move v0, v1

    .line 117
    goto :goto_1
.end method
