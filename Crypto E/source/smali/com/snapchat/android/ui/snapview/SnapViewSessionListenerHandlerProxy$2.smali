.class Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy;->a(Lcom/snapchat/android/ui/snapview/SnapViewSession;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

.field final synthetic b:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

.field final synthetic c:Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy;Lcom/snapchat/android/ui/snapview/SnapViewSession;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy$2;->c:Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy;

    iput-object p2, p0, Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy$2;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    iput-object p3, p0, Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy$2;->b:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy$2;->c:Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy;

    invoke-static {v0}, Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy;->a(Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy;)Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy$2;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    iget-object v2, p0, Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy$2;->b:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    invoke-interface {v0, v1, v2}, Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;->a(Lcom/snapchat/android/ui/snapview/SnapViewSession;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)V

    .line 36
    return-void
.end method
