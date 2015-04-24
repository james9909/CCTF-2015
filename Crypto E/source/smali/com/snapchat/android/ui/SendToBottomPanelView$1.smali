.class Lcom/snapchat/android/ui/SendToBottomPanelView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/SendToBottomPanelView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/SendToBottomPanelView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/SendToBottomPanelView;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/snapchat/android/ui/SendToBottomPanelView$1;->a:Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView$1;->a:Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->a(Lcom/snapchat/android/ui/SendToBottomPanelView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 103
    iget-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView$1;->a:Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->b(Lcom/snapchat/android/ui/SendToBottomPanelView;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 104
    iget-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView$1;->a:Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->b(Lcom/snapchat/android/ui/SendToBottomPanelView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    return-void
.end method
