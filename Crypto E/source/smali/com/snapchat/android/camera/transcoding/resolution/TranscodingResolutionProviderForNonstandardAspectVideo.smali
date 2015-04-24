.class public Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderForNonstandardAspectVideo;
.super Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderFor16x9Video;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/Resolution;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderFor16x9Video;-><init>(Lcom/snapchat/android/util/Resolution;)V

    .line 17
    return-void
.end method

.method private b(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/util/Resolution;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/util/Resolution;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/Resolution;

    .line 33
    invoke-virtual {v0}, Lcom/snapchat/android/util/Resolution;->a()I

    move-result v3

    iget-object v4, p0, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderForNonstandardAspectVideo;->a:Lcom/snapchat/android/util/Resolution;

    invoke-virtual {v4}, Lcom/snapchat/android/util/Resolution;->a()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 34
    invoke-virtual {v0}, Lcom/snapchat/android/util/Resolution;->a()I

    move-result v3

    int-to-double v4, v3

    iget-object v3, p0, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderForNonstandardAspectVideo;->a:Lcom/snapchat/android/util/Resolution;

    invoke-virtual {v3}, Lcom/snapchat/android/util/Resolution;->a()I

    move-result v3

    int-to-double v6, v3

    div-double/2addr v4, v6

    .line 35
    iget-object v3, p0, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderForNonstandardAspectVideo;->a:Lcom/snapchat/android/util/Resolution;

    invoke-virtual {v3}, Lcom/snapchat/android/util/Resolution;->b()I

    move-result v3

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 36
    new-instance v4, Lcom/snapchat/android/util/Resolution;

    invoke-virtual {v0}, Lcom/snapchat/android/util/Resolution;->a()I

    move-result v0

    invoke-direct {v4, v0, v3}, Lcom/snapchat/android/util/Resolution;-><init>(II)V

    .line 37
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :cond_1
    return-object v1
.end method


# virtual methods
.method protected a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/util/Resolution;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    invoke-super {p0}, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderFor16x9Video;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 22
    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderForNonstandardAspectVideo;->b(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
