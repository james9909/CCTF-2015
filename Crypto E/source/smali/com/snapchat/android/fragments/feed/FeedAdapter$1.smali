.class Lcom/snapchat/android/fragments/feed/FeedAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/feed/FeedAdapter;->a(Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

.field final synthetic b:Lcom/snapchat/android/fragments/feed/FeedAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/feed/FeedAdapter;Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter$1;->b:Lcom/snapchat/android/fragments/feed/FeedAdapter;

    iput-object p2, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter$1;->a:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 321
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter$1;->a:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b()V

    .line 322
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    return-void
.end method
