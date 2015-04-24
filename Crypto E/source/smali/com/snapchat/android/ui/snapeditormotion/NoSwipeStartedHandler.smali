.class public Lcom/snapchat/android/ui/snapeditormotion/NoSwipeStartedHandler;
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
    if-nez p3, :cond_0

    .line 14
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->b(I)V

    .line 15
    invoke-virtual {p2}, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->g()F

    move-result v0

    invoke-interface {p1, v0}, Lcom/snapchat/android/ui/SwipeDispatcher;->a(F)V

    .line 16
    sget-object v0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;->b:Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    .line 18
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/ui/SwipeDispatcher;Lcom/snapchat/android/ui/snapeditormotion/TouchState;II)Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/snapchat/android/ui/SwipeDispatcher;Lcom/snapchat/android/ui/snapeditormotion/TouchState;Landroid/view/MotionEvent;)Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method
