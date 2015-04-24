.class Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy;->a(Lcom/snapchat/android/ui/snapview/SnapViewSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

.field final synthetic b:Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy;Lcom/snapchat/android/ui/snapview/SnapViewSession;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy$1;->b:Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy;

    iput-object p2, p0, Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy$1;->b:Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy;

    invoke-static {v0}, Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy;->a(Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy;)Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;->a(Lcom/snapchat/android/ui/snapview/SnapViewSession;)V

    .line 26
    return-void
.end method
