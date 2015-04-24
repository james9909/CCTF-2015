.class Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader$1;->a:Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
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
            "Lcom/snapchat/android/discover/model/ChannelPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 141
    .line 143
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/ChannelPage;

    .line 144
    iget-object v4, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader$1;->a:Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->a(Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 145
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->s()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v5

    sget-object v6, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader$1;->a:Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;

    invoke-static {v5}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->a(Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;)Lcom/snapchat/android/util/cache/Cache;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/snapchat/android/util/cache/Cache;->f(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 147
    const-string v4, "PublisherIconMediaLoader"

    const-string v5, "DISCOVER-MEDIA-BRAND-ICON: Resetting filled icon media state for %s because it is not in the cache %s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    iget-object v4, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader$1;->a:Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;

    invoke-static {v4}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->b(Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;)Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v4, v0, v5}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->b(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 154
    :cond_0
    iget-object v4, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader$1;->a:Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->a(Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 155
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->t()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v5

    sget-object v6, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader$1;->a:Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;

    invoke-static {v5}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->a(Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;)Lcom/snapchat/android/util/cache/Cache;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/snapchat/android/util/cache/Cache;->f(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 157
    const-string v4, "PublisherIconMediaLoader"

    const-string v5, "DISCOVER-MEDIA-BRAND-ICON: Resetting inverted icon media state for %s because it is not in the cache %s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iget-object v4, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader$1;->a:Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;

    invoke-static {v4}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->b(Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;)Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v4, v0, v5}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->c(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 164
    :cond_1
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->u()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v4, v5, :cond_4

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader$1;->a:Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;

    invoke-static {v4}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->a(Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;)Lcom/snapchat/android/util/cache/Cache;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader$1;->a:Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->a(Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/snapchat/android/util/cache/Cache;->f(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 167
    const-string v4, "PublisherIconMediaLoader"

    const-string v5, "BRAND-ICON: Resetting loading icon media state for %s because it is not in the cache %s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    iget-object v4, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader$1;->a:Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;

    invoke-static {v4}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->b(Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;)Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v4, v0, v5}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->d(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/2addr v1, v0

    move v0, v1

    :goto_1
    move v1, v0

    .line 171
    goto/16 :goto_0

    .line 174
    :cond_2
    if-eqz v1, :cond_3

    .line 175
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader$1;->a:Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;

    invoke-static {v0}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->c(Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;)Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->c()V

    .line 177
    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_1
.end method
