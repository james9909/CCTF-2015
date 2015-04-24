.class public Lcom/snapchat/android/ui/SwipeViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;,
        Lcom/snapchat/android/ui/SwipeViewState$MotionState;
    }
.end annotation


# instance fields
.field protected a:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:F

.field private i:F

.field private j:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

.field private k:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

.field private l:Z

.field private m:Z

.field private n:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/snapchat/android/ui/SwipeViewState$MotionState;->a:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    iput-object v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->j:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 218
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SwipeViewState;->e(I)V

    .line 219
    iput v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->g:I

    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SwipeViewState;->c(F)V

    .line 221
    return-void
.end method

.method protected a(ZLcom/snapchat/android/ui/SwipeViewState$SwipeDirection;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 201
    if-eqz p1, :cond_1

    .line 202
    sget-object v0, Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;->a:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->d:I

    .line 204
    :goto_0
    return v0

    .line 202
    :cond_0
    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->e:I

    goto :goto_0

    .line 204
    :cond_1
    sget-object v0, Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;->a:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

    if-ne p2, v0, :cond_2

    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->b:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->c:I

    goto :goto_0
.end method

.method public a(F)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput p1, p0, Lcom/snapchat/android/ui/SwipeViewState;->n:F

    .line 104
    return-void
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput p1, p0, Lcom/snapchat/android/ui/SwipeViewState;->b:I

    .line 64
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/snapchat/android/ui/SwipeViewState;->l:Z

    .line 42
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->m:Z

    return v0
.end method

.method protected b(ZLcom/snapchat/android/ui/SwipeViewState$SwipeDirection;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 210
    if-eqz p1, :cond_1

    .line 211
    sget-object v0, Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;->b:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->d:I

    .line 213
    :goto_0
    return v0

    .line 211
    :cond_0
    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->e:I

    goto :goto_0

    .line 213
    :cond_1
    sget-object v0, Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;->b:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

    if-ne p2, v0, :cond_2

    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->b:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->c:I

    goto :goto_0
.end method

.method public b(F)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput p1, p0, Lcom/snapchat/android/ui/SwipeViewState;->i:F

    .line 108
    return-void
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput p1, p0, Lcom/snapchat/android/ui/SwipeViewState;->d:I

    .line 72
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/snapchat/android/ui/SwipeViewState;->m:Z

    .line 46
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->l:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->b:I

    return v0
.end method

.method public c(Z)I
    .locals 1
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->a:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/ui/SwipeViewState;->a(ZLcom/snapchat/android/ui/SwipeViewState$SwipeDirection;)I

    move-result v0

    return v0
.end method

.method public c(F)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput p1, p0, Lcom/snapchat/android/ui/SwipeViewState;->h:F

    .line 116
    return-void
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput p1, p0, Lcom/snapchat/android/ui/SwipeViewState;->e:I

    .line 84
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->d:I

    return v0
.end method

.method public d(Z)I
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->a:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/ui/SwipeViewState;->b(ZLcom/snapchat/android/ui/SwipeViewState$SwipeDirection;)I

    move-result v0

    return v0
.end method

.method public d(I)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput p1, p0, Lcom/snapchat/android/ui/SwipeViewState;->c:I

    .line 88
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->c:I

    return v0
.end method

.method public e(I)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput p1, p0, Lcom/snapchat/android/ui/SwipeViewState;->f:I

    .line 96
    return-void
.end method

.method public f()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->e:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->f:I

    return v0
.end method

.method public h()F
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->n:F

    return v0
.end method

.method public i()F
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->h:F

    return v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/snapchat/android/ui/SwipeViewState$MotionState;->a:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    iput-object v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->j:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    .line 120
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/snapchat/android/ui/SwipeViewState$MotionState;->b:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    iput-object v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->j:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    .line 124
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/snapchat/android/ui/SwipeViewState$MotionState;->c:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    iput-object v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->j:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    .line 128
    return-void
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->j:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    sget-object v1, Lcom/snapchat/android/ui/SwipeViewState$MotionState;->c:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 135
    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->h:F

    iget v1, p0, Lcom/snapchat/android/ui/SwipeViewState;->i:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Z
    .locals 2

    .prologue
    .line 139
    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->h:F

    iget v1, p0, Lcom/snapchat/android/ui/SwipeViewState;->f:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()V
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->f:I

    iput v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->g:I

    .line 144
    return-void
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->g:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Z
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->j:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    sget-object v1, Lcom/snapchat/android/ui/SwipeViewState$MotionState;->a:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Z
    .locals 2

    .prologue
    .line 155
    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->d:I

    iget v1, p0, Lcom/snapchat/android/ui/SwipeViewState;->e:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()Z
    .locals 2

    .prologue
    .line 159
    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->b:I

    iget v1, p0, Lcom/snapchat/android/ui/SwipeViewState;->c:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()V
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SwipeViewState;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;->a:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

    iput-object v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->a:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    sget-object v0, Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;->b:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

    iput-object v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->a:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

    goto :goto_0
.end method

.method public v()V
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;->a:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

    iput-object v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->k:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

    .line 172
    return-void
.end method

.method public w()V
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;->b:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

    iput-object v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->k:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

    .line 176
    return-void
.end method

.method public x()Z
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->k:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

    iget-object v1, p0, Lcom/snapchat/android/ui/SwipeViewState;->a:Lcom/snapchat/android/ui/SwipeViewState$SwipeDirection;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public y()I
    .locals 2

    .prologue
    .line 184
    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->g:I

    iget v1, p0, Lcom/snapchat/android/ui/SwipeViewState;->f:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public z()I
    .locals 2

    .prologue
    .line 188
    iget v0, p0, Lcom/snapchat/android/ui/SwipeViewState;->g:I

    iget v1, p0, Lcom/snapchat/android/ui/SwipeViewState;->f:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
