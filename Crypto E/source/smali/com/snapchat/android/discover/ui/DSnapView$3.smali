.class Lcom/snapchat/android/discover/ui/DSnapView$3;
.super Lcom/snapchat/android/util/animation/AnimatorEndListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/ui/DSnapView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/DSnapView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/DSnapView;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapView$3;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-direct {p0}, Lcom/snapchat/android/util/animation/AnimatorEndListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 382
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView$3;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapView;->h()V

    .line 383
    return-void
.end method
