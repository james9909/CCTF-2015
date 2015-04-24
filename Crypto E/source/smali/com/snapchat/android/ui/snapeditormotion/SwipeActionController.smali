.class public Lcom/snapchat/android/ui/snapeditormotion/SwipeActionController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/snapchat/android/ui/snapeditormotion/ActionHandler;

.field private b:I

.field private final c:Lcom/snapchat/android/ui/snapeditormotion/TouchState;

.field private final d:Lcom/snapchat/android/ui/SwipeDispatcher;

.field private final e:Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerFactory;


# direct methods
.method public constructor <init>(ILcom/snapchat/android/ui/SwipeDispatcher;Lcom/snapchat/android/ui/snapeditormotion/TouchState;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/snapchat/android/ui/snapeditormotion/SwipeActionController;->b:I

    .line 22
    iput-object p3, p0, Lcom/snapchat/android/ui/snapeditormotion/SwipeActionController;->c:Lcom/snapchat/android/ui/snapeditormotion/TouchState;

    .line 23
    iput-object p2, p0, Lcom/snapchat/android/ui/snapeditormotion/SwipeActionController;->d:Lcom/snapchat/android/ui/SwipeDispatcher;

    .line 24
    invoke-static {}, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerFactory;->a()Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/snapeditormotion/SwipeActionController;->e:Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerFactory;

    .line 25
    new-instance v0, Lcom/snapchat/android/ui/snapeditormotion/NoSwipeStartedHandler;

    invoke-direct {v0}, Lcom/snapchat/android/ui/snapeditormotion/NoSwipeStartedHandler;-><init>()V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/snapeditormotion/SwipeActionController;->a(Lcom/snapchat/android/ui/snapeditormotion/ActionHandler;)V

    .line 26
    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 39
    if-le v0, v1, :cond_1

    if-eqz v4, :cond_0

    if-eq v4, v7, :cond_0

    if-ne v4, v6, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    if-nez v4, :cond_3

    move v0, v1

    .line 46
    :goto_1
    iget-object v3, p0, Lcom/snapchat/android/ui/snapeditormotion/SwipeActionController;->c:Lcom/snapchat/android/ui/snapeditormotion/TouchState;

    invoke-virtual {v3, p1}, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->a(Landroid/view/MotionEvent;)V

    .line 47
    const/4 v3, 0x0

    .line 49
    if-nez v0, :cond_2

    if-ne v4, v7, :cond_5

    .line 50
    :cond_2
    if-eqz v0, :cond_4

    .line 51
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/ui/snapeditormotion/SwipeActionController;->a:Lcom/snapchat/android/ui/snapeditormotion/ActionHandler;

    iget-object v1, p0, Lcom/snapchat/android/ui/snapeditormotion/SwipeActionController;->d:Lcom/snapchat/android/ui/SwipeDispatcher;

    iget-object v3, p0, Lcom/snapchat/android/ui/snapeditormotion/SwipeActionController;->c:Lcom/snapchat/android/ui/snapeditormotion/TouchState;

    invoke-interface {v0, v1, v3, v2}, Lcom/snapchat/android/ui/snapeditormotion/ActionHandler;->a(Lcom/snapchat/android/ui/SwipeDispatcher;Lcom/snapchat/android/ui/snapeditormotion/TouchState;I)Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    move-result-object v0

    .line 64
    :goto_3
    if-eqz v0, :cond_0

    .line 65
    iget-object v1, p0, Lcom/snapchat/android/ui/snapeditormotion/SwipeActionController;->e:Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerFactory;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerFactory;->a(Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;)Lcom/snapchat/android/ui/snapeditormotion/ActionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/snapeditormotion/SwipeActionController;->a:Lcom/snapchat/android/ui/snapeditormotion/ActionHandler;

    goto :goto_0

    :cond_3
    move v0, v2

    .line 45
    goto :goto_1

    :cond_4
    move v2, v1

    .line 50
    goto :goto_2

    .line 53
    :cond_5
    if-ne v4, v6, :cond_6

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 56
    iget-object v1, p0, Lcom/snapchat/android/ui/snapeditormotion/SwipeActionController;->a:Lcom/snapchat/android/ui/snapeditormotion/ActionHandler;

    iget-object v2, p0, Lcom/snapchat/android/ui/snapeditormotion/SwipeActionController;->d:Lcom/snapchat/android/ui/SwipeDispatcher;

    iget-object v3, p0, Lcom/snapchat/android/ui/snapeditormotion/SwipeActionController;->c:Lcom/snapchat/android/ui/snapeditormotion/TouchState;

    iget v4, p0, Lcom/snapchat/android/ui/snapeditormotion/SwipeActionController;->b:I

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/snapchat/android/ui/snapeditormotion/ActionHandler;->a(Lcom/snapchat/android/ui/SwipeDispatcher;Lcom/snapchat/android/ui/snapeditormotion/TouchState;II)Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    move-result-object v0

    goto :goto_3

    .line 58
    :cond_6
    if-eq v4, v1, :cond_7

    const/4 v0, 0x6

    if-eq v4, v0, :cond_7

    const/4 v0, 0x3

    if-ne v4, v0, :cond_8

    .line 60
    :cond_7
    iget-object v0, p0, Lcom/snapchat/android/ui/snapeditormotion/SwipeActionController;->c:Lcom/snapchat/android/ui/snapeditormotion/TouchState;

    const/4 v1, -0x1

    invoke-virtual {v0, v5, v1}, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->a(II)V

    .line 61
    iget-object v0, p0, Lcom/snapchat/android/ui/snapeditormotion/SwipeActionController;->a:Lcom/snapchat/android/ui/snapeditormotion/ActionHandler;

    iget-object v1, p0, Lcom/snapchat/android/ui/snapeditormotion/SwipeActionController;->d:Lcom/snapchat/android/ui/SwipeDispatcher;

    iget-object v2, p0, Lcom/snapchat/android/ui/snapeditormotion/SwipeActionController;->c:Lcom/snapchat/android/ui/snapeditormotion/TouchState;

    invoke-interface {v0, v1, v2, p1}, Lcom/snapchat/android/ui/snapeditormotion/ActionHandler;->a(Lcom/snapchat/android/ui/SwipeDispatcher;Lcom/snapchat/android/ui/snapeditormotion/TouchState;Landroid/view/MotionEvent;)Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    move-result-object v0

    goto :goto_3

    :cond_8
    move-object v0, v3

    goto :goto_3
.end method

.method protected a(Lcom/snapchat/android/ui/snapeditormotion/ActionHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/snapchat/android/ui/snapeditormotion/SwipeActionController;->a:Lcom/snapchat/android/ui/snapeditormotion/ActionHandler;

    .line 31
    return-void
.end method
