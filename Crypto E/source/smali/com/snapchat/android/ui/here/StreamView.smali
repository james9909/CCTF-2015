.class public abstract Lcom/snapchat/android/ui/here/StreamView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/livechat/LiveChatProvider$LiveChatProviderCallback;
.implements Lcom/snapchat/android/ui/ChatCameraButton$TouchEventSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/here/StreamView$StreamViewCallback;
    }
.end annotation


# static fields
.field protected static final h:Lcom/addlive/service/AddLiveService$VideoFrameMetadata;

.field protected static final i:Lcom/snapchat/android/ui/here/LocalPreviewHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;

    invoke-direct {v0}, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;-><init>()V

    sput-object v0, Lcom/snapchat/android/ui/here/StreamView;->h:Lcom/addlive/service/AddLiveService$VideoFrameMetadata;

    .line 31
    new-instance v0, Lcom/snapchat/android/ui/here/LocalPreviewHolder;

    invoke-direct {v0}, Lcom/snapchat/android/ui/here/LocalPreviewHolder;-><init>()V

    sput-object v0, Lcom/snapchat/android/ui/here/StreamView;->i:Lcom/snapchat/android/ui/here/LocalPreviewHolder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public static getLastInstance()Lcom/snapchat/android/ui/here/StreamView;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setCameraInfo(Landroid/hardware/Camera$CameraInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 144
    sget-object v0, Lcom/snapchat/android/ui/here/StreamView;->h:Lcom/addlive/service/AddLiveService$VideoFrameMetadata;

    invoke-virtual {v0, p0}, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->setInfo(Landroid/hardware/Camera$CameraInfo;)V

    .line 146
    sget-object v0, Lcom/snapchat/android/ui/here/StreamView;->i:Lcom/snapchat/android/ui/here/LocalPreviewHolder;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LocalPreviewHolder;->a()V

    .line 147
    return-void
.end method

.method public static setCameraPreviewSize(Lcom/snapchat/android/util/Resolution;)V
    .locals 2
    .parameter

    .prologue
    .line 150
    sget-object v0, Lcom/snapchat/android/ui/here/StreamView;->h:Lcom/addlive/service/AddLiveService$VideoFrameMetadata;

    invoke-virtual {p0}, Lcom/snapchat/android/util/Resolution;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->setWidth(I)V

    .line 151
    sget-object v0, Lcom/snapchat/android/ui/here/StreamView;->h:Lcom/addlive/service/AddLiveService$VideoFrameMetadata;

    invoke-virtual {p0}, Lcom/snapchat/android/util/Resolution;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->setHeight(I)V

    .line 153
    sget-object v0, Lcom/snapchat/android/ui/here/StreamView;->i:Lcom/snapchat/android/ui/here/LocalPreviewHolder;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LocalPreviewHolder;->a()V

    .line 154
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/app/Activity;Lcom/snapchat/android/ui/here/StreamView$StreamViewCallback;)V
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
.end method

.method public abstract a(Landroid/view/MotionEvent;)V
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
.end method

.method public abstract a(Lcom/snapchat/android/model/chat/ChatConversation;)V
.end method

.method public abstract b()V
.end method

.method public abstract b(Lcom/snapchat/android/ui/here/DisconnectReason;)V
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
.end method

.method public abstract b(Z)V
.end method

.method public abstract c()V
.end method

.method public abstract d()Z
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 161
    return-void
.end method

.method public abstract e()Z
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 58
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public abstract onCameraReadyEvent(Lcom/snapchat/android/util/eventbus/CameraReadyEvent;)V
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 64
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method protected abstract onSizeChanged(IIII)V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public abstract setCanStreamVideo(ZLcom/snapchat/android/ui/here/DisconnectReason;)V
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
.end method
