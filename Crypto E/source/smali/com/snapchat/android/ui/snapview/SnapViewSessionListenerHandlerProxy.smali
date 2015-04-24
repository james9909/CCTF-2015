.class public Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;)V
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
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy;->a:Landroid/os/Handler;

    .line 17
    iput-object p2, p0, Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy;->b:Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;

    .line 18
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy;)Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;
    .locals 1
    .parameter

    .prologue
    .line 10
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy;->b:Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/ui/snapview/SnapViewSession;)V
    .locals 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy;->a:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy$1;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy$1;-><init>(Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy;Lcom/snapchat/android/ui/snapview/SnapViewSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    return-void
.end method

.method public a(Lcom/snapchat/android/ui/snapview/SnapViewSession;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy;->a:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy$2;-><init>(Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy;Lcom/snapchat/android/ui/snapview/SnapViewSession;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    return-void
.end method
