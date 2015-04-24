.class Lcom/snapchat/android/ui/CashSwiperView$11$1;
.super Lcom/snapchat/android/ui/CashSwiperView$AnimationEndListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/CashSwiperView$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/CashSwiperView$11;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/CashSwiperView$11;)V
    .locals 0
    .parameter

    .prologue
    .line 621
    iput-object p1, p0, Lcom/snapchat/android/ui/CashSwiperView$11$1;->a:Lcom/snapchat/android/ui/CashSwiperView$11;

    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView$AnimationEndListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 624
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$11$1;->a:Lcom/snapchat/android/ui/CashSwiperView$11;

    iget-object v0, v0, Lcom/snapchat/android/ui/CashSwiperView$11;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->n(Lcom/snapchat/android/ui/CashSwiperView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$11$1;->a:Lcom/snapchat/android/ui/CashSwiperView$11;

    iget-object v0, v0, Lcom/snapchat/android/ui/CashSwiperView$11;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->m(Lcom/snapchat/android/ui/CashSwiperView;)V

    .line 626
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$11$1;->a:Lcom/snapchat/android/ui/CashSwiperView$11;

    iget-object v0, v0, Lcom/snapchat/android/ui/CashSwiperView$11;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->k(Lcom/snapchat/android/ui/CashSwiperView;)V

    .line 627
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$11$1;->a:Lcom/snapchat/android/ui/CashSwiperView$11;

    iget-object v0, v0, Lcom/snapchat/android/ui/CashSwiperView$11;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->l(Lcom/snapchat/android/ui/CashSwiperView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 629
    :cond_0
    return-void
.end method
