.class public Lcom/snapchat/android/camera/controller/DefaultFlashControllerImpl;
.super Lcom/snapchat/android/camera/controller/FlashController;
.source "SourceFile"


# instance fields
.field protected a:Lcom/snapchat/android/camera/model/CameraModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/snapchat/android/camera/controller/FlashController;-><init>()V

    .line 38
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 39
    iput-object p1, p0, Lcom/snapchat/android/camera/controller/DefaultFlashControllerImpl;->b:Landroid/view/View;

    .line 40
    return-void
.end method

.method private a(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/snapchat/android/camera/controller/DefaultFlashControllerImpl;->a:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->l()Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    move-result-object v0

    .line 106
    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 107
    :cond_0
    :goto_0
    return-object p1

    :cond_1
    if-nez p1, :cond_0

    invoke-interface {v0}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->c()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 112
    const/16 v0, 0x2bc

    return v0
.end method

.method public a(Landroid/hardware/Camera$Parameters;Z)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/snapchat/android/camera/controller/DefaultFlashControllerImpl;->a:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->l()Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/snapchat/android/camera/controller/DefaultFlashControllerImpl;->a:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/model/CameraModel;->e()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/snapchat/android/camera/util/FlashUtils;->b(Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-direct {p0, p1}, Lcom/snapchat/android/camera/controller/DefaultFlashControllerImpl;->a(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 51
    if-eqz p2, :cond_3

    .line 52
    const-string v2, "on"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    .line 55
    if-eqz v2, :cond_2

    const-string v3, "auto"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    const-string v2, "auto"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 61
    :cond_2
    :goto_1
    if-nez p1, :cond_0

    invoke-interface {v0, v1}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->a(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 59
    :cond_3
    const-string v2, "off"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 4
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    .line 66
    if-eqz p1, :cond_0

    .line 67
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChangeBrightnessEvent;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ChangeBrightnessEvent;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 69
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 70
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 71
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 72
    iget-object v1, p0, Lcom/snapchat/android/camera/controller/DefaultFlashControllerImpl;->b:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v1, p0, Lcom/snapchat/android/camera/controller/DefaultFlashControllerImpl;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 81
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChangeBrightnessEvent;

    const/high16 v2, -0x4080

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ChangeBrightnessEvent;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/snapchat/android/camera/controller/DefaultFlashControllerImpl;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 79
    iget-object v0, p0, Lcom/snapchat/android/camera/controller/DefaultFlashControllerImpl;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public b(Landroid/hardware/Camera$Parameters;Z)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/snapchat/android/camera/controller/DefaultFlashControllerImpl;->a:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->l()Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    move-result-object v0

    .line 86
    invoke-direct {p0, p1}, Lcom/snapchat/android/camera/controller/DefaultFlashControllerImpl;->a(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    if-eqz p2, :cond_3

    .line 89
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v2

    .line 90
    if-eqz v2, :cond_2

    const-string v3, "torch"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    const-string v2, "torch"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 96
    :cond_2
    :goto_1
    if-nez p1, :cond_0

    invoke-interface {v0, v1}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->a(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 94
    :cond_3
    const-string v2, "off"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_1
.end method
