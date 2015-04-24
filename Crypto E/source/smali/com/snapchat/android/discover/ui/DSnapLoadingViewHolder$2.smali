.class Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder$2;
.super Lcom/snapchat/android/util/animation/AnimatorEndListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->a(JFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder$2;->b:Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;

    iput-boolean p2, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder$2;->a:Z

    invoke-direct {p0}, Lcom/snapchat/android/util/animation/AnimatorEndListener;-><init>()V

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder$2;->c:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder$2;->c:Z

    .line 222
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder$2;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder$2;->c:Z

    if-nez v0, :cond_1

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder$2;->b:Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->d()V

    .line 217
    :cond_1
    return-void
.end method
