.class public Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;
.super Landroid/util/DisplayMetrics;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;-><init>(Landroid/view/Display;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/view/Display;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 33
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 35
    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 37
    invoke-static {v0, v2}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/util/DisplayMetrics;Z)I

    move-result v1

    iput v1, p0, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;->widthPixels:I

    .line 38
    invoke-static {v0, v2}, Lcom/snapchat/android/util/ViewUtils;->b(Landroid/util/DisplayMetrics;Z)I

    move-result v1

    iput v1, p0, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;->heightPixels:I

    .line 40
    iget v1, p0, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-eq v1, v2, :cond_0

    .line 41
    iget v1, v0, Landroid/util/DisplayMetrics;->ydpi:F

    iput v1, p0, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;->xdpi:F

    .line 42
    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iput v0, p0, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;->ydpi:F

    .line 44
    :cond_0
    return-void
.end method
