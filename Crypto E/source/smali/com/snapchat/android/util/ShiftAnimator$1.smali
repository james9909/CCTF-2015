.class Lcom/snapchat/android/util/ShiftAnimator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/ShiftAnimator;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/util/ShiftAnimator;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/ShiftAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/snapchat/android/util/ShiftAnimator$1;->a:Lcom/snapchat/android/util/ShiftAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    iget-object v1, p0, Lcom/snapchat/android/util/ShiftAnimator$1;->a:Lcom/snapchat/android/util/ShiftAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/snapchat/android/util/ShiftAnimator;->a(Lcom/snapchat/android/util/ShiftAnimator;I)I

    .line 40
    iget-object v0, p0, Lcom/snapchat/android/util/ShiftAnimator$1;->a:Lcom/snapchat/android/util/ShiftAnimator;

    invoke-static {v0}, Lcom/snapchat/android/util/ShiftAnimator;->b(Lcom/snapchat/android/util/ShiftAnimator;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/util/ShiftAnimator$1;->a:Lcom/snapchat/android/util/ShiftAnimator;

    invoke-static {v1}, Lcom/snapchat/android/util/ShiftAnimator;->a(Lcom/snapchat/android/util/ShiftAnimator;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 42
    iget-object v0, p0, Lcom/snapchat/android/util/ShiftAnimator$1;->a:Lcom/snapchat/android/util/ShiftAnimator;

    invoke-static {v0}, Lcom/snapchat/android/util/ShiftAnimator;->a(Lcom/snapchat/android/util/ShiftAnimator;)I

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/snapchat/android/util/ShiftAnimator$1;->a:Lcom/snapchat/android/util/ShiftAnimator;

    invoke-static {v0}, Lcom/snapchat/android/util/ShiftAnimator;->c(Lcom/snapchat/android/util/ShiftAnimator;)Lcom/snapchat/android/util/ShiftAnimator$ShiftAnimatorInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/util/ShiftAnimator$ShiftAnimatorInterface;->a()V

    .line 45
    :cond_0
    return-void
.end method
