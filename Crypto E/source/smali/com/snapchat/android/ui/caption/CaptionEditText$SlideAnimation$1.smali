.class Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;-><init>(Lcom/snapchat/android/ui/caption/CaptionEditText;IIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/caption/CaptionEditText;

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;Lcom/snapchat/android/ui/caption/CaptionEditText;ZII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation$1;->e:Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;

    iput-object p2, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation$1;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iput-boolean p3, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation$1;->b:Z

    iput p4, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation$1;->c:I

    iput p5, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 277
    iget-boolean v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation$1;->b:Z

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation$1;->e:Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;

    iget-object v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation$1;->e:Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;

    iget-object v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setAlpha(F)V

    .line 280
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation$1;->e:Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;

    iget-object v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setCursorVisible(Z)V

    .line 285
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation$1;->e:Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;

    iget-object v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->invalidate()V

    .line 287
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation$1;->e:Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;

    iget-object v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iget v1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation$1;->c:I

    iget v2, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation$1;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/ui/caption/CaptionEditText;->a(II)V

    .line 289
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation$1;->e:Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;

    iget-object v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->clearAnimation()V

    .line 290
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation$1;->e:Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;

    iget-object v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iput-boolean v3, v0, Lcom/snapchat/android/ui/caption/CaptionEditText;->e:Z

    .line 291
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation$1;->e:Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;

    iget-object v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iput-boolean v3, v0, Lcom/snapchat/android/ui/caption/CaptionEditText;->d:Z

    .line 292
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation$1;->e:Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;

    iget-object v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-static {v0, v3}, Lcom/snapchat/android/ui/caption/CaptionEditText;->a(Lcom/snapchat/android/ui/caption/CaptionEditText;Z)Z

    .line 293
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation$1;->e:Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;

    iget-object v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation$1;->e:Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;

    iget-object v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setAlpha(F)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 268
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation$1;->e:Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;

    iget-object v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snapchat/android/ui/caption/CaptionEditText;->d:Z

    .line 269
    return-void
.end method
