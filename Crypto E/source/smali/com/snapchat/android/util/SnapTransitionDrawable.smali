.class public Lcom/snapchat/android/util/SnapTransitionDrawable;
.super Landroid/graphics/drawable/TransitionDrawable;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:I


# direct methods
.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 18
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/graphics/drawable/TransitionDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/util/SnapTransitionDrawable;->a:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/snapchat/android/util/SnapTransitionDrawable;->b:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/util/SnapTransitionDrawable;->a()V

    .line 33
    :cond_0
    return-void
.end method

.method public startTransition(I)V
    .locals 2
    .parameter

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 23
    iput p1, p0, Lcom/snapchat/android/util/SnapTransitionDrawable;->b:I

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/util/SnapTransitionDrawable;->a:J

    .line 25
    invoke-virtual {p0}, Lcom/snapchat/android/util/SnapTransitionDrawable;->invalidateSelf()V

    .line 26
    return-void
.end method
