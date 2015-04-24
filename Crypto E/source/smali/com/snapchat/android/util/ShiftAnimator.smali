.class public Lcom/snapchat/android/util/ShiftAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/ShiftAnimator$ShiftAnimatorInterface;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/snapchat/android/util/ShiftAnimator$ShiftAnimatorInterface;

.field private c:Landroid/view/View;

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/view/View;IILcom/snapchat/android/util/ShiftAnimator$ShiftAnimatorInterface;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/util/ShiftAnimator;->a:I

    .line 18
    iput-object p1, p0, Lcom/snapchat/android/util/ShiftAnimator;->c:Landroid/view/View;

    .line 19
    iput p2, p0, Lcom/snapchat/android/util/ShiftAnimator;->d:I

    .line 20
    iput p3, p0, Lcom/snapchat/android/util/ShiftAnimator;->e:I

    .line 21
    iput-object p4, p0, Lcom/snapchat/android/util/ShiftAnimator;->b:Lcom/snapchat/android/util/ShiftAnimator$ShiftAnimatorInterface;

    .line 22
    const/16 v0, 0x96

    iput v0, p0, Lcom/snapchat/android/util/ShiftAnimator;->f:I

    .line 23
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/util/ShiftAnimator;)I
    .locals 1
    .parameter

    .prologue
    .line 6
    iget v0, p0, Lcom/snapchat/android/util/ShiftAnimator;->a:I

    return v0
.end method

.method static synthetic a(Lcom/snapchat/android/util/ShiftAnimator;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6
    iput p1, p0, Lcom/snapchat/android/util/ShiftAnimator;->a:I

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/util/ShiftAnimator;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 6
    iget-object v0, p0, Lcom/snapchat/android/util/ShiftAnimator;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/util/ShiftAnimator;)Lcom/snapchat/android/util/ShiftAnimator$ShiftAnimatorInterface;
    .locals 1
    .parameter

    .prologue
    .line 6
    iget-object v0, p0, Lcom/snapchat/android/util/ShiftAnimator;->b:Lcom/snapchat/android/util/ShiftAnimator$ShiftAnimatorInterface;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 34
    iget v0, p0, Lcom/snapchat/android/util/ShiftAnimator;->d:I

    iput v0, p0, Lcom/snapchat/android/util/ShiftAnimator;->a:I

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/snapchat/android/util/ShiftAnimator;->d:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/snapchat/android/util/ShiftAnimator;->e:I

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget v1, p0, Lcom/snapchat/android/util/ShiftAnimator;->f:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/snapchat/android/util/ShiftAnimator$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/ShiftAnimator$1;-><init>(Lcom/snapchat/android/util/ShiftAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 47
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 48
    return-void
.end method
