.class Lin/srain/cube/views/ptr/header/MaterialHeader$1;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/srain/cube/views/ptr/header/MaterialHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lin/srain/cube/views/ptr/header/MaterialHeader;


# direct methods
.method constructor <init>(Lin/srain/cube/views/ptr/header/MaterialHeader;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader$1;->a:Lin/srain/cube/views/ptr/header/MaterialHeader;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader$1;->a:Lin/srain/cube/views/ptr/header/MaterialHeader;

    const/high16 v1, 0x3f80

    sub-float/2addr v1, p1

    invoke-static {v0, v1}, Lin/srain/cube/views/ptr/header/MaterialHeader;->a(Lin/srain/cube/views/ptr/header/MaterialHeader;F)F

    .line 26
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader$1;->a:Lin/srain/cube/views/ptr/header/MaterialHeader;

    invoke-static {v0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->b(Lin/srain/cube/views/ptr/header/MaterialHeader;)Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    move-result-object v0

    const/high16 v1, 0x437f

    iget-object v2, p0, Lin/srain/cube/views/ptr/header/MaterialHeader$1;->a:Lin/srain/cube/views/ptr/header/MaterialHeader;

    invoke-static {v2}, Lin/srain/cube/views/ptr/header/MaterialHeader;->a(Lin/srain/cube/views/ptr/header/MaterialHeader;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->setAlpha(I)V

    .line 27
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader$1;->a:Lin/srain/cube/views/ptr/header/MaterialHeader;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->invalidate()V

    .line 28
    return-void
.end method
