.class public Lin/srain/cube/views/ptr/util/PtrLocalDisplay;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:I

.field public static c:F

.field public static d:I

.field public static e:I

.field private static f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(F)I
    .locals 2
    .parameter

    .prologue
    .line 33
    sget v0, Lin/srain/cube/views/ptr/util/PtrLocalDisplay;->c:F

    .line 34
    mul-float/2addr v0, p0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 18
    sget-boolean v0, Lin/srain/cube/views/ptr/util/PtrLocalDisplay;->f:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 21
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lin/srain/cube/views/ptr/util/PtrLocalDisplay;->f:Z

    .line 22
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 23
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 24
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 25
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lin/srain/cube/views/ptr/util/PtrLocalDisplay;->a:I

    .line 26
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lin/srain/cube/views/ptr/util/PtrLocalDisplay;->b:I

    .line 27
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lin/srain/cube/views/ptr/util/PtrLocalDisplay;->c:F

    .line 28
    sget v0, Lin/srain/cube/views/ptr/util/PtrLocalDisplay;->a:I

    int-to-float v0, v0

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lin/srain/cube/views/ptr/util/PtrLocalDisplay;->d:I

    .line 29
    sget v0, Lin/srain/cube/views/ptr/util/PtrLocalDisplay;->b:I

    int-to-float v0, v0

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lin/srain/cube/views/ptr/util/PtrLocalDisplay;->e:I

    goto :goto_0
.end method
