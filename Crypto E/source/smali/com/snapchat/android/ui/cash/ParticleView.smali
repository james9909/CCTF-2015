.class public Lcom/snapchat/android/ui/cash/ParticleView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/cash/ParticleView$ParticleAnimationListener;
    }
.end annotation


# static fields
.field private static d:Ljava/util/Random;


# instance fields
.field private a:Landroid/graphics/Point;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Lcom/snapchat/android/ui/cash/ParticleView$ParticleAnimationListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/snapchat/android/ui/cash/ParticleView;->d:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/cash/ParticleView;)Lcom/snapchat/android/ui/cash/ParticleView$ParticleAnimationListener;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/ParticleView;->c:Lcom/snapchat/android/ui/cash/ParticleView$ParticleAnimationListener;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/high16 v8, 0x3f80

    const v10, 0x3e99999a

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 60
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 62
    sget-object v1, Lcom/snapchat/android/ui/cash/ParticleView;->d:Ljava/util/Random;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 63
    sget-object v2, Lcom/snapchat/android/ui/cash/ParticleView;->d:Ljava/util/Random;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x12c

    .line 65
    sget-object v3, Lcom/snapchat/android/ui/cash/ParticleView;->d:Ljava/util/Random;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit16 v3, v3, 0x12c

    .line 68
    invoke-virtual {p0, v10}, Lcom/snapchat/android/ui/cash/ParticleView;->setScaleX(F)V

    .line 69
    invoke-virtual {p0, v10}, Lcom/snapchat/android/ui/cash/ParticleView;->setScaleY(F)V

    .line 70
    sget-object v4, Lcom/snapchat/android/ui/cash/ParticleView;->SCALE_X:Landroid/util/Property;

    new-array v5, v13, [F

    aput v8, v5, v12

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 71
    sget-object v5, Lcom/snapchat/android/ui/cash/ParticleView;->SCALE_Y:Landroid/util/Property;

    new-array v6, v13, [F

    aput v8, v6, v12

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 72
    sget-object v6, Lcom/snapchat/android/ui/cash/ParticleView;->ALPHA:Landroid/util/Property;

    new-array v7, v13, [F

    aput v8, v7, v12

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 73
    sget-object v7, Lcom/snapchat/android/ui/cash/ParticleView;->SCALE_X:Landroid/util/Property;

    new-array v8, v13, [F

    aput v10, v8, v12

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 74
    sget-object v8, Lcom/snapchat/android/ui/cash/ParticleView;->SCALE_Y:Landroid/util/Property;

    new-array v9, v13, [F

    aput v10, v9, v12

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 75
    sget-object v9, Lcom/snapchat/android/ui/cash/ParticleView;->ALPHA:Landroid/util/Property;

    new-array v10, v13, [F

    const/4 v11, 0x0

    aput v11, v10, v12

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 76
    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v10, v12

    aput-object v5, v10, v13

    aput-object v6, v10, v14

    invoke-static {p0, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    int-to-long v10, v2

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 78
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v7, v4, v12

    aput-object v8, v4, v13

    aput-object v9, v4, v14

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    int-to-long v6, v3

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 80
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    int-to-long v6, v1

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 81
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 84
    new-instance v1, Lcom/snapchat/android/ui/cash/ParticleView$1;

    invoke-direct {v1, p0, p0}, Lcom/snapchat/android/ui/cash/ParticleView$1;-><init>(Lcom/snapchat/android/ui/cash/ParticleView;Lcom/snapchat/android/ui/cash/ParticleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 90
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 91
    return-void
.end method

.method public getCenterPoint()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/ParticleView;->a:Landroid/graphics/Point;

    return-object v0
.end method

.method public getFinalSize()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/snapchat/android/ui/cash/ParticleView;->b:I

    return v0
.end method

.method public setAnimationListener(Lcom/snapchat/android/ui/cash/ParticleView$ParticleAnimationListener;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/snapchat/android/ui/cash/ParticleView;->c:Lcom/snapchat/android/ui/cash/ParticleView$ParticleAnimationListener;

    .line 57
    return-void
.end method

.method public setCenterPoint(Landroid/graphics/Point;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/snapchat/android/ui/cash/ParticleView;->a:Landroid/graphics/Point;

    .line 45
    return-void
.end method

.method public setFinalSize(I)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput p1, p0, Lcom/snapchat/android/ui/cash/ParticleView;->b:I

    .line 53
    return-void
.end method
