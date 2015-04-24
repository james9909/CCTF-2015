.class Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder$2;
.super Lcom/snapchat/android/util/animation/AnimatorEndListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->a(JFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder$2;->b:Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;

    iput-boolean p2, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder$2;->a:Z

    invoke-direct {p0}, Lcom/snapchat/android/util/animation/AnimatorEndListener;-><init>()V

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder$2;->c:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder$2;->c:Z

    .line 180
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder$2;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder$2;->c:Z

    if-nez v0, :cond_1

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder$2;->b:Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->c()V

    .line 175
    :cond_1
    return-void
.end method
