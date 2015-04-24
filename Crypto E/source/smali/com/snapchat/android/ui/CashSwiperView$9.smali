.class Lcom/snapchat/android/ui/CashSwiperView$9;
.super Lcom/snapchat/android/ui/CashSwiperView$AnimationEndListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/CashSwiperView;->c()V
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
    .line 543
    iput-object p1, p0, Lcom/snapchat/android/ui/CashSwiperView$9;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView$AnimationEndListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 546
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$9;->a:Lcom/snapchat/android/ui/CashSwiperView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CashSwiperView;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$9;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CashSwiperView;->a()V

    .line 548
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$9;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->j(Lcom/snapchat/android/ui/CashSwiperView;)Lcom/snapchat/android/ui/CashSwiperView$CashSwiperListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/ui/CashSwiperView$CashSwiperListener;->s()V

    .line 549
    return-void
.end method
