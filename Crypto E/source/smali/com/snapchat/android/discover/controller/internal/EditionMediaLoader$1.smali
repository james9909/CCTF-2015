.class Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader$1;->a:Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 10
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 157
    .line 159
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    .line 160
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->m()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/MediaState;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    const-string v4, "EditionMediaLoader"

    const-string v5, "Resetting placeholder state for %s because it was in error state %s"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->m()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    iget-object v4, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader$1;->a:Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;

    invoke-static {v4}, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->a(Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;)Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v4, v0, v5}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->b(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 165
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->l()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/MediaState;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 166
    const-string v4, "EditionMediaLoader"

    const-string v5, "Resetting media state for %s because it was in error state %s"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->l()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    iget-object v4, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader$1;->a:Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;

    invoke-static {v4}, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->a(Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;)Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v4, v0, v5}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 170
    goto :goto_0

    .line 173
    :cond_1
    if-eqz v1, :cond_2

    .line 174
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader$1;->a:Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;

    invoke-static {v0}, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->b(Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;)Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->c()V

    .line 176
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method
