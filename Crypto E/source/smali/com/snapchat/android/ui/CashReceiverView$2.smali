.class Lcom/snapchat/android/ui/CashReceiverView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/CashReceiverView;->a(Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;

.field final synthetic d:Lcom/snapchat/android/ui/CashReceiverView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/CashReceiverView;FFLcom/snapchat/android/ui/CashReceiverView$GhostDirection;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/snapchat/android/ui/CashReceiverView$2;->d:Lcom/snapchat/android/ui/CashReceiverView;

    iput p2, p0, Lcom/snapchat/android/ui/CashReceiverView$2;->a:F

    iput p3, p0, Lcom/snapchat/android/ui/CashReceiverView$2;->b:F

    iput-object p4, p0, Lcom/snapchat/android/ui/CashReceiverView$2;->c:Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView$2;->d:Lcom/snapchat/android/ui/CashReceiverView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/CashReceiverView;->a(Lcom/snapchat/android/ui/CashReceiverView;Z)Z

    .line 189
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView$2;->d:Lcom/snapchat/android/ui/CashReceiverView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashReceiverView;->c(Lcom/snapchat/android/ui/CashReceiverView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 177
    :cond_0
    iget v0, p0, Lcom/snapchat/android/ui/CashReceiverView$2;->a:F

    iget v1, p0, Lcom/snapchat/android/ui/CashReceiverView$2;->b:F

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView$2;->d:Lcom/snapchat/android/ui/CashReceiverView;

    sget-object v1, Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;->a:Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/CashReceiverView;->a(Lcom/snapchat/android/ui/CashReceiverView;Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;)V

    goto :goto_0

    .line 179
    :cond_1
    iget v0, p0, Lcom/snapchat/android/ui/CashReceiverView$2;->a:F

    iget v1, p0, Lcom/snapchat/android/ui/CashReceiverView$2;->b:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/snapchat/android/ui/CashReceiverView$2;->d:Lcom/snapchat/android/ui/CashReceiverView;

    invoke-static {v1}, Lcom/snapchat/android/ui/CashReceiverView;->b(Lcom/snapchat/android/ui/CashReceiverView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/snapchat/android/ui/CashReceiverView$2;->d:Lcom/snapchat/android/ui/CashReceiverView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CashReceiverView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView$2;->d:Lcom/snapchat/android/ui/CashReceiverView;

    sget-object v1, Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;->b:Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/CashReceiverView;->a(Lcom/snapchat/android/ui/CashReceiverView;Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;)V

    goto :goto_0

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView$2;->d:Lcom/snapchat/android/ui/CashReceiverView;

    iget-object v1, p0, Lcom/snapchat/android/ui/CashReceiverView$2;->c:Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/CashReceiverView;->a(Lcom/snapchat/android/ui/CashReceiverView;Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    return-void
.end method
