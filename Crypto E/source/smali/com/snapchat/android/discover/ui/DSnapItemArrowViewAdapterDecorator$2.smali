.class Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator$2;
.super Lcom/snapchat/android/ui/CashSwiperView$AnimationEndListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->a(Landroid/widget/ImageView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator$2;->a:Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;

    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView$AnimationEndListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator$2;->a:Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->a(Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator$2;->a:Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->b(Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 133
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator$2;->a:Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->d(Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator$2;->a:Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->c(Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 131
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator$2;->a:Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->d(Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method
