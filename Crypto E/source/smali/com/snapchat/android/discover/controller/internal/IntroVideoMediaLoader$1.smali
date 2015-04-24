.class Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader$1;->a:Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 7
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
    const/4 v2, 0x0

    .line 134
    .line 136
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/ChannelPage;

    .line 137
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->v()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader$1;->a:Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;

    invoke-static {v4}, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->a(Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;)Lcom/snapchat/android/util/cache/Cache;

    move-result-object v4

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->w()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/snapchat/android/util/cache/Cache;->f(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 139
    const-string v4, "IntroVideoMediaLoader"

    const-string v5, "Resetting intro video media state for %s because it is not in the cache %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    iget-object v4, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader$1;->a:Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;

    invoke-static {v4}, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->b(Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;)Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v4, v0, v5}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/2addr v1, v0

    move v0, v1

    :goto_1
    move v1, v0

    .line 143
    goto :goto_0

    .line 146
    :cond_0
    if-eqz v1, :cond_1

    .line 147
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader$1;->a:Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;

    invoke-static {v0}, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->c(Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;)Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->c()V

    .line 149
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method
