.class Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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
    .line 393
    iput-object p1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$5;->b:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    iput-object p2, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$5;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 402
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter

    .prologue
    .line 406
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$5;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->j()V

    .line 407
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$5;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->a()V

    .line 408
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$5;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$5;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->g()F

    move-result v1

    invoke-virtual {v0, v1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->b(F)V

    .line 409
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$5;->b:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$5;->b:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    invoke-static {v1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->c(Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;)F

    move-result v1

    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    const/high16 v2, 0x40a0

    rem-float/2addr v1, v2

    invoke-static {v0, v1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->a(Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;F)F

    .line 410
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 396
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$5;->b:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->a(Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;F)F

    .line 397
    return-void
.end method
