.class public abstract Lcom/facebook/rebound/ui/Util;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(FLandroid/content/res/Resources;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15
    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static final a()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 26
    invoke-static {v0, v0}, Lcom/facebook/rebound/ui/Util;->a(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public static final a(II)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public static final b()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .prologue
    .line 44
    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/facebook/rebound/ui/Util;->a(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method
