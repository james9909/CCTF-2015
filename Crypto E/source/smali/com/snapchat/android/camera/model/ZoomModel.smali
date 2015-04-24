.class public Lcom/snapchat/android/camera/model/ZoomModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/snapchat/android/camera/model/ZoomModel;->a:F

    .line 20
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 33
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/snapchat/android/camera/model/ZoomModel;->a:F

    .line 34
    return-void
.end method

.method public a(F)V
    .locals 3
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/snapchat/android/camera/model/ZoomModel;->a:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/snapchat/android/camera/model/ZoomModel;->a:F

    .line 25
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/snapchat/android/camera/model/ZoomModel;->a:F

    const v2, 0x3fe66666

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/camera/model/ZoomModel;->a:F

    .line 26
    return-void
.end method

.method public b()F
    .locals 2

    .prologue
    .line 43
    iget v0, p0, Lcom/snapchat/android/camera/model/ZoomModel;->a:F

    const/high16 v1, 0x3f80

    sub-float/2addr v0, v1

    const v1, 0x3f4ccccd

    div-float/2addr v0, v1

    return v0
.end method
