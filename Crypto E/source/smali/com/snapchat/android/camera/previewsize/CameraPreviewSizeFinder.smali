.class public Lcom/snapchat/android/camera/previewsize/CameraPreviewSizeFinder;
.super Lcom/snapchat/android/camera/previewsize/VideoRecordingSizeFinder;
.source "SourceFile"


# instance fields
.field private final a:Lcom/snapchat/android/camera/util/DeviceExceptions;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/camera/util/DeviceExceptions;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/snapchat/android/camera/previewsize/VideoRecordingSizeFinder;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/snapchat/android/camera/previewsize/CameraPreviewSizeFinder;->a:Lcom/snapchat/android/camera/util/DeviceExceptions;

    .line 42
    return-void
.end method

.method private b(Landroid/hardware/Camera$Parameters;DZ)Lcom/snapchat/android/util/Resolution;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 176
    invoke-virtual {p0, p1, v3}, Lcom/snapchat/android/camera/previewsize/CameraPreviewSizeFinder;->b(Landroid/hardware/Camera$Parameters;Z)Ljava/util/List;

    move-result-object v0

    .line 177
    invoke-virtual {p0, p1, v3}, Lcom/snapchat/android/camera/previewsize/CameraPreviewSizeFinder;->a(Landroid/hardware/Camera$Parameters;Z)Ljava/util/List;

    move-result-object v1

    .line 180
    invoke-direct {p0, v1}, Lcom/snapchat/android/camera/previewsize/CameraPreviewSizeFinder;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 182
    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/camera/previewsize/CameraPreviewSizeFinder;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 184
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 188
    :goto_0
    const-string v1, "CameraPreviewSizeFinder"

    const-string v2, "Preview Size Finding: finding best preview size from list of supported preview sizes"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/snapchat/android/camera/previewsize/CameraPreviewSizeFinder;->a(Ljava/util/List;DZ)Lcom/snapchat/android/util/Resolution;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private e(Ljava/util/List;)Ljava/util/Set;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/util/Resolution;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 126
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/Resolution;

    .line 127
    invoke-virtual {v0}, Lcom/snapchat/android/util/Resolution;->c()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    :cond_0
    return-object v1
.end method

.method private f(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/util/Resolution;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/util/Resolution;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 194
    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/previewsize/CameraPreviewSizeFinder;->c(Ljava/util/List;)V

    .line 195
    return-object v0
.end method


# virtual methods
.method public a(Landroid/hardware/Camera$Parameters;DZ)Lcom/snapchat/android/util/Resolution;
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 90
    const-string v0, "CameraPreviewSizeFinder"

    const-string v1, "Preview Size Finding: finding best HQ preview"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/camera/previewsize/CameraPreviewSizeFinder;->b(Landroid/hardware/Camera$Parameters;Z)Ljava/util/List;

    move-result-object v0

    .line 92
    invoke-virtual {p0, p1, p4}, Lcom/snapchat/android/camera/previewsize/CameraPreviewSizeFinder;->a(Landroid/hardware/Camera$Parameters;Z)Ljava/util/List;

    move-result-object v1

    .line 95
    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/camera/previewsize/CameraPreviewSizeFinder;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 97
    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/previewsize/CameraPreviewSizeFinder;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 99
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/snapchat/android/camera/previewsize/CameraPreviewSizeFinder;->a(Ljava/util/List;DZ)Lcom/snapchat/android/util/Resolution;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/hardware/Camera$Parameters;IDZ)Lcom/snapchat/android/util/Resolution;
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 58
    const-string v0, "CameraPreviewSizeFinder"

    const-string v1, "Preview Size Finding: finding best fit preview size for AspectRatio[%f]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    invoke-super/range {p0 .. p5}, Lcom/snapchat/android/camera/previewsize/VideoRecordingSizeFinder;->a(Landroid/hardware/Camera$Parameters;IDZ)Lcom/snapchat/android/util/Resolution;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/snapchat/android/util/Resolution;->c()D

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, p5}, Lcom/snapchat/android/camera/previewsize/CameraPreviewSizeFinder;->b(Landroid/hardware/Camera$Parameters;DZ)Lcom/snapchat/android/util/Resolution;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/hardware/Camera$Parameters;Z)Ljava/util/List;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
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
    .line 134
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 135
    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/previewsize/CameraPreviewSizeFinder;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 136
    if-eqz p2, :cond_0

    .line 137
    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/previewsize/CameraPreviewSizeFinder;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 139
    :cond_0
    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/previewsize/CameraPreviewSizeFinder;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 140
    return-object v0
.end method

.method protected a(Ljava/util/List;)Ljava/util/List;
    .locals 3
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
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/util/Resolution;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 152
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 153
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/Resolution;

    .line 155
    invoke-virtual {v0}, Lcom/snapchat/android/util/Resolution;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 159
    :cond_1
    return-object v1
.end method

.method protected a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/util/Resolution;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/util/Resolution;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/util/Resolution;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 113
    invoke-direct {p0, p2}, Lcom/snapchat/android/camera/previewsize/CameraPreviewSizeFinder;->e(Ljava/util/List;)Ljava/util/Set;

    move-result-object v2

    .line 114
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 115
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/Resolution;

    .line 117
    invoke-virtual {v0}, Lcom/snapchat/android/util/Resolution;->c()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 121
    :cond_1
    return-object v1
.end method

.method protected b(Ljava/util/List;)Ljava/util/List;
    .locals 2
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
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/util/Resolution;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 171
    iget-object v1, p0, Lcom/snapchat/android/camera/previewsize/CameraPreviewSizeFinder;->a:Lcom/snapchat/android/camera/util/DeviceExceptions;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/util/DeviceExceptions;->b()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 172
    return-object v0
.end method
