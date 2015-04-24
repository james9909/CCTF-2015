.class Lcom/snapchat/android/ui/CashSwiperView$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/CashSwiperView;->o()V
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
    .line 615
    iput-object p1, p0, Lcom/snapchat/android/ui/CashSwiperView$11;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$11;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->n(Lcom/snapchat/android/ui/CashSwiperView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$11;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->o(Lcom/snapchat/android/ui/CashSwiperView;)V

    .line 620
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$11;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->l(Lcom/snapchat/android/ui/CashSwiperView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 621
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$11;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->l(Lcom/snapchat/android/ui/CashSwiperView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/ui/CashSwiperView$11$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/CashSwiperView$11$1;-><init>(Lcom/snapchat/android/ui/CashSwiperView$11;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 632
    :cond_0
    return-void
.end method
