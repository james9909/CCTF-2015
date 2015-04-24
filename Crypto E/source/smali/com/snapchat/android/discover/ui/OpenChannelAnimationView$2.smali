.class Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$2;
.super Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$AnimatorEndListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a(Lcom/snapchat/android/discover/ui/ChannelView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$AnimationEndCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$AnimationEndCall;

.field final synthetic b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$AnimationEndCall;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$2;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    iput-object p2, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$2;->a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$AnimationEndCall;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$AnimatorEndListener;-><init>(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$2;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Z)Z

    .line 99
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$2;->a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$AnimationEndCall;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$2;->a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$AnimationEndCall;

    invoke-interface {v0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$AnimationEndCall;->a()V

    .line 102
    :cond_0
    return-void
.end method
