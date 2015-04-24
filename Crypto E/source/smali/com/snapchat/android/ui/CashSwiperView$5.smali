.class Lcom/snapchat/android/ui/CashSwiperView$5;
.super Lcom/snapchat/android/ui/CashSwiperView$AnimationEndListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/CashSwiperView;->setBarTextWithFade(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/snapchat/android/ui/CashSwiperView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/CashSwiperView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/snapchat/android/ui/CashSwiperView$5;->b:Lcom/snapchat/android/ui/CashSwiperView;

    iput-object p2, p0, Lcom/snapchat/android/ui/CashSwiperView$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView$AnimationEndListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 361
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$5;->b:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->d(Lcom/snapchat/android/ui/CashSwiperView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView$5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    return-void
.end method
