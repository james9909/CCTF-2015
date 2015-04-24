.class Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$3;
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
    .line 346
    iput-object p1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$3;->b:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    iput-object p2, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$3;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 353
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$3;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->a()V

    .line 354
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$3;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->j()V

    .line 355
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$3;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->a(Z)V

    .line 356
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$3;->b:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    invoke-static {v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->b(Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$3;->b:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    invoke-static {v1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->a(Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 357
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 361
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    return-void
.end method
