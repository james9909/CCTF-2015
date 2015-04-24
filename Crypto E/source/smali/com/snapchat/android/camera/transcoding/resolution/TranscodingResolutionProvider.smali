.class public abstract Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/snapchat/android/util/Resolution;

.field protected final b:Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/Resolution;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-static {}, Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;->a()Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProvider;-><init>(Lcom/snapchat/android/util/Resolution;Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/util/Resolution;Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProvider;->a:Lcom/snapchat/android/util/Resolution;

    .line 37
    iput-object p2, p0, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProvider;->b:Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;

    .line 38
    return-void
.end method

.method private a(Lcom/snapchat/android/util/Resolution;I)F
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 79
    int-to-float v0, p2

    invoke-virtual {p1}, Lcom/snapchat/android/util/Resolution;->d()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private a(ILjava/util/List;)Lcom/snapchat/android/util/Resolution;
    .locals 4
    .parameter
    .parameter
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/util/Resolution;",
            ">;)",
            "Lcom/snapchat/android/util/Resolution;"
        }
    .end annotation

    .prologue
    .line 65
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    .line 69
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/Resolution;

    .line 70
    invoke-direct {p0, v0, p1}, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProvider;->a(Lcom/snapchat/android/util/Resolution;I)F

    move-result v2

    const/high16 v3, 0x4080

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    goto :goto_0

    .line 75
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/Resolution;

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/snapchat/android/util/Resolution;
    .locals 1
    .parameter
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProvider;->b:Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;->b()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProvider;->a(ILjava/util/Set;)Lcom/snapchat/android/util/Resolution;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/util/Set;)Lcom/snapchat/android/util/Resolution;
    .locals 4
    .parameter
    .parameter
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/util/Resolution;",
            ">;)",
            "Lcom/snapchat/android/util/Resolution;"
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProvider;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 48
    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProvider;->a(Ljava/util/List;)V

    .line 49
    invoke-virtual {p0, v0, p2}, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProvider;->a(Ljava/util/List;Ljava/util/Set;)V

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProvider;->a(ILjava/util/List;)Lcom/snapchat/android/util/Resolution;

    move-result-object v0

    .line 53
    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    .line 56
    :cond_0
    const-string v1, "TranscodingResolutionProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting bitrate to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resolution "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/snapchat/android/util/Resolution;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/snapchat/android/util/Resolution;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bitrateperPixel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0, p1}, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProvider;->a(Lcom/snapchat/android/util/Resolution;I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected abstract a()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/util/Resolution;",
            ">;"
        }
    .end annotation
.end method

.method public a(Ljava/util/List;)V
    .locals 6
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
    const/high16 v5, 0x4020

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/Resolution;

    .line 85
    iget-object v3, p0, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProvider;->a:Lcom/snapchat/android/util/Resolution;

    invoke-virtual {v3}, Lcom/snapchat/android/util/Resolution;->a()I

    move-result v3

    invoke-virtual {v0}, Lcom/snapchat/android/util/Resolution;->a()I

    move-result v4

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProvider;->a:Lcom/snapchat/android/util/Resolution;

    invoke-virtual {v3}, Lcom/snapchat/android/util/Resolution;->b()I

    move-result v3

    invoke-virtual {v0}, Lcom/snapchat/android/util/Resolution;->b()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 87
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_2
    iget-object v3, p0, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProvider;->a:Lcom/snapchat/android/util/Resolution;

    invoke-virtual {v3}, Lcom/snapchat/android/util/Resolution;->a()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/snapchat/android/util/Resolution;->a()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_3

    iget-object v3, p0, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProvider;->a:Lcom/snapchat/android/util/Resolution;

    invoke-virtual {v3}, Lcom/snapchat/android/util/Resolution;->b()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/snapchat/android/util/Resolution;->b()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 91
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_4
    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 95
    return-void
.end method

.method protected a(Ljava/util/List;Ljava/util/Set;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/util/Resolution;",
            ">;",
            "Ljava/util/Set",
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
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/Resolution;

    .line 108
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 112
    :cond_1
    return-void
.end method
