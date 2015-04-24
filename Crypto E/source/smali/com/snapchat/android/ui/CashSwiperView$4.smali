.class Lcom/snapchat/android/ui/CashSwiperView$4;
.super Lcom/snapchat/android/ui/CashSwiperView$AnimationEndListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/CashSwiperView;->h()V
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
    .line 219
    iput-object p1, p0, Lcom/snapchat/android/ui/CashSwiperView$4;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView$AnimationEndListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$4;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->c(Lcom/snapchat/android/ui/CashSwiperView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 223
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$4;->a:Lcom/snapchat/android/ui/CashSwiperView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/CashSwiperView;->a(Lcom/snapchat/android/ui/CashSwiperView;Z)Z

    .line 224
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$4;->a:Lcom/snapchat/android/ui/CashSwiperView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/CashSwiperView;->a(Lcom/snapchat/android/ui/CashSwiperView;F)F

    .line 225
    return-void
.end method
