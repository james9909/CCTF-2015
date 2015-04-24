.class Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation;-><init>(Lcom/snapchat/android/ui/caption/CaptionEditText;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/caption/CaptionEditText;

.field final synthetic b:Z

.field final synthetic c:Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation;Lcom/snapchat/android/ui/caption/CaptionEditText;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation$1;->c:Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation;

    iput-object p2, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation$1;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iput-boolean p3, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 314
    iget-boolean v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation$1;->b:Z

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation$1;->c:Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation;

    iget-object v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation$1;->c:Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation;

    iget-object v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setAlpha(F)V

    .line 317
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation$1;->c:Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation;

    iget-object v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setCursorVisible(Z)V

    .line 322
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation$1;->c:Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation;

    iget-object v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->invalidate()V

    .line 325
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation$1;->c:Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation;

    iget-object v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->clearAnimation()V

    .line 326
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation$1;->c:Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation;

    iget-object v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iput-boolean v2, v0, Lcom/snapchat/android/ui/caption/CaptionEditText;->e:Z

    .line 327
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation$1;->c:Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation;

    iget-object v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iput-boolean v2, v0, Lcom/snapchat/android/ui/caption/CaptionEditText;->d:Z

    .line 328
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation$1;->c:Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation;

    iget-object v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation$1;->c:Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation;

    iget-object v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setAlpha(F)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 306
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation$1;->c:Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation;

    iget-object v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snapchat/android/ui/caption/CaptionEditText;->d:Z

    .line 307
    return-void
.end method
