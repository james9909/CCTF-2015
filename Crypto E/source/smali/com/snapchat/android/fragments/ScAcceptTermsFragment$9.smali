.class Lcom/snapchat/android/fragments/ScAcceptTermsFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->n()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/snapchat/android/fragments/ScAcceptTermsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$9;->b:Lcom/snapchat/android/fragments/ScAcceptTermsFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$9;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 299
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 296
    iget-object v0, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$9;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 297
    return-void
.end method
