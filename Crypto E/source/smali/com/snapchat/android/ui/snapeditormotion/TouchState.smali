.class public Lcom/snapchat/android/ui/snapeditormotion/TouchState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[F

.field private final b:[I

.field private c:F

.field private d:F

.field private e:I

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->a:[F

    .line 10
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->b:[I

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->g:Z

    return-void

    .line 10
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method


# virtual methods
.method public a(I)F
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->a:[F

    aget v0, v0, p1

    return v0
.end method

.method public a(IF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->a:[F

    aput p2, v0, p1

    .line 44
    return-void
.end method

.method public a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->b:[I

    aput p2, v0, p1

    goto :goto_0
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->e:I

    .line 80
    iget v0, p0, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->e:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->c:F

    .line 81
    iget v0, p0, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->e:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->f:I

    .line 82
    iget-object v0, p0, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->b:[I

    aget v0, v0, v2

    if-eq v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->b:[I

    aget v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 84
    if-eq v0, v1, :cond_0

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->d:F

    .line 88
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->g:Z

    .line 25
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->g:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->f:I

    return v0
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->b:[I

    iget v1, p0, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->f:I

    aput v1, v0, p1

    .line 96
    iget-object v0, p0, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->a:[F

    iget v1, p0, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->c:F

    aput v1, v0, p1

    .line 97
    return-void
.end method

.method public c()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 51
    iget-object v2, p0, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->b:[I

    aget v2, v2, v1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->b:[I

    aget v2, v2, v0

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public d()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 55
    iget-object v1, p0, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->a:[F

    aget v1, v1, v0

    const v2, 0x7f7fffff

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->f:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 59
    iget v1, p0, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->f:I

    iget-object v2, p0, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->b:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public f()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 67
    iget-object v1, p0, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->b:[I

    aget v1, v1, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->c:F

    return v0
.end method

.method public h()F
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/snapchat/android/ui/snapeditormotion/TouchState;->d:F

    return v0
.end method
