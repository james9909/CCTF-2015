.class Lcom/snapchat/android/discover/ui/CloseChannelAnimationView$CloseEditionAnimatorListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/CloseChannelAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CloseEditionAnimatorListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/CloseChannelAnimationView;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/discover/ui/CloseChannelAnimationView;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/CloseChannelAnimationView$CloseEditionAnimatorListener;->a:Lcom/snapchat/android/discover/ui/CloseChannelAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/discover/ui/CloseChannelAnimationView;Lcom/snapchat/android/discover/ui/CloseChannelAnimationView$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/ui/CloseChannelAnimationView$CloseEditionAnimatorListener;-><init>(Lcom/snapchat/android/discover/ui/CloseChannelAnimationView;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/CloseChannelAnimationView$CloseEditionAnimatorListener;->a:Lcom/snapchat/android/discover/ui/CloseChannelAnimationView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/CloseChannelAnimationView;->a(Lcom/snapchat/android/discover/ui/CloseChannelAnimationView;)Lcom/snapchat/android/discover/ui/CloseChannelAnimationView$CloseChannelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/CloseChannelAnimationView$CloseEditionAnimatorListener;->a:Lcom/snapchat/android/discover/ui/CloseChannelAnimationView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/CloseChannelAnimationView;->a(Lcom/snapchat/android/discover/ui/CloseChannelAnimationView;)Lcom/snapchat/android/discover/ui/CloseChannelAnimationView$CloseChannelListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/discover/ui/CloseChannelAnimationView$CloseChannelListener;->b()V

    .line 116
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    return-void
.end method
