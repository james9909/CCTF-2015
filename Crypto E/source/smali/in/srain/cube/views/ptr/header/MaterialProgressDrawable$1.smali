.class Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;


# direct methods
.method constructor <init>(Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$1;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$1;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->invalidateSelf()V

    .line 103
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$1;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    invoke-virtual {v0, p2, p3, p4}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 108
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$1;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    invoke-virtual {v0, p2}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method
