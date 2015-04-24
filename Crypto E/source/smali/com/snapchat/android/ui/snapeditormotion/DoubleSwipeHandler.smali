.class public Lcom/snapchat/android/ui/snapeditormotion/DoubleSwipeHandler;
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
    invoke-virtual {p2}, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    invoke-virtual {p2, p3}, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->b(I)V

    .line 15
    invoke-virtual {p2, p3}, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->a(I)F

    move-result v0

    invoke-interface {p1, v0}, Lcom/snapchat/android/ui/SwipeDispatcher;->a(F)V

    .line 18
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/snapchat/android/ui/SwipeDispatcher;Lcom/snapchat/android/ui/snapeditormotion/TouchState;II)Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 24
    if-le p3, v0, :cond_0

    .line 25
    invoke-virtual {p2}, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->h()F

    move-result v1

    .line 26
    invoke-virtual {p2, v0}, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->a(I)F

    move-result v2

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, p4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 27
    const v2, 0x7f7fffff

    invoke-virtual {p2, v0, v2}, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->a(IF)V

    .line 28
    invoke-virtual {p2}, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->a()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    invoke-interface {p1, v0, v1}, Lcom/snapchat/android/ui/SwipeDispatcher;->a(ZF)V

    .line 31
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 28
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
    .line 36
    invoke-virtual {p2}, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {p1}, Lcom/snapchat/android/ui/SwipeDispatcher;->e()V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->a(Z)V

    .line 39
    sget-object v0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;->a:Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    .line 44
    :goto_0
    return-object v0

    .line 40
    :cond_0
    invoke-virtual {p2}, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    invoke-interface {p1}, Lcom/snapchat/android/ui/SwipeDispatcher;->e()V

    .line 44
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
