.class abstract Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$AnimatorEndListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "AnimatorEndListener"
.end annotation


# instance fields
.field final synthetic c:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$AnimatorEndListener;->c:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$AnimatorEndListener;-><init>(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    return-void
.end method
