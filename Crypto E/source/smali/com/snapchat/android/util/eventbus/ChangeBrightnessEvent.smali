.class public Lcom/snapchat/android/util/eventbus/ChangeBrightnessEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F


# direct methods
.method public constructor <init>(F)V
    .locals 2
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    const/high16 v0, -0x4080

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Brightness must be a float between 0 and 1, or WindowManager.LayoutParams.BRIGHTNESS_OVERRIDE_NONE"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_1
    iput p1, p0, Lcom/snapchat/android/util/eventbus/ChangeBrightnessEvent;->a:F

    .line 16
    return-void
.end method
