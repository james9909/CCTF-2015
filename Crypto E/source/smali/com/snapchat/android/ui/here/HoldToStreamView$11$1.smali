.class Lcom/snapchat/android/ui/here/HoldToStreamView$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/here/HoldToStreamView$11;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/here/HoldToStreamView$11;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/here/HoldToStreamView$11;)V
    .locals 0
    .parameter

    .prologue
    .line 1041
    iput-object p1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$11$1;->a:Lcom/snapchat/android/ui/here/HoldToStreamView$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1044
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$11$1;->a:Lcom/snapchat/android/ui/here/HoldToStreamView$11;

    iget-object v0, v0, Lcom/snapchat/android/ui/here/HoldToStreamView$11;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-static {v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->n(Lcom/snapchat/android/ui/here/HoldToStreamView;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/CameraStateEvent;

    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$11$1;->a:Lcom/snapchat/android/ui/here/HoldToStreamView$11;

    iget-object v2, v2, Lcom/snapchat/android/ui/here/HoldToStreamView$11;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-static {v2}, Lcom/snapchat/android/ui/here/HoldToStreamView;->l(Lcom/snapchat/android/ui/here/HoldToStreamView;)Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/snapchat/android/util/eventbus/CameraStateEvent;-><init>(ZLcom/snapchat/android/camera/model/CameraModel$CameraType;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1045
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$11$1;->a:Lcom/snapchat/android/ui/here/HoldToStreamView$11;

    iget-object v0, v0, Lcom/snapchat/android/ui/here/HoldToStreamView$11;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-static {v0, v3}, Lcom/snapchat/android/ui/here/HoldToStreamView;->b(Lcom/snapchat/android/ui/here/HoldToStreamView;Z)Z

    .line 1046
    return-void
.end method
