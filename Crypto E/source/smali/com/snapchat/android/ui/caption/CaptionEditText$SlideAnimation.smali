.class public Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;
.super Landroid/view/animation/TranslateAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/caption/CaptionEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SlideAnimation"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/caption/CaptionEditText;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/caption/CaptionEditText;IIIIZ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 252
    iput-object p1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    .line 254
    int-to-float v2, p2

    int-to-float v4, p3

    int-to-float v6, p4

    int-to-float v8, p5

    move-object v0, p0

    move v3, v1

    move v5, v1

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 258
    const-wide/16 v2, 0x19a

    invoke-virtual {p0, v2, v3}, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;->setDuration(J)V

    .line 259
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;->setFillAfter(Z)V

    .line 260
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 263
    invoke-virtual {p1, v1, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->a(II)V

    .line 265
    new-instance v0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p6

    move v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation$1;-><init>(Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;Lcom/snapchat/android/ui/caption/CaptionEditText;ZII)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 295
    return-void
.end method
