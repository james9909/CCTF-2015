.class Lcom/snapchat/android/ui/CashSwiperView$7;
.super Lcom/snapchat/android/ui/CashSwiperView$AnimationEndListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/CashSwiperView;->b(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/snapchat/android/ui/CashSwiperView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/CashSwiperView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 443
    iput-object p1, p0, Lcom/snapchat/android/ui/CashSwiperView$7;->b:Lcom/snapchat/android/ui/CashSwiperView;

    iput-object p2, p0, Lcom/snapchat/android/ui/CashSwiperView$7;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView$AnimationEndListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 446
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$7;->b:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->f(Lcom/snapchat/android/ui/CashSwiperView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView$7;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 447
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$7;->b:Lcom/snapchat/android/ui/CashSwiperView;

    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView$7;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/CashSwiperView;->a(Lcom/snapchat/android/ui/CashSwiperView;Landroid/view/View;)V

    .line 448
    return-void
.end method
