.class Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$4;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

.field final synthetic b:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;


# direct methods
.method constructor <init>(Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$4;->b:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    iput-object p2, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$4;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const v6, 0x3f4ccccd

    .line 368
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$4;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->c()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L

    iget-object v4, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$4;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v4}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->h()D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 370
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$4;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->f()F

    move-result v1

    .line 371
    iget-object v2, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$4;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v2}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->e()F

    move-result v2

    .line 372
    iget-object v3, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$4;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v3}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->i()F

    move-result v3

    .line 374
    sub-float v0, v6, v0

    .line 375
    invoke-static {}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->a()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    .line 377
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$4;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v1, v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->c(F)V

    .line 378
    invoke-static {}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->b()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v6

    add-float/2addr v0, v2

    .line 381
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$4;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v1, v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->b(F)V

    .line 382
    const/high16 v0, 0x3e80

    mul-float/2addr v0, p1

    add-float/2addr v0, v3

    .line 383
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$4;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v1, v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->d(F)V

    .line 384
    const/high16 v0, 0x4310

    mul-float/2addr v0, p1

    const/high16 v1, 0x4434

    iget-object v2, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$4;->b:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    invoke-static {v2}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->c(Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;)F

    move-result v2

    const/high16 v3, 0x40a0

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 386
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$4;->b:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    invoke-virtual {v1, v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->c(F)V

    .line 387
    return-void
.end method
