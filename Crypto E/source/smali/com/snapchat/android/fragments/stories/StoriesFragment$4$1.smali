.class Lcom/snapchat/android/fragments/stories/StoriesFragment$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesFragment$4;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/snapchat/android/fragments/stories/StoriesFragment$4;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesFragment$4;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$4$1;->b:Lcom/snapchat/android/fragments/stories/StoriesFragment$4;

    iput-boolean p2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$4$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$4$1;->a:Z

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$4$1;->b:Lcom/snapchat/android/fragments/stories/StoriesFragment$4;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesFragment$4;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lcom/snapchat/android/discover/ui/DiscoverButtonView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->a()V

    .line 379
    :goto_0
    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$4$1;->b:Lcom/snapchat/android/fragments/stories/StoriesFragment$4;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesFragment$4;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lcom/snapchat/android/discover/ui/DiscoverButtonView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->b()V

    goto :goto_0
.end method
