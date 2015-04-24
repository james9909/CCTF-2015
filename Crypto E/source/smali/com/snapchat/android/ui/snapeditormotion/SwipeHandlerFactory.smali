.class public Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerFactory$1;
    }
.end annotation


# static fields
.field private static a:Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerFactory;


# instance fields
.field private final b:Lcom/snapchat/android/ui/snapeditormotion/ActionHandler;

.field private final c:Lcom/snapchat/android/ui/snapeditormotion/ActionHandler;

.field private final d:Lcom/snapchat/android/ui/snapeditormotion/ActionHandler;

.field private final e:Lcom/snapchat/android/ui/snapeditormotion/ActionHandler;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/snapchat/android/ui/snapeditormotion/SwipeStartHandler;

    invoke-direct {v0}, Lcom/snapchat/android/ui/snapeditormotion/SwipeStartHandler;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerFactory;->b:Lcom/snapchat/android/ui/snapeditormotion/ActionHandler;

    .line 16
    new-instance v0, Lcom/snapchat/android/ui/snapeditormotion/NoSwipeStartedHandler;

    invoke-direct {v0}, Lcom/snapchat/android/ui/snapeditormotion/NoSwipeStartedHandler;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerFactory;->c:Lcom/snapchat/android/ui/snapeditormotion/ActionHandler;

    .line 17
    new-instance v0, Lcom/snapchat/android/ui/snapeditormotion/SingleSwipeHandler;

    invoke-direct {v0}, Lcom/snapchat/android/ui/snapeditormotion/SingleSwipeHandler;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerFactory;->d:Lcom/snapchat/android/ui/snapeditormotion/ActionHandler;

    .line 18
    new-instance v0, Lcom/snapchat/android/ui/snapeditormotion/DoubleSwipeHandler;

    invoke-direct {v0}, Lcom/snapchat/android/ui/snapeditormotion/DoubleSwipeHandler;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerFactory;->e:Lcom/snapchat/android/ui/snapeditormotion/ActionHandler;

    .line 19
    return-void
.end method

.method public static a()Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerFactory;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerFactory;->a:Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerFactory;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerFactory;

    invoke-direct {v0}, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerFactory;-><init>()V

    sput-object v0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerFactory;->a:Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerFactory;

    .line 25
    :cond_0
    sget-object v0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerFactory;->a:Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerFactory;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;)Lcom/snapchat/android/ui/snapeditormotion/ActionHandler;
    .locals 2
    .parameter

    .prologue
    .line 29
    sget-object v0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerFactory$1;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 39
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 31
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerFactory;->c:Lcom/snapchat/android/ui/snapeditormotion/ActionHandler;

    goto :goto_0

    .line 33
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerFactory;->b:Lcom/snapchat/android/ui/snapeditormotion/ActionHandler;

    goto :goto_0

    .line 35
    :pswitch_2
    iget-object v0, p0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerFactory;->d:Lcom/snapchat/android/ui/snapeditormotion/ActionHandler;

    goto :goto_0

    .line 37
    :pswitch_3
    iget-object v0, p0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerFactory;->e:Lcom/snapchat/android/ui/snapeditormotion/ActionHandler;

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
