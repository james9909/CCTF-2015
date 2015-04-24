.class public Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionAndScale"
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;)Z
    .locals 1
    .parameter

    .prologue
    .line 716
    iget-boolean v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;)Z
    .locals 1
    .parameter

    .prologue
    .line 716
    iget-boolean v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->h:Z

    return v0
.end method

.method static synthetic c(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;)Z
    .locals 1
    .parameter

    .prologue
    .line 716
    iget-boolean v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->i:Z

    return v0
.end method

.method static synthetic d(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;)F
    .locals 1
    .parameter

    .prologue
    .line 716
    iget v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->a:F

    return v0
.end method

.method static synthetic e(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;)F
    .locals 1
    .parameter

    .prologue
    .line 716
    iget v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->b:F

    return v0
.end method

.method static synthetic f(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;)F
    .locals 1
    .parameter

    .prologue
    .line 716
    iget v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->c:F

    return v0
.end method

.method static synthetic g(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;)F
    .locals 1
    .parameter

    .prologue
    .line 716
    iget v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->d:F

    return v0
.end method

.method static synthetic h(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;)F
    .locals 1
    .parameter

    .prologue
    .line 716
    iget v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->e:F

    return v0
.end method

.method static synthetic i(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;)F
    .locals 1
    .parameter

    .prologue
    .line 716
    iget v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->f:F

    return v0
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 751
    iget v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->a:F

    return v0
.end method

.method protected a(FFFFFF)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v0, 0x3f80

    const/4 v2, 0x0

    .line 742
    iput p1, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->a:F

    .line 743
    iput p2, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->b:F

    .line 744
    cmpl-float v1, p3, v2

    if-nez v1, :cond_0

    move p3, v0

    :cond_0
    iput p3, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->c:F

    .line 745
    cmpl-float v1, p4, v2

    if-nez v1, :cond_1

    move p4, v0

    :cond_1
    iput p4, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->d:F

    .line 746
    cmpl-float v1, p5, v2

    if-nez v1, :cond_2

    :goto_0
    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->e:F

    .line 747
    iput p6, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->f:F

    .line 748
    return-void

    :cond_2
    move v0, p5

    .line 746
    goto :goto_0
.end method

.method public a(FFZFZFFZF)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v0, 0x3f80

    const/4 v2, 0x0

    .line 729
    iput p1, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->a:F

    .line 730
    iput p2, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->b:F

    .line 731
    iput-boolean p3, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->g:Z

    .line 732
    cmpl-float v1, p4, v2

    if-nez v1, :cond_0

    move p4, v0

    :cond_0
    iput p4, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->c:F

    .line 733
    iput-boolean p5, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->h:Z

    .line 734
    cmpl-float v1, p6, v2

    if-nez v1, :cond_1

    move p6, v0

    :cond_1
    iput p6, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->d:F

    .line 735
    cmpl-float v1, p7, v2

    if-nez v1, :cond_2

    :goto_0
    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->e:F

    .line 736
    iput-boolean p8, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->i:Z

    .line 737
    iput p9, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->f:F

    .line 738
    return-void

    :cond_2
    move v0, p7

    .line 735
    goto :goto_0
.end method

.method public b()F
    .locals 1

    .prologue
    .line 755
    iget v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->b:F

    return v0
.end method

.method public c()F
    .locals 1

    .prologue
    .line 759
    iget-boolean v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->g:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->c:F

    goto :goto_0
.end method

.method public d()F
    .locals 1

    .prologue
    .line 773
    iget-boolean v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->f:F

    goto :goto_0
.end method
