.class Lcom/snapchat/android/SnapPreviewFragment$17$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/SnapPreviewFragment$17;->onAnimationStart(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/SnapPreviewFragment$17;


# direct methods
.method constructor <init>(Lcom/snapchat/android/SnapPreviewFragment$17;)V
    .locals 0
    .parameter

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/snapchat/android/SnapPreviewFragment$17$1;->a:Lcom/snapchat/android/SnapPreviewFragment$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$17$1;->a:Lcom/snapchat/android/SnapPreviewFragment$17;

    iget-object v0, v0, Lcom/snapchat/android/SnapPreviewFragment$17;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/SnapPreviewFragment;->t(Lcom/snapchat/android/SnapPreviewFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1028
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 1023
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 1019
    return-void
.end method
