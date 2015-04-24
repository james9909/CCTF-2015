.class Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;
.super Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$AnimatorEndListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$AnimationEndCall;)V
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
    .line 138
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    iput-object p2, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;->a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$AnimationEndCall;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$AnimatorEndListener;-><init>(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    .line 144
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setY(F)V

    .line 147
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setX(F)V

    .line 148
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)Lcom/snapchat/android/discover/ui/ChannelView;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/discover/ui/ChannelView;->addView(Landroid/view/View;I)V

    .line 149
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)Lcom/snapchat/android/discover/ui/ChannelView;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/ChannelView;->a(Landroid/widget/ImageView;)V

    .line 151
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 152
    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 153
    new-instance v1, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4$1;-><init>(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 159
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 161
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;->a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$AnimationEndCall;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;->a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$AnimationEndCall;

    invoke-interface {v0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$AnimationEndCall;->a()V

    .line 165
    :cond_1
    return-void

    .line 151
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
