.class public Lcom/snapchat/android/ui/here/DummyStreamView;
.super Lcom/snapchat/android/ui/here/StreamView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/here/StreamView;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/here/StreamView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/ui/here/StreamView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public static getLastInstance()Lcom/snapchat/android/ui/here/DummyStreamView;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setCameraInfo(Landroid/hardware/Camera$CameraInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    return-void
.end method

.method public static setCameraPreviewSize(Lcom/snapchat/android/util/Resolution;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/snapchat/android/ui/here/StreamView$StreamViewCallback;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 43
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 70
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    return-void
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    return-void
.end method

.method public a(Lcom/snapchat/android/ui/here/DisconnectReason;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 106
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 91
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public b(Lcom/snapchat/android/ui/here/DisconnectReason;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 100
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 115
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public onCameraReadyEvent(Lcom/snapchat/android/util/eventbus/CameraReadyEvent;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 85
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public setCanStreamVideo(ZLcom/snapchat/android/ui/here/DisconnectReason;)V
    .locals 0
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 94
    return-void
.end method
