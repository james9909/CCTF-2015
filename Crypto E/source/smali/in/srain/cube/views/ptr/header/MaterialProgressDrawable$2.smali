.class Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$2;
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
    .line 328
    iput-object p1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$2;->b:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    iput-object p2, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$2;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 332
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$2;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->i()F

    move-result v0

    const v1, 0x3f4ccccd

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 334
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$2;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->e()F

    move-result v1

    iget-object v2, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$2;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v2}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->f()F

    move-result v2

    iget-object v3, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$2;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v3}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->e()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 337
    iget-object v2, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$2;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v2, v1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->b(F)V

    .line 338
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$2;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->i()F

    move-result v1

    iget-object v2, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$2;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v2}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->i()F

    move-result v2

    sub-float/2addr v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    .line 340
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$2;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v1, v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->d(F)V

    .line 341
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$2;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    const/high16 v1, 0x3f80

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->e(F)V

    .line 342
    return-void
.end method
