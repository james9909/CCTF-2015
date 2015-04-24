.class public Lcom/snapchat/android/ui/snapeditormotion/SwipeStartHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/ui/snapeditormotion/ActionHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/ui/SwipeDispatcher;Lcom/snapchat/android/ui/snapeditormotion/TouchState;I)Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-virtual {p2}, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->g()F

    move-result v0

    .line 14
    invoke-virtual {p2, p3}, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->b(I)V

    .line 15
    invoke-interface {p1, v0}, Lcom/snapchat/android/ui/SwipeDispatcher;->a(F)V

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/snapchat/android/ui/SwipeDispatcher;Lcom/snapchat/android/ui/snapeditormotion/TouchState;II)Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 22
    invoke-virtual {p2}, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->g()F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->a(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v1, p4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    if-ne p3, v2, :cond_0

    invoke-interface {p1}, Lcom/snapchat/android/ui/SwipeDispatcher;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    sget-object v0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;->c:Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    .line 33
    :goto_0
    return-object v0

    .line 25
    :cond_0
    if-le p3, v2, :cond_1

    .line 26
    invoke-virtual {p2}, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->h()F

    move-result v0

    .line 27
    invoke-virtual {p2, v2}, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->a(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v1, p4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-interface {p1}, Lcom/snapchat/android/ui/SwipeDispatcher;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 29
    invoke-interface {p1}, Lcom/snapchat/android/ui/SwipeDispatcher;->d()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->a(Z)V

    .line 30
    sget-object v0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;->d:Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/ui/SwipeDispatcher;Lcom/snapchat/android/ui/snapeditormotion/TouchState;Landroid/view/MotionEvent;)Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-interface {p1, p3}, Lcom/snapchat/android/ui/SwipeDispatcher;->a(Landroid/view/MotionEvent;)V

    .line 39
    sget-object v0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;->a:Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    return-object v0
.end method
