.class Lcom/snapchat/android/ui/CashSwiperView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/CashSwiperView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/CashSwiperView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/CashSwiperView;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/snapchat/android/ui/CashSwiperView$3;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .parameter

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 159
    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    double-to-float v0, v4

    invoke-static {v1, v2, v0}, Lcom/snapchat/android/util/MathUtils;->a(FFF)F

    move-result v0

    .line 160
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView$3;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v1}, Lcom/snapchat/android/ui/CashSwiperView;->b(Lcom/snapchat/android/ui/CashSwiperView;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView$3;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v1}, Lcom/snapchat/android/ui/CashSwiperView;->b(Lcom/snapchat/android/ui/CashSwiperView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 163
    :cond_0
    return-void
.end method
