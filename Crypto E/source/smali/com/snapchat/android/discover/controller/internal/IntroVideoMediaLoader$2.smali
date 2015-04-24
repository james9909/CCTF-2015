.class Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader$2;
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
    .line 155
    iput-object p1, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader$2;->a:Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 9
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

    .line 158
    .line 160
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

    .line 161
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->v()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/MediaState;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 162
    const-string v4, "IntroVideoMediaLoader"

    const-string v5, "Resetting state for %s because it was in error state %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v2

    const/4 v7, 0x1

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->v()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    iget-object v4, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader$2;->a:Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;

    invoke-static {v4}, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->b(Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;)Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v4, v0, v5}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 166
    goto :goto_0

    .line 169
    :cond_0
    if-eqz v1, :cond_1

    .line 170
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader$2;->a:Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;

    invoke-static {v0}, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->c(Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;)Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->c()V

    .line 172
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method
